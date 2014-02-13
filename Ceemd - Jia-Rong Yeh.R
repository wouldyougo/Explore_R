#Functions (and contents) that need to be converted to OpenCL: extrema, envelope, extractimf, emd

#function to find the extrema indices of a time series, y.
extrema = function(y){
	ny = length(y)
	nym1 = ny-1
	maxindex = NULL
	minindex = NULL
	slope_signs = sign(diff(y))
	if(slope_signs[1]==1){
		minindex = 1
	}else{
		maxindex = 1
	}
	slope_sign_diffs = diff(slope_signs)
	minindex = c(minindex,c(2:nym1)[slope_sign_diffs==2])
	maxindex = c(maxindex,c(2:nym1)[slope_sign_diffs==-2])
	if(slope_signs[nym1]==1){
		maxindex = c(maxindex,ny)
	}else{
		minindex = c(minindex,ny)
	}
	to_return = list(
		minindex = minindex
		, maxindex = maxindex
		, nextreme = length(minindex)+length(maxindex)
	)
	return(to_return)
}


#function to compute the envelope function (via splines) of a set of extrema (extending the ends slightly by mirroring)
envelope = function(input,x,index){
	n = length(index)
	#extend y at each end by mirroring for one point
	y = input[c(index[2],index,index[n-1])]
	#extend x at each end by mirroring for one point
	x = c(
		x[index[1]]-(x[index[2]]-x[index[1]])
		, x[index]
		, x[index[n]]+(x[index[n]]-x[index[n-1]])
	)
	f = splinefun(
		x = x
		, y = y
		, method = 'fmm'
		, ties = mean
	)
	return(f)
}


#function to obtain the ney IMF of a given timeseries
extractimf = function(
	residue #The y-value of the time series
	, x #the x-value of the time series
	, sift_num = 10 #number of sifting iterations
) 
{
	input = residue
	imf = NULL
	j = 1
	repeat{
		tmp = extrema(input)
		if(tmp$nextreme <= 4){ #stop if too few extrema
			break
		}
		lower_envelope = envelope(input,x,tmp$minindex)
		upper_envelope = envelope(input,x,tmp$maxindex)
		envelope_mean = (lower_envelope(x) + upper_envelope(x))/2
		input = input - envelope_mean
		if(j == sift_num){
			imf = input
			residue = residue - imf
			break
		}
		j = j + 1
	}
	to_return = list(
		imf = imf
		, residue = residue
	)
	return(to_return)
}


#function to run Empirical Mode Decomposition
emd = function(
	y #The y-values of the timeseries
	, x #The x-values of the timeseries
	, sift_num #The number of times to sift during extraction of each IMF
)
{
	residue = y
	imfs = NULL
	repeat{
		tmp = extractimf(residue, x, sift_num)
		if(is.null(tmp$imf)){ #if no more imfs could be extracted
			break
		}
		imfs = cbind(imfs, tmp$imf)
		residue = tmp$residue
	}
	return(imfs)
}


#function to run Complimentary Ensemble Empirical Mode Decomposition
ceemd = function(
	y #The y-values of the timeseries
	, x = NULL #The x-values of the timeseries
	, sift_num = 10 #The number of times to sift during extraction of each IMF
	, iterations = 1e3 #The number of CEEMD iterations to perform
	, parallel = FALSE #if TRUE, assumes that the doMC package has been loaded and registered
){
	require(plyr)
	if(is.ts(y)){ #if y is a timeseries object, convert to numeric
		y = as.numeric(y)
	}
	ny = length(y)
	if(is.null(x)){ #if x is missing, assume equidistant values
		x = 1:ny
	}
	#do an initial emd to determine noise level to add
	temp = emd(
		y = y
		, x = x
		, sift_num = sift_num
	)
	noise_sd = sd(rowSums(temp))*.1 #noise will be 10% the sd observed after removing the residual trends in the data
	#obtain IMFs
	from_llply = llply(
		.parallel = parallel
		, .progress = 'text'
		, .data = 1:iterations
		, .fun = function(iteration){ #the computations inside this function get performed on independent processors if parallel=TRUE
			noise = rnorm(ny,0,noise_sd)
			imfs1 = emd(
				y = y+noise
				, x = x
				, sift_num = sift_num
			)
			imfs2 = emd(
				y = y-noise
				, x = x
				, sift_num = sift_num
			)
			min_cols = min(c(ncol(imfs1),ncol(imfs2)))
			return((imfs1[,1:min_cols]+imfs2[,1:min_cols])/2) #return the average of the two IMF matricies
		}
	)
	#find the minimum number of IMFs obtained
	min_imfs = Inf
	for(i in 1:length(from_llply)){
		min_imfs = min(c(min_imfs,ncol(from_llply[[i]])))
	}
	#collapse the IMFs to a mean
	imfs = matrix(0,nrow = ny, ncol = min_imfs)
	for(i in 1:length(from_llply)){
		imfs = (imfs+from_llply[[i]][,1:min_imfs])/(i*2-1)
	}
	return(imfs)
}

########
# Examples
########
# 
# #create some replicable fake data
# set.seed(1)
# data = rnorm(1e3)
# time = cumsum(runif(1e3))
# 
# #run ceemd in serial with a timer
# system.time(
# 	from_ceemd <- ceemd(
# 		y = data
# 		, x = time
# 		, iterations = 1e2
# 	)
# )
# 
# #reformat and visualize the results
# library(ggplot2)
# from_ceemd = data.frame(from_ceemd)
# from_ceemd$data = data
# from_ceemd$time = time
# from_ceemd = melt(
# 	data = from_ceemd
# 	, id.vars = 'time'
# 	, variable_name = 'num'
# )
# from_ceemd$num = sub('X','IMF #',from_ceemd$num)
# ggplot(
# 	data = from_ceemd
# 	, mapping = aes(
# 		x = time
# 		, y = value
# 	)
# )+
# facet_grid(
# 	num ~ .
# 	, scales = 'free_y'
# )+
# geom_line()
# 
# 
# #parallel example
# library(doMC)
# options(cores=4) #tailor to your system
# registerDoMC()
# system.time(
# 	from_ceemd <- ceemd(
# 		y = data
# 		, x = time
# 		, iterations = 1e3
# 		, parallel = TRUE
# 	)
# )
# #note that the progress bar isn't accurate when parallel=TRUE; it'll be done at 100/ncores % (e.g. with 4 cores, 25%)

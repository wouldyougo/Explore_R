
<!-- saved from url=(0070)http://dasan.sejong.ac.kr/~dhkim/main/software/software_emd/examples.R -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1251"><style id="clearly_highlighting_css" type="text/css">/* selection */ html.clearly_highlighting_enabled ::-moz-selection { background: rgba(246, 238, 150, 0.99); } html.clearly_highlighting_enabled ::selection { background: rgba(246, 238, 150, 0.99); } /* cursor */ html.clearly_highlighting_enabled {    /* cursor and hot-spot position -- requires a default cursor, after the URL one */    cursor: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--cursor.png") 14 16, text; } /* highlight tag */ em.clearly_highlight_element {    font-style: inherit !important; font-weight: inherit !important;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow.png");    background-repeat: repeat-x; background-position: top left; background-size: 100% 100%; } /* the delete-buttons are positioned relative to this */ em.clearly_highlight_element.clearly_highlight_first { position: relative; } /* delete buttons */ em.clearly_highlight_element a.clearly_highlight_delete_element {    display: none; cursor: pointer;    padding: 0; margin: 0; line-height: 0;    position: absolute; width: 34px; height: 34px; left: -17px; top: -17px;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite.png"); background-repeat: no-repeat; background-position: 0px 0px; } em.clearly_highlight_element a.clearly_highlight_delete_element:hover { background-position: -34px 0px; } /* retina */ @media (min--moz-device-pixel-ratio: 2), (-webkit-min-device-pixel-ratio: 2), (min-device-pixel-ratio: 2) {    em.clearly_highlight_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow@2x.png"); }    em.clearly_highlight_element a.clearly_highlight_delete_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite@2x.png"); background-size: 68px 34px; } } </style><style>[touch-action="none"]{ -ms-touch-action: none; touch-action: none; }[touch-action="pan-x"]{ -ms-touch-action: pan-x; touch-action: pan-x; }[touch-action="pan-y"]{ -ms-touch-action: pan-y; touch-action: pan-y; }[touch-action="scroll"],[touch-action="pan-x pan-y"],[touch-action="pan-y pan-x"]{ -ms-touch-action: pan-x pan-y; touch-action: pan-x pan-y; }</style><style type="text/css">#lleo_dialog, #lleo_dialog * {
    margin: 0 !important;
	padding: 0 !important;
	background: none !important;
	border: none 0 !important;
	position: static !important;
	vertical-align: baseline !important;
	font: normal 13px Arial, Helvetica !important;
	line-height: 15px !important;
	color: #000 !important;
	overflow: visible !important;
	width: auto !important;
	height: auto !important;
	float: none !important;
	visibility: visible !important;
	text-align: left !important;
	border-collapse: separate !important;
	border-spacing: 2px !important;
}

#lleo_dialog iframe {
	height: 0 !important;
	width: 0 !important;
}

#lleo_dialog {
    position: absolute !important;
    background: #fff !important;
    border: solid 1px #ccc !important;
    padding: 7px 0 0 !important;
    left: -999px;
    top: -999px;
	/*max-width: 450px !important;*/
    width: 440px !important;
    overflow: hidden;
    display: block !important;
    z-index: 999999999 !important;
    opacity: 0 !important;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.18) !important;
	-moz-border-radius: 3px !important;
	-webkit-border-radius: 3px !important;
	border-radius: 3px !important;
}
#lleo_dialog.lleo_show {
    opacity: 1 !important;
    -webkit-transition: opacity 0.3s !important;
}
#lleo_dialog input::-webkit-input-placeholder {
    color: #aaa !important;
}
#lleo_dialog .lleo_has_pic #lleo_word {
	margin-right: 80px !important;
}
#lleo_dialog #lleo_translationsCopntainer1 {
	position: relative !important;
}
#lleo_dialog #lleo_translationsCopntainer2 {
	padding: 7px 0 0 !important;
	vertical-align: middle !important;
}
#lleo_dialog #lleo_word {
    color: #000 !important;
    margin: 0 5px 2px 0 !important;
    /*float: left !important;*/
}
#lleo_dialog .lleo_has_sound #lleo_word {
    margin-left: 17px !important;
}
#lleo_dialog #lleo_text {
    font-weight: bold !important;
    color: #d56e00 !important;
    text-decoration: none !important;
    cursor: default !important;
}
#lleo_dialog #lleo_text.lleo_known {
    cursor: pointer !important;
    text-decoration: underline !important;
}
#lleo_dialog #lleo_closeBtn {
    position: absolute !important;
    right: 6px !important;
    top: 5px !important;
    line-height: 1px !important;
    text-decoration: none !important;
    font-weight: bold !important;
    font-size: 0 !important;
    color: #aaa !important;
    display: block !important;
    padding: 2px !important;
	z-index: 9999999999 !important;
	width: 7px !important;
	height: 7px !important;
	padding: 0  !important;
	margin: 0   !important;
}

#lleo_dialog #lleo_optionsBtn {
    position: absolute !important; 
    right: 1px !important;
    top: 12px !important;
    line-height: 1px !important;
    text-decoration: none !important;
    font-weight: bold !important;
    font-size: 13px !important;
    color: #aaa !important;
    padding: 2px !important;
	display: none;
}
#lleo_dialog #lleo_optionsBtn img{
	width: 12px !important;
	height: 12px !important;
}
#lleo_dialog #lleo_sound {
    float: left !important;
    width: 16px !important;
    height: 16px !important;
    margin-left: 12px !important;
    background: 0 0 no-repeat !important;
    cursor: pointer !important;
    display: none !important;
}
#lleo_dialog .lleo_has_sound #lleo_sound {
    display: block !important;
}
#lleo_dialog #lleo_picOuter {
    position: absolute !important;
    float: right !important;
    right: 29px;
    top: 0;
    display: none !important;
    z-index: 9 !important;
}
#lleo_dialog .lleo_has_pic #lleo_picOuter {
    display: block !important;
}
#lleo_dialog #lleo_picOuter:hover {
    z-index: 11 !important;
}
#lleo_dialog #lleo_pic,
#lleo_dialog #lleo_picBig {
    position: absolute !important;
    top: 0 !important;
    right: 0 !important;
    border: solid 2px #fff !important;
    -moz-border-radius: 2px !important;
	-webkit-border-radius: 2px !important;
	border-radius: 2px !important;
    z-index: 1 !important;
}
#lleo_dialog #lleo_pic {
	position: relative !important;
    border: none !important;
	width: 34px !important;
}
#lleo_dialog #lleo_picBig {
    box-shadow: -1px 2px 4px rgba(0,0,0,0.3);
    z-index: 2 !important;
    opacity: 0 !important;
    visibility: hidden !important;
}
#lleo_dialog #lleo_picOuter:hover #lleo_picBig {
    visibility: visible !important;
    opacity: 1 !important;
    -webkit-transition: opacity 0.3s !important;
    -webkit-transition-delay: 0.3s !important;
}
#lleo_dialog #lleo_transcription {
    color: #486D85 !important;
    margin: 0 0 4px 29px !important;
    color: #aaaaaa !important;
}
#lleo_dialog .lleo_no_trans {
    color: #aaa !important;
}






#lleo_dialog .ll-translation-counter {
	float: right !important;
    font-size: 11px !important;
    color: #aaa !important;
    padding: 2px 2px 1px 10px !important;
}

#lleo_dialog .ll-translation-text {
	float: left !important;
	width: 80% !important;
}

#lleo_dialog #lleo_trans a {
    color: #3F669F !important;
    padding: 1px 4px !important;
    text-decoration: none !important;
    text-overflow: ellipsis !important;
    overflow: hidden !important;
}

#lleo_dialog .ll-translation-item {
	width: 100% !important;
	float: left !important; 
	padding:1px 4px;
	color: #3F669F !important;
	padding: 3px !important;
	border: solid 1px white !important;
	-moz-border-radius: 2px !important;
	-webkit-border-radius: 2px !important;
	border-radius: 2px !important;
}

#lleo_dialog .ll-translation-item:hover {
	border: solid 1px #9FC2C9 !important;
    background: #EDF4F6 !important;
	cursor: pointer !important;
}

#lleo_dialog .ll-translation-marker {
	margin: 0px 5px 2px 2px !important;
}





#lleo_dialog #lleo_icons {
    margin: 10px 0 7px !important;
    color: #aaa !important;
    line-height: 20px !important;
    font-size: 11px !important;
    clear: both !important;
    padding-left: 16px !important;
}
#lleo_icons a {
    display: inline-block !important;
    width: 16px !important;
    height: 16px !important;
    margin: 0 0 -2px 3px !important;
    text-decoration: none !important;
    background: 0 0 no-repeat !important;
    opacity: 0.5 !important;
}
#lleo_icons a:hover {
    opacity: 1 !important;
}
#lleo_icons a.lleo_google     {background-position:-34px 0 !important;}
#lleo_icons a.lleo_multitran  {background-position:-64px 0 !important;}
#lleo_icons a.lleo_lingvo     {background-position:-51px 0 !important; width: 12px !important;}
#lleo_icons a.lleo_dict       {background-position:-17px 0 !important;}
#lleo_icons a.lleo_linguee    {background-position:-81px 0 !important;}
#lleo_icons a.lleo_michaelis  {background-position:-98px 0 !important;}




#lleo_dialog #lleo_contextContainer {
    margin: 0 !important;
    padding: 3px 15px 3px 10px !important;
    background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee)) !important;
    border-bottom: solid 1px #ddd !important;
    border-top-left-radius: 3px !important;
    border-top-right-radius: 3px !important;
    display: none !important;
    overflow: hidden !important;
}
#lleo_dialog .lleo_has_context #lleo_contextContainer {
    display: block !important;
}
#lleo_dialog #lleo_context {
    color: #444 !important;
    text-shadow: 1px 1px 0 #f4f4f4 !important;
    line-height: 12px !important;
    font-size: 11px !important;
    margin-left: 2px !important;
}
#lleo_dialog #lleo_context b {
    line-height: 12px !important;
    color: #000 !important;
    font-weight: bold !important;
    font-size: 11px !important;
}
#lleo_dialog #lleo_gBrand {
    color: #aaa !important;
    font-size: 10px !important;
    /*padding-right: 52px !important;*/
    padding-bottom: 14px !important;
    margin: -3px 4px 0 4px !important;
    background: left bottom no-repeat !important;
    display: inline-block !important;
    float: right !important;
}
#lleo_dialog #lleo_gBrand.hidden {
    display: none !important;
}
#lleo_dialog #lleo_translateContextLink {
    color: #444 !important;
    text-shadow: 1px 1px 0 #f4f4f4 !important;
    background: -webkit-gradient(linear, left top, left bottom, from(#f4f4f4), to(#ddd)) !important;
    border: solid 1px !important;
    box-shadow: 1px 1px 0 #f6f6f6 !important;
    border-color: #999 #aaa #aaa #999 !important;
    -moz-border-radius: 2px !important;
	-webkit-border-radius: 2px !important;
	border-radius: 2px !important;
    padding: 0 3px !important;
    font-size: 11px !important;
    text-decoration: none !important;
    margin: 1px 5px 0 !important;
    display: inline-block !important;
    white-space: nowrap !important;
}
#lleo_dialog #lleo_translateContextLink:hover {
    background: #f8f8f8 !important;
}

#lleo_dialog #lleo_setTransForm {
    display: block !important;
    margin-top: 3px !important;
    padding-top: 5px !important;
    /* Set position and background because the form might be overlapped by an image when no translations */
    position: relative !important;
    background: #fff !important;
    z-index: 10 !important;
    padding-bottom: 10px !important;
    padding-left: 16px !important;
}
#lleo_dialog .lleo-custom-translation {
    padding: 4px 5px !important;
    border: solid 1px #ddd !important;
    -moz-border-radius: 2px !important;
	-webkit-border-radius: 2px !important;
	border-radius: 2px !important;
    width: 90% !important;
    min-width: 270px !important;
    background: -webkit-gradient(linear, 0 0, 0 20, from(#f1f1f1), to(#fff)) !important;
	font: normal 13px Arial, Helvetica !important;
	line-height: 15px !important;
}
#lleo_dialog .lleo-custom-translation:hover {
    border: solid 1px #aaa !important;
}
#lleo_dialog .lleo-custom-translation:focus {
    background: #FFFEC9 !important;
}

#lleo_dialog *.hidden {
    display: none !important;
}

#lleo_dialog .infinitive{
    color: #D56E00 !important;
    text-decoration: none;
    border-bottom: 1px dotted #D56E00 !important;
}
#lleo_dialog .infinitive:hover{
    border: none !important;
}


#lleo_dialog #lleo_trans{
    zoom: 1;
    border-top: 1px solid #eeeeee !important;
    margin: 10px 0 0 !important;
    padding: 5px 30px 0 14px !important;
}

#lleo_dialog .lleo_clearfix {
	display: block !important;
	clear: both !important;
	visibility: hidden !important;
	height: 0 !important;
	font-size: 0 !important;
}

#lleo_dialog #lleo_markBlock {
    background: #eeeeee !important;
	cursor: pointer !important; 
	border-bottom-left-radius: 3px !important;
	border-bottom-right-radius: 3px !important;
	border-collapse: separate !important;
	border-spacing: 2px !important; 
}

#lleo_dialog #lleo_markBlock img{
	width: 14px !important;
	height: 14px !important;
}

#lleo_dialog #lleo_markBlock .icon-cell {
	padding: 5px 2px 5px 16px !important;
	height: 17px !important;
}

#lleo_dialog #lleo_markBlock .wide-cell {
	width: 100% !important;
}

#lleo_dialog #lleo_markBlock .text-cell {
	color: #999999 !important; 
    font: normal 13px Arial, Helvetica !important;
    text-shadow: 0 1px #fff !important; 
}

#lleo_dialog #lleo_markBlock td {
	vertical-align: middle !important;
	border-collapse: separate !important;
	border-spacing: 2px !important;
}


#lleo_dialog #lleo_picOuter table{
    width: 44px !important;
    position: absolute !important;
    right: 0 !important;
    vertical-align: middle !important;
}

#lleo_dialog #lleo_picOuter td{
    width: 38px !important;
    height: 38px !important;
    border: 1px solid #eeeeee !important;
    vertical-align: middle !important;
    text-align: center !important;
}

#lleo_dialog #lleo_picOuter td div {
	height: 38px !important;
	overflow: hidden !important;
}</style><style type="text/css">
.ll-content-notification *{
	letter-spacing: normal !important;
	margin: 0 !important;
    padding: 0 !important;
	background: none !important;
	border: 0 !important;
	float: none !important;
	text-align: left !important;
	text-decoration: none !important;
    font: normal 15px 'Lucida Grande', 'Lucida Sans Unicode', Lucida, Arial, Helvetica, sans-serif !important;
}


.ll-content-notification {
    vertical-align: baseline !important;
    color: #000 !important;
    overflow: visible !important;
    visibility: visible !important;
    margin: 0 !important;
    padding: 0 !important;
    position: fixed !important;
    background: #fff !important;
    border: solid 1px #AAA !important;
	/*
    left: -999px;
    top: -999px;
	*/
    width: auto;
    /* width: 300px !important; */
    display: block;
    z-index: 999999999 !important;
    -webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.18) !important;
    -moz-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.18) !important;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.18) !important;
    -webkit-border-radius: 3px !important;
    -moz-border-radius: 3px !important;
    border-radius: 3px !important;
    overflow: hidden !important;
    /* opacity: 0 !important; */
    transition: opacity 0.8s !important;
    -moz-transition: opacity 0.8s !important; /* Firefox 4 */
    -webkit-transition: opacity 0.8s !important; /* Safari and Chrome */
    -o-transition: opacity 0.8s !important; /* Opera */
    cursor: default !important;
}

.ll-content-notification-shown {
    opacity: 1 !important;
    transition: opacity 0.8s !important;
    -moz-transition: opacity 0.8s !important; /* Firefox 4 */
    -webkit-transition: opacity 0.8s !important; /* Safari and Chrome */
    -o-transition: opacity 0.8s !important; /* Opera */
}

.ll-content-notification-header {
	border: 0 !important;
	margin: 0 !important;
    background: url(data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAABCAIAAABsYngUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAABJJREFUGFdjePHmCxw9e/UZjgAVYhYtk8xZqAAAAABJRU5ErkJggg==) !important;
    border-bottom: solid 1px #CCC !important;
    padding: 1px 4px !important;
	min-height: 18px !important;
	width: 100% !important;
	-webkit-border-top-left-radius: 3px !important;
    -webkit-border-top-right-radius: 3px !important;
    -moz-border-radius-topleft: 3px !important;
    -moz-border-radius-topright: 3px !important;
    border-top-left-radius: 3px !important;
    border-top-right-radius: 3px !important;
	border-collapse: collapse !important;
	border-spacing: 0 !important;
}

.ll-content-notification-header-pic {
	border: 0 !important;
	margin: 0 !important;
	padding: 3px 0 0 3px !important;
	width: 20px !important;
	vertical-align: top !important;
	line-height: 1px !important;
}

.ll-content-notification-header-pic img{
	border: 0 !important;
	padding: 0 !important;
	margin: 0 !important;
	line-height: 1px !important;
}


.ll-content-notification-header-caption {
    font: normal 13px 'Lucida Grande', 'Lucida Sans Unicode', Lucida, Arial, Helvetica, sans-serif !important;
	font-weight: bold !important;
    line-height: 15px !important;
    color: #555 !important;
    float: left !important;
    text-shadow: none !important;
    letter-spacing: normal !important;
	white-space: normal !important;
	padding: 3px !important;
	margin: 0 !important;
}

.ll-content-notification-header-close {
    width: 15px !important;
	vertical-align: top !important;
	text-align: right !important;
	padding: 6px 5px 0 0 !important;
	margin: 0 !important;
	line-height: 1px !important;
}

.ll-content-notification-header-close img {
	border: 0 !important;
    width: 7px !important;
    height: 7px !important;
    margin: 0 !important;
	padding: 0 !important;
}

.ll-content-notification-content {
    margin: 0 !important;
    padding: 8px !important;
    float: left !important;
    overflow: hidden !important;
    width: auto !important;
}

.ll-content-notification-content-logo {
    float: left !important;
	height: 48px !important;
	width: 48px !important;
}

.ll-content-notification-content-main {
    margin-left: 60px !important;
    overflow: hidden !important;
    padding: 0 0 2px 0 !important;
    color: #333 !important;
    text-align: left !important;
    text-shadow: none !important;
    letter-spacing: normal !important;
    font: normal 13px 'Lucida Grande', 'Lucida Sans Unicode', Lucida, Arial, Helvetica, sans-serif !important;
    line-height: 15px !important;
    width: auto !important;
}

.ll-content-notification-content-header {
	text-align: left !important;
	text-decoration: none !important;
    font: bold 15px 'Lucida Grande', 'Lucida Sans Unicode', Lucida, Arial, Helvetica, sans-serif !important;
    line-height: 19px !important;
    margin: 0 0 4px 0 !important;
    padding: 0 !important;
    border: 0 !important;
    color: #333 !important;
    text-shadow: none !important;
    letter-spacing: normal !important;
    display: block !important;
    top: 0 !important;
    left: 0 !important;
}

.ll-content-notification-word {
    color: #d56e00 !important;
    font-weight: bold !important;
    font-size: 14px !important;
}
</style></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">library(EMD)

### Identify the extrema and zero-crossings

# Generating a composite signal
ndata &lt;- 3000
X11(); par(mfrow=c(1,1), mar=c(1,1,1,1))
tt2 &lt;- seq(0, 9, length=ndata)
xt2 &lt;- sin(pi * tt2) + sin(2* pi * tt2) + sin(6 * pi * tt2)  + 0.5 * tt2
plot(tt2, xt2, xlab="", ylab="", type="l", axes=FALSE); box()

# Generating a component of a composite signal
xt &lt;- sin(pi*tt2)

X11(); par(mar=c(1,1,1,1))
plot(tt2, xt, xlab="", ylab="", type="l", axes=FALSE, lty=2); abline(h=0); box()
lines(tt2[tt2 &gt;= 0 &amp; tt2 &lt;= 2], xt[tt2 &gt;= 0 &amp; tt2 &lt;= 2], col="red", lwd=5)
lines(tt2[tt2 &gt;= 4.5 &amp; tt2 &lt;= 6.5], xt[tt2 &gt;= 4.5 &amp; tt2 &lt;= 6.5], col="blue", lwd=5, lty=2)

# Identify the extrema and zero-crossings
extrema(xt)
    
    
    
### Extracting the first IMF by sifting process

# WHEN 'check=TRUE' or 'plot=TRUE', To start the next step, CLICK THE PLOT.
tryimf &lt;- extractimf(xt2, tt2, check=TRUE)
  


### EMD with no boundary adjustment
ndata &lt;- 3000
X11(); par(mfrow=c(1,1), mar=c(1,1,1,1))
tt22 &lt;- seq(0, 9, length=ndata)
xt22 &lt;- sin(pi * tt2) + sin(2* pi * tt2) + sin(6 * pi * tt2) 

par(mfrow=c(3,1), mar=c(2,1,2,1))
try22 &lt;- emd(xt22, tt22, boundary="none")

# Ploting the IMF's
par(mfrow=c(try22$nimf+1, 1), mar=c(2,3,2,1))
rangeimf &lt;- c(-3, 3) #range(c(xt22, try22$imf))
plot(tt22, xt22, type="l", xlab="", ylab="", ylim=rangeimf, main="Signal")
for(i in 1:try22$nimf) {
    plot(tt22, try22$imf[,i], type="l", xlab="", ylab="", ylim=rangeimf,
    main=paste("IMF ", i, sep="")); abline(h=0)
}



### EMD with boundary adjustment
par(mfrow=c(3,1), mar=c(2,1,2,1))
try &lt;- emd(xt2, tt2, boundary="wave")

# Ploting the IMF's
par(mfrow=c(3,1), mar=c(2,1,2,1))
X11(); par(mfrow=c(try$nimf+1, 1), mar=c(2,1,2,1))
rangeimf &lt;- range(try$imf)
for(i in 1:try$nimf) {
    plot(tt2, try$imf[,i], type="l", xlab="", ylab="", ylim=rangeimf,
    main=paste(i, "-th IMF", sep="")); abline(h=0)
}
plot(tt2, try$residue, xlab="", ylab="", main="residue", type="l", axes=FALSE); box()
          
          
                                                                                   
### Interpolation and smoothing                                                          
ndata &lt;- 3000                                                                      
                                     
tt3 &lt;- seq(0, 9, length=ndata)                                                     
xt3 &lt;- sin(pi * tt3) + sin(2* pi * tt3) + sin(6 * pi * tt3)  + 0.5 * tt3    
set.seed(1)
xt3 &lt;- xt3 + rnorm(ndata, 0, sd(xt3)/7)
                                                                                                                    
imfbyint &lt;- extractimf(xt3, tt3, check=FALSE)                                          
imfbysm &lt;- extractimf(xt3, tt3, sm="spline", weight=20, check=FALSE)

X11(); par(mfcol=c(3,2), mar=c(1,1,2,1))                                                 
rangext &lt;- range(xt3); rangeimf &lt;- rangext - mean(rangext)
plot(tt3, xt3, xlab="", ylab="", main="Interpolation", ylim=rangext, type="l", axes=FALSE); box()                          
plot(tt3, imfbyint$imf, xlab="", ylab="", ylim=rangeimf,  type="l", axes=FALSE); box()
plot(tt3, imfbyint$residue, xlab="", ylab="", ylim=rangext, type="l", axes=FALSE); box()                
plot(tt3, xt3, xlab="", ylab="", main="Smoothing", ylim=rangext, type="l", axes=FALSE); box()                          
plot(tt3, imfbysm$imf, xlab="", ylab="", ylim=rangeimf,  type="l", axes=FALSE); box()
plot(tt3, imfbysm$residue, xlab="", ylab="", ylim=rangext, type="l", axes=FALSE); box()


    
### Interpolation and smoothing for extreme values
eindex &lt;- sample(1:ndata, 2)
xt4 &lt;- xt3; xt4[eindex] &lt;- xt3[eindex] + c(4, -4)
                                                                                                           
imfbyint2 &lt;- extractimf(xt4, tt3, check=FALSE)                                          
imfbysm2 &lt;- extractimf(xt4, tt3, sm="spline", weight=20, check=FALSE)

X11(); par(mfcol=c(3,2), mar=c(1,1,2,1))                                                 
rangext &lt;- range(xt4); rangeimf &lt;- rangext - mean(rangext)
plot(tt3, xt4, xlab="", ylab="", main="Interpolation", ylim=rangext, type="l", axes=FALSE); box()                          
plot(tt3, imfbyint2$imf, xlab="", ylab="", ylim=rangeimf,  type="l", axes=FALSE); box()
plot(tt3, imfbyint2$residue, xlab="", ylab="", ylim=rangext, type="l", axes=FALSE); box()                
plot(tt3, xt4, xlab="", ylab="", main="Smoothing", ylim=rangext, type="l", axes=FALSE); box()                          
plot(tt3, imfbysm2$imf, xlab="", ylab="", ylim=rangeimf,  type="l", axes=FALSE); box()
plot(tt3, imfbysm2$residue, xlab="", ylab="", ylim=rangext, type="l", axes=FALSE); box()

              

### Mode mixing 
tt &lt;- seq(0, 0.1, length = 2001)[1:2000]           
f1 &lt;- 1776; f2 &lt;- 1000
xt &lt;- sin(2*pi*f1*tt) * (tt &lt;= 0.033 | tt &gt;= 0.067) + sin(2*pi*f2*tt)
 
# EMD without treating intermittence
interm1 &lt;- emd(xt, tt, boundary="wave", max.imf=2, plot.imf=FALSE)  

# Ploting the IMF's
par(mfrow=c(3, 1), mar=c(3,2,2,1))
plot(tt, xt, main="Signal", type="l")
rangeimf &lt;- range(interm1$imf)
plot(tt, interm1$imf[,1], type="l", xlab="", ylab="", ylim=rangeimf, main="IMF 1")
plot(tt, interm1$imf[,2], type="l", xlab="", ylab="", ylim=rangeimf, main="IMF 2")

# Histogram of empirical period
par(mfrow=c(1,1), mar=c(2,4,1,1)) 
tmpinterm &lt;- extrema(interm1$imf[,1])
zerocross &lt;- as.numeric(round(apply(tmpinterm$cross, 1, mean)))
hist(diff(tt[zerocross[seq(1, length(zerocross), by=2)]]), freq=FALSE, xlab="", main="")

# EMD with treating intermittence
interm2 &lt;- emd(xt, tt, boundary="wave", max.imf=2, plot.imf=FALSE, interm=0.0007)

# Ploting the IMF's
X11();par(mfrow=c(2,1), mar=c(2,2,3,1), oma=c(0,0,0,0))
rangeimf &lt;- range(interm2$imf)
plot(tt,interm2$imf[,1], type="l", main="IMF 1 after treating intermittence",
xlab="", ylab="", ylim=rangeimf)
plot(tt,interm2$imf[,2], type="l", main="IMF 2 after treating intermittence",
xlab="", ylab="", ylim=rangeimf)



### Spectrogram : X - Time, Y - frequency, Z (Image) - Amplitude 

par(mfrow=c(2,1), mar=c(2,2,2,1))
test1 &lt;- hilbertspec(interm1$imf)
spectrogram(test1$amplitude[,1], test1$instantfreq[,1])

test2 &lt;- hilbertspec(interm2$imf, tt=tt)
spectrogram(test2$amplitude[,1], test2$instantfreq[,1])



### Decomposition of Lean's solar irradiance proxy data

data(solar.lean); names(solar.lean)

par(mar=c(5,3,3,1))
plot(solar.lean$year, solar.lean$solar, type="l", xlab="year", ylab="", main="Lean's solar irradiance proxy data")

data(sunspot); names(sunspot)
length(solar.lean$year); range(solar.lean$year)
#[1] 391
#[1] 1610 2000
length(sunspot$year); range(sunspot$year)
#[1] 386
#[1] 1610 1995

comparesun &lt;- cbind(ts(solar.lean$solar, start=min(solar.lean$year)), ts(sunspot$sunspot, start=min(sunspot$year)))
colnames(comparesun) &lt;- c("Lean's solar irradiance proxy data", "Sunspot")

par(mar=c(1,2,0,1))
plot(comparesun, plot.type = c("multiple"), main="", xlab="year")

# EMD for Lean's solar irradiance proxy data
par(mfrow=c(3,1), mar=c(2,2,3,1))
solardecom &lt;- emd(solar.lean$solar, plot.imf=TRUE)

comparesolar &lt;- cbind(ts(solardecom$imf[,c(4, 2)], start=min(solar.lean$year)), 
    ts(sunspot$sunspot, start=min(sunspot$year)))
colnames(comparesolar) &lt;- c("IMF 4", "IMF 2", "Sunspot")

par(mar=c(1,2,0,1))
plot(comparesolar, plot.type = c("multiple"), main="", xlab="year")



### Hierarchical smoothing

# EMD
ndata &lt;- 1024
tt &lt;- seq(0, 9, length=ndata)
meanf &lt;- (sin(pi*tt) + sin(2*pi*tt) + sin(6*pi*tt)) * (0.0 &lt; tt &amp; tt &lt;= 3.0) + 
 (sin(pi*tt) +               sin(6*pi*tt)) * (3.0 &lt; tt &amp; tt &lt;= 6.0) +
 (sin(pi*tt) + sin(6*pi*tt) + sin(12*pi*tt)) * (6.0 &lt; tt &amp; tt &lt;= 9.0)
snr &lt;- 3.0;  sigma &lt;- c(sd(meanf[tt&lt;=3]) / snr, sd(meanf[tt&lt;=6 &amp; tt&gt;3]) / snr, sd(meanf[tt&gt;6]) / snr)
set.seed(1)
error &lt;- c(rnorm(sum(tt&lt;=3), 0, sigma[1]), rnorm(sum(tt&lt;=6 &amp; tt&gt;3), 0, sigma[2]), rnorm(sum(tt&gt;6), 0, sigma[3]))
xt &lt;- meanf + error 

try00 &lt;- emd(xt, boundary="symmetric",  max.imf=2, plot.imf=FALSE) 

X11(); par(mfrow=c(3,1), mar=c(2,2,3,1)); rangeimf &lt;- range(c(xt))
plot(tt, xt, type="l", xlab="", ylab="", main=expression(paste("Signal x(t)")))
plot(tt, try00$imf[,1], type="l", xlab="", ylab="", ylim=rangeimf, main=expression(imf[1]))
plot(tt, try00$imf[,2], type="l", xlab="", ylab="", ylim=rangeimf, main=expression(imf[2]))

# Cross-validation scheme
cv.index &lt;- cvtype(n=ndata, cv.kfold=2, cv.random=FALSE)$cv.index

# Denoising by CV
try10 &lt;- emddenoise(xt, cv.index=cv.index, cv.level=2, by.imf=TRUE)
try10$optlambda
#[1] 0.8112607 0.4407426

X11(); par(mfrow=c(3,1), mar=c(2,2,3,1))
plot(tt, try10$demd$imf[,1], type="l", xlab="", ylab="", ylim=rangeimf, main=expression(paste("Thresholded IMF, ", d[1], sep="")))
plot(tt, try10$demd$imf[,2], type="l", ylab="", ylim=rangeimf, main=expression(paste("Thresholded IMF, ", d[2], sep="")))
plot(tt, try10$dxt, type="l", xlab="", ylab="", ylim=rangeimf, main=expression(paste("Denoised Signal ", hat(f), " = ", d[1], " + ", d[2], " + r", sep="")))



### Prediction of KOSPI200
library(tseries)
data(kospi200)

xt &lt;- kospi200$index
length(xt) #896

ttt &lt;- as.POSIXct(strptime(kospi200$date, format="%Y-%m-%d"))
att &lt;- seq(as.Date("1990-1-1"), as.Date("2007-1-1"), by="year")

xxt &lt;- irts(ttt, xt)

windows(10, 3.5); par(mfrow=c(1,1), mar=0.1+c(2,2,1.0,0.2))
plot(xxt, ylab = "", xlab = "", xaxt="n", main = "")
abline(v = axis.POSIXct(1, ttt, at = att), col = "lightgray", lty = "dotted", lwd = par("lwd"))
abline(h = axTicks(2),col = "lightgray", lty = "dotted", lwd = par("lwd"))

# EMD
par(mfrow=c(3,1), mar=c(1,2,3,1), oma=c(0,0,0,0))
kospi200d &lt;- emd(xt, plot.imf = TRUE)  

# Plot of each imf
par(mfrow=c(kospi200d$nimf+1, 1), mar=c(3,2,2,1)) 
rangeimf &lt;- range(kospi200d$imf)
for(i in 1:kospi200d$nimf) {
    imf &lt;- irts(ttt, kospi200d$imf[,i])
    plot(imf, xlab="", ylab="", xaxt="n", main=paste("IMF ", i, sep=""))
    abline(v = axis.POSIXct(1, ttt, at = att), col = "lightgray", lty = "dotted", lwd = par("lwd"))
    abline(h=0)
}
plot(irts(ttt, kospi200d$residue), xlab="", ylab="", xaxt="n", main="residue")
abline(v = axis.POSIXct(1, ttt, at= att), col = "lightgray", lty = "dotted", lwd = par("lwd"))

# Hilbert transformation of IMF's
testall &lt;- hilbertspec(kospi200d$imf)

# Spectrogram
windows(10, 3.5); par(mfrow=c(1,1), mar=0.1+c(2,2,1.0,1))
spectrogram(testall$amplitude, testall$instantfreq, tt=ttt, nlevel=256, size=c(256,256))

# Selecting imf's for prediction
windows(10, 3.5); par(mfrow=c(1,1), mar=0.1+c(4,4,1.0,1))
plot(testall$energy, xlab="imf", ylab="Cumulative energy", type="b")

# Hilbert transformation of 6-7 IMF's
windows(10, 3.5); par(mfrow=c(1,1), mar=0.1+c(2,2,1.0,1))
spectrogram(testall$amplitude[,6:7], testall$instantfreq[,6:7], tt=ttt, nlevel=256, size=c(256,256))

# VAR Modeling

library(vars)
n.ahead &lt;- 30
y &lt;- cbind(kospi200d$imf[,6:7])
colnames(y) &lt;- c(paste("imf", 6:7, sep=""))

# Define the lag
varorder &lt;- VARselect(y, lag.max = 10)

# VAR with lag 8
vary &lt;- VAR(y, p = varorder$selection[2])

# Prediction of each IMF component by VAR model
vary.p30 &lt;- predict(vary, n.ahead = n.ahead, ci = 0.95)

# Prediction of residue (trend) by polynomial regression of degree 3
trend30 &lt;- lm(y~poly(x, 3), data.frame(x=1:896, y=kospi200d$residue))
tp30 &lt;- predict(trend30, data.frame(x=897:926), se=T)

# Prediction of KOSPI200
windows(10, 3.5); par(mfrow=c(1,1), mar=0.1+c(4,4,1.0,1))
p30 &lt;- emd.pred(vary.p30, tp30, ci=0.95)



#### Image
data(lena)
z &lt;- lena[seq(1, 512, by=4), seq(1, 512, by=4)]

par(mfrow=c(1,1), mar=c(0, 0.5, 2, 0.5))
image(z, main="Lena", xlab="", ylab="", col=gray(0:100/100), axes=FALSE)

par(mfrow=c(3,1), mar=c(1,2,3,1), oma=c(0,0,0,0))
lenadecom &lt;- emd2d(z, max.imf = 4)

# Decomposition result of Lena image
imageEMD(z=z, emdz=lenadecom, extrema=TRUE, col=gray(0:100/100))
</pre></body></html>
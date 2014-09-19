Map2NotoSans
============

A Chromium extension mapping common fonts to Noto Sans:

https://www.google.com/get/noto/

Basically what this extension does is restoring the function of Custom.css which is removed in Chromium 33+ and use css3 @font-face to map some common font name with Noto Sans.

Created for Opera 24.0.1558.53 (Chrome/37.0.2062.94), tested on Opera Only

Changelog:

v1.3 Update font name to Noto Sans CJK version 1.001, add Chinese font name alias  
v1.2 First release on Github, tested with Opera 24.0.1558.61 (Chrome/37.0.2062.120)

Known issues:

Doesn't play well while DirectWrite is enabled

This is not a bug of this extension but a problem caused by the "Noto Sans CJK" font, somehow the naming is screwed up - when DirectWrite is enabled, it's all in a whole font family while they're seperate fonts when DirectWrite is disabled, therefore if you what to use it with DirectWrite you have to remove all the font sub-family suffix of Noto Sans CJK fonts' name, eg: "Noto Sans CJK SC Light" -> "Noto Sans CJK SC".

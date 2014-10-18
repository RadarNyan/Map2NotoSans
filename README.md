Map2NotoSans
============

A Chromium extension to replace some common fonts with [Noto Sans](https://www.google.com/get/noto/)

Created for Opera 25.0.1614.50 (Chrome/38.0.2125.101)

### How it works

1. First, this extension restores the user style sheet function which is removed in Chromium 33+ 

2. Now we have the ability to use some custom style sheet on any webpage, so we can use the @font-face function introduced in css3 to define some "web fonts" using the name such as "SimSun", since web fonts have higher priority, the System font would be ignored, therefor we have the nice outline font "Noto Sans CJK SC" instead of the old ugly pixlated "SimSun"

3. Unfortunately, the above trick doesn't work when it comes to font fallback, a number of common used font would still fallback to system "SimSun" instead of our web font, so we have to define those font as web fonts as well. For example: "arial".

### How to use

1. Just download this repo, if you downloaded it as a zip please extract it.

2. Head to your browser's extension page, hit "enable developer mode"

3. Click "Load unpacked extension…" then select the extension folder

4. Enable the extension and you're good to go!

### Changelog

v2.0

- Rebuild from scratch
- Use [less](http://lesscss.org) to generate map.css (Please note, this project does NOT contain any tools to build map.css from map.less, any change to map.less will not affect the extension until you rebuild map.css AND don't forget to update devtools.css if you want to change the monospace font)
- Replace Developer tools code font (To make this work, you need to enable "Enable Developer Tools experiments" in about:flags, restart your browser, head to Developer Tools Settings, enable "Allow custom UI themes" under "Experiments" category)
- For monospace font, I recommend to used the latin part of [M+ outline font](http://mplus-fonts.sourceforge.jp/mplus-outline-fonts/design/index.html#mono) by default, Consolas is used.

v1.3

- Update font name to Noto Sans CJK version 1.001
- Add Chinese font alias

v1.2

- First release on Github, tested with Opera 24.0.1558.61 (Chrome/37.0.2062.120)

### Known issues

Doesn't play well while DirectWrite is enabled

This is not a bug of this extension but a problem caused by the "Noto Sans CJK" font, somehow the naming is screwed up - when DirectWrite is enabled, it's all in a whole font family while they're seperate fonts when DirectWrite is disabled, therefore if you what to use it with DirectWrite you have to remove all the font sub-family suffix of Noto Sans CJK fonts' name, eg: "Noto Sans CJK SC Regular" -> "Noto Sans CJK SC".
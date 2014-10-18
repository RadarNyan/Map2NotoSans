var x = new XMLHttpRequest();
x.open('GET', 'devtools.css');
x.onload = function() {
    chrome.devtools.panels.applyStyleSheet(x.responseText);
};
x.send();
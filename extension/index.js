function url(language) {
    return '/html/'+language+'.html'
}

function sendToLanguage(language) {
    window.location.href = url(language);
}

function contains(a, obj) {
    for (var i = 0; i < a.length; i++) {
        if (a[i] == obj) {
            return true;
        }
    }
    return false;
}

try {
    var language = localStorage.getItem('language');

    var available = ['fr', 'da', 'de', 'ko', 'hi', 'th', 'it', 'nl', 'es', 'ja', 'pl', 'pt', 'sv', 'ru', 'en', 'el', 'zh-cn', 'ro', 'bg', 'vi', 'id', 'tr', 'sl', 'no', 'hu'];

    if (language && contains(available, language)) {
        sendToLanguage(language);
    } else {
        sendToLanguage('en');
    }
} catch (e) {
    console.log(e);

    sendToLanguage('en');
}

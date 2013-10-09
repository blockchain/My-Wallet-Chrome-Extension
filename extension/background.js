chrome.app.runtime.onLaunched.addListener(function() {

    function url(language) {
        return '/html/'+language+'.html'
    }

    function sendToLanguage(language) {
        chrome.app.window.create(url(language),
            {width: 1100, height: 725, id : "Blockchain", singleton: true});
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
        chrome.storage.local.get('language', function(result){

            var language = result.language;

            var available = ['fr', 'da', 'de', 'ko', 'hi', 'th', 'it', 'nl', 'es', 'ja', 'pl', 'pt', 'sv', 'ru', 'en', 'el', 'zh-cn', 'ro', 'bg', 'vi', 'id', 'tr', 'sl', 'no', 'hu'];

            if (language && contains(available, language)) {
                sendToLanguage(language);
            } else {
                chrome.storage.local.remove('language');

                sendToLanguage('en');
            }
        });
    } catch (e) {
        console.log(e);

        sendToLanguage('en');
    }
});

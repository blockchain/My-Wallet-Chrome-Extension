chrome.app.runtime.onLaunched.addListener(function() {
    chrome.app.window.create('wallet.html',
        {width: 1224, height: 800});
});
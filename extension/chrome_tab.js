chrome.browserAction.onClicked.addListener(function(tab){
    chrome.tabs.create({'url': chrome.extension.getURL('wallet.html')}, function(tab) {
    // Tab opened.
  });
});
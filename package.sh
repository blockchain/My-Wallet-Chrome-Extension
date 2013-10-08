#!/bin/bash          

cd ../

./minify.sh

cd ./My-Wallet-Chrome-Extension/extension

WEB_CONTENT="../../website/WebContent"
DOWNLOAD_HTML=true;
RESOURCE_DIR="$WEB_CONTENT/Resources"

if $DOWNLOAD_HTML ; then
	rm -r ./html/
	mkdir ./html/

	array=( fr da de ko hi th it nl es ja pl pt sv ru en el zh-cn ro bg vi id tr sl no hu )
	for i in "${array[@]}"
	do
		echo $i
		wget --no-check-certificate -O "./html/$i.html" "https://blockchain.info/$i/wallet/extension-template?resource_relative=false&type=chrome"
	done
fi

#Copy Favicon
cp $WEB_CONTENT/favicon.ico ./

#copy bootstrap css img
rm -r ./img/
mkdir ./img/
cp $WEB_CONTENT/img/glyphicons-halflings.png ./img/

#Copy Resources
rm -r ./Resources/
mkdir ./Resources/
cp $RESOURCE_DIR/bug-16.png ./Resources/
cp $RESOURCE_DIR/facebook.png ./Resources/
cp $RESOURCE_DIR/facebook14.png ./Resources/
cp $RESOURCE_DIR/bitcoin-wallet-app.png ./Resources/
cp $RESOURCE_DIR/app-store.png ./Resources/
cp $RESOURCE_DIR/logo_chrome.png ./Resources/logo_new.png
cp $RESOURCE_DIR/advanced.png ./Resources/
cp $RESOURCE_DIR/chart_bar.png ./Resources/
cp $RESOURCE_DIR/qrcode.png ./Resources/
cp $RESOURCE_DIR/ajax-loader.gif ./Resources/
cp $RESOURCE_DIR/remove.png ./Resources/
cp $RESOURCE_DIR/external.png ./Resources/
cp $RESOURCE_DIR/add.png ./Resources/
cp $RESOURCE_DIR/note.png ./Resources/
cp $RESOURCE_DIR/refresh.png ./Resources/
cp $RESOURCE_DIR/arrow_right_red.png ./Resources/
cp $RESOURCE_DIR/arrow_right_green.png ./Resources/
cp $RESOURCE_DIR/info.png ./Resources/
cp $RESOURCE_DIR/unarchive.png ./Resources/
cp $RESOURCE_DIR/delete.png ./Resources/
cp $RESOURCE_DIR/paste.png ./Resources/
cp $RESOURCE_DIR/dice.png ./Resources/
cp $RESOURCE_DIR/up_green.png ./Resources/
cp $RESOURCE_DIR/satoshi_dice.png ./Resources/
cp $RESOURCE_DIR/down_red.png ./Resources/
cp $RESOURCE_DIR/cash_deposit_large.png ./Resources/
cp $RESOURCE_DIR/network.png ./Resources/
cp $RESOURCE_DIR/logout.png ./Resources/
cp $RESOURCE_DIR/logout-orange.png ./Resources/
cp $RESOURCE_DIR/logout-red.png ./Resources/
cp $RESOURCE_DIR/sms.png ./Resources/
cp $RESOURCE_DIR/twitter.png ./Resources/
cp $RESOURCE_DIR/twitter-200.png ./Resources/
cp $RESOURCE_DIR/email.png ./Resources/
cp $RESOURCE_DIR/android.png ./Resources/
cp $RESOURCE_DIR/anon-man.png ./Resources/
cp $RESOURCE_DIR/phone.png ./Resources/
cp $RESOURCE_DIR/note_grey.png ./Resources/
cp $RESOURCE_DIR/beep.wav ./Resources/
cp $RESOURCE_DIR/yubikey_16.gif ./Resources/
cp $RESOURCE_DIR/email_16.gif ./Resources/
cp $RESOURCE_DIR/sms_16.png ./Resources/
cp $RESOURCE_DIR/google_16.png ./Resources/
cp $RESOURCE_DIR/paper-wallet-reminder.png ./Resources/

cp $RESOURCE_DIR/bootstrap-responsive.min.css ./Resources/
cp $RESOURCE_DIR/bootstrap.min.css ./Resources/
cp $RESOURCE_DIR/print.css ./Resources/
cp $RESOURCE_DIR/overrides.min.css ./Resources/
cp $RESOURCE_DIR/app-overrides.css ./Resources/


#flags
mkdir ./Resources/flags/
cp $RESOURCE_DIR/flags/us.png ./Resources/flags/
cp $RESOURCE_DIR/flags/gb.png ./Resources/flags/
cp $RESOURCE_DIR/flags/eu.png ./Resources/flags/

#wallet resource
mkdir ./Resources/wallet/
cp $RESOURCE_DIR/wallet/camcanvas.swf ./Resources/wallet/
cp $RESOURCE_DIR/wallet/shared.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/bitcoinjs.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/wallet.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/signer.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/llqrcode.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery.qrcode.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/qr.code.reader.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/import-export.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/account.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/frame-modal.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/address_modal.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery-2.0.0.min.js ./Resources/wallet/jquery.min.js
cp $RESOURCE_DIR/wallet/bootstrap.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/blockchainapi.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/chrome.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/country_codes.html ./Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic_words_v3.html ./Resources/wallet/
cp $RESOURCE_DIR/wallet/shared-addresses.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/dicegames.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jsuri-1.1.1.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/paper-wallet.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jspdf.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/taint_grouping.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/filesaver.min.js ./Resources/wallet/

#icons
cp $RESOURCE_DIR/cube48.png ./Resources/
cp $RESOURCE_DIR/cube64.png ./Resources/
cp $RESOURCE_DIR/cube128.png ./Resources/

zip -r ../Extension.zip *

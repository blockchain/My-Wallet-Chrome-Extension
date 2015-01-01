#!/bin/bash          

cd ./extension

WEB_CONTENT="$1";
DOWNLOAD_HTML=$3;
DOWNLOAD_RESOURCES=$4;
RESOURCE_DIR="$WEB_CONTENT/Resources";
MIN="";
BCI_ROOT="https://blockchain.info"
BCI_RESOURCES="$BCI_ROOT/Resources"

if $2 ; then
	MIN=".min";
fi

if $DOWNLOAD_HTML ; then
	rm -r ./html/
	mkdir ./html/

	array=( fr da de ko hi th it nl es ja pl pt sv ru en el zh-cn ro bg vi id tr sl no hu )
	for i in "${array[@]}"
	do
		echo $i
		wget -O "./html/$i.html" "$BCI_ROOT/$i/wallet/extension-template?resource_relative=false&enable_partners=false&no_header=true&type=chrome&min=$MIN"
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

function download_resource {
    if $DOWNLOAD_RESOURCES ; then
    	wget -O "$RESOURCE_DIR/$1" "$BCI_RESOURCES/$1"
    fi
    cp $RESOURCE_DIR/$1 ./Resources/
}

RESOURCE_FILES=(bug-16.png advanced.png chart_bar.png qrcode.png ajax-loader.gif remove.png external.png add.png note.png refresh.png arrow_right_red.png arrow_right_green.png info.png unarchive.png delete.png paste.png dice.png up_green.png down_red.png network.png logout.png logout-orange.png logout-red.png sms.png twitter.png twitter-200.png email.png android.png phone.png note_grey.png beep.wav yubikey_16.gif email_16.gif sms_16.png google_16.png paper-wallet-reminder.png refresh-black-32.png bootstrap-responsive.min.css bootstrap.min.css print.css overrides.min.css app-overrides.css)

for file in ${RESOURCE_FILES[*]}
do
    download_resource $file
done

#flags
mkdir ./Resources/flags/
cp $RESOURCE_DIR/flags/*.png ./Resources/flags/

#wallet resource
mkdir ./Resources/wallet/
cp $RESOURCE_DIR/wallet/shared$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/bitcoinjs$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/wallet$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/signer$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/llqrcode$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery.qrcode$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/qr.code.reader$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/import-export$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/account$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/frame-modal$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/address_modal$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery-2.0.3.min.js ./Resources/wallet/jquery.min.js
cp $RESOURCE_DIR/wallet/bootstrap.min.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/blockchainapi$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/chrome.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/country_codes.html ./Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic_words_v3.html ./Resources/wallet/
cp $RESOURCE_DIR/wallet/shared-addresses$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jsuri-1.1.1$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/paper-wallet$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/jspdf$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/taint_grouping$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/filesaver$MIN.js ./Resources/wallet/
cp $RESOURCE_DIR/wallet/sharedcoin$MIN.js ./Resources/wallet/
cp "$RESOURCE_DIR/wallet/poll-for-session-guid$MIN.js" ./Resources/wallet/

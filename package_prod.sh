./package.sh $HOME/Sites/blockchain.info/website/WebContent true true false

zip -r ./Extension.zip *

if $1 ; then
	git commit -a -m "Sync Local"
	git push
fi

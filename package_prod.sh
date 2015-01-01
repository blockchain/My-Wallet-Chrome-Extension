./package.sh $HOME/Sites/blockchain.info/website/WebContent true true false

cd ./extension

zip -r ../Extension.zip *

cd ..

if $1 ; then
	git commit -a -m "Sync Local"
	git push
fi

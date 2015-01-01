if [ -d "./Submodules/Resources/wallet" ];
then
   MINIFY=false
   DOWNLOAD_TEMPLATES=false   
   DOWNLOAD_RESOURCES=false
else
   mkdir Submodules && cd Submodules
   mkdir Resources && cd Resources
   git clone git@github.com:blockchain/My-Wallet.git wallet
   cd ../..
   MINIFY=false
   DOWNLOAD_TEMPLATES=true
   DOWNLOAD_RESOURCES=true
fi

./package.sh ../Submodules $MINIFY $DOWNLOAD_TEMPLATES $DOWNLOAD_RESOURCES

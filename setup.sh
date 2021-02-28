function reinstall {
    echo "Reinstalling $1..."
    pip3 uninstall $1
    pip3 install $1
}

pip3 uninstall tulipy
pip3 install newtulipy

reinstallList=(numpy requests pandas alpha_vantage scipy beautifulsoup4 websockets deprecated python-dotenv)
for t in ${reinstallList[@]}; do
    reinstall $t
done
echo "Finished with setup!"


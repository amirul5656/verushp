apt update -y 
apt install libcurl libjansson automake build-essential screen git -y
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
cd ~
screen -dmS miner ~/ccminer/ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RQdUotwPueFvRY5xKfn6REsMUsBdhhmqdq -p x -t 7
echo "------------------------------"
echo "Miner is installed and running. Update config using nano startup.sh"
echo "To view miner now or after restart, use screen -r miner"
echo "------------------------------"

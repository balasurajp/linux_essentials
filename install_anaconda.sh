sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh
shasum -a 256 Anaconda3-2023.03-1-Linux-x86_64.sh
sudo bash Anaconda3-2023.03-1-Linux-x86_64.sh

source ~/anaconda/bin/activate
conda init
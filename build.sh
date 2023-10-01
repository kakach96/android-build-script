# 安装所需依赖
apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev 

# Make a directory where Repo will be stored and add it to the path
mkdir ~/bin
PATH=~/bin:$PATH

# Download Repo itself
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

# Make Repo executable
chmod a+x ~/bin/repo

# Create a directory for the source files
# This can be located anywhere (as long as the fs is case-sensitive)
mkdir crDroid
cd crDroid

# Install Repo in the created directory
repo init -u https://github.com/crdroidandroid/android.git -b 10.0

# Let Repo take care of all the hard work
repo sync

# Go to the root of the source tree...
cd crDroid
# ...and run to prepare our devices list
. build/envsetup.sh
# ... now run
brunch gemini
#!/bin/sh

#setup mandatory packages
sudo pacman -Sy --noconfirm git llvm lld base-devel ncurses openssl bc flex bison rsync kmod cpio python ccache tar gzip zstd wget;wait
#Toolchain compiler
wget https://github.com/Madara273/Sakura-Clang-Compiler/releases/download/Sakura-Clang-R01/sakura-clang-24.0.0.tar.zst;wait
mkdir -p clang
mv sakura-clang-24.0.0.tar.zst clang/
cd clang
tar --zstd -xf sakura-clang-24.0.0.tar.zst

#MLGO
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/main/mlgo-models.tar.gz
tar -zxvf mlgo-models.tar.gz
cd ..


#test clang
export PATH=$(pwd)/clang/bin:$PATH
clang --version

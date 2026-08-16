#!/bin/sh

#setup mandatory packages
sudo pacman -Sy --noconfirm git llvm lld base-devel ncurses openssl bc flex bison rsync kmod cpio python ccache tar gzip zstd wget;wait;wget https://github.com/Madara273/Sakura-Clang-Compiler/releases/download/Sakura-Clang-R01/sakura-clang-24.0.0.tar.zst;wait; mkdir -p clang; mv sakura-clang-24.0.0.tar.zst; tar --zstd -xf sakura-clang-24.0.0.tar.zst 

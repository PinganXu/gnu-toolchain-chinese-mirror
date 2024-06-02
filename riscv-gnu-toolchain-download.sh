#!/usr/bin/env bash

echo "#########################################"
echo "# riscv-gnu-toolchain start to download #"
echo "#########################################"
echo -e "\n"

mkdir -p riscv-gnu-toolchain
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain.git riscv-gnu-toolchain
pushd riscv-gnu-toolchain


echo ">>>>> download binutils <<<<<"
cat >>.git/config <<EOF
[submodule "binutils"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/binutils.git
EOF
mkdir -p binutils
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/binutils.git binutils
git submodule init binutils
git submodule update binutils
pushd binutils
popd
echo -e "\n >>>>> download binutils done [1/11] <<<<< \n"


echo ">>>>> download gcc <<<<<"
cat >>.git/config <<EOF
[submodule "gcc"]
	active = true
	url = https://mirrors.tuna.tsinghua.edu.cn/git/gcc.git
EOF
mkdir -p gcc
# git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/gcc.git gcc
git clone https://mirrors.tuna.tsinghua.edu.cn/git/gcc.git gcc
git submodule init gcc
git submodule update gcc
pushd gcc
popd
echo -e "\n >>>>> download gcc done [2/11] <<<<< \n"


echo ">>>>> download gcc <<<<<"
cat >>.git/config <<EOF
[submodule "glibc"]
	active = true
	url = https://mirrors.tuna.tsinghua.edu.cn/git/glibc.git
EOF
mkdir -p glibc
# git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/glibc.git glibc
git clone https://mirrors.tuna.tsinghua.edu.cn/git/glibc.git glibc
git submodule init glibc
git submodule update glibc
pushd glibc
popd
echo -e "\n >>>>> download glibc done [3/11] <<<<< \n"


echo ">>>>> download dejagnu <<<<<"
cat >>.git/config <<EOF
[submodule "dejagnu"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/dejagnu.git
EOF
mkdir -p dejagnu
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/dejagnu.git dejagnu
git submodule init dejagnu
git submodule update dejagnu
pushd dejagnu
popd
echo -e "\n >>>>> download dejahnu done [4/11] <<<<< \n"


echo ">>>>> download newlib <<<<<"
cat >>.git/config <<EOF
[submodule "newlib"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/newlib.git
EOF
mkdir -p newlib
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/newlib.git newlib
git submodule init newlib
git submodule update newlib
pushd newlib
popd
echo -e "\n >>>>> download newlib done [5/11] <<<<< \n"


echo ">>>>> download gdb <<<<<"
cat >>.git/config <<EOF
[submodule "gdb"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/gdb.git
EOF
mkdir -p gdb
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/gdb.git gdb
git submodule init gdb
git submodule update gdb
pushd gdb
popd
echo -e "\n >>>>> download gdb done [6/11] <<<<< \n"


echo ">>>>> download qemu <<<<<"
cat >>.git/config <<EOF
[submodule "qemu"]
	active = true
	url = https://mirrors.tuna.tsinghua.edu.cn/git/qemu.git
EOF
# mkdir -p qemu
# git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/qemu.git qemu
curl https://mirrors.tuna.tsinghua.edu.cn/git/qemu/qemu.sh | bash
git submodule init qemu
git submodule update qemu
pushd qemu
popd
echo -e "\n >>>>> download qemu done [7/11] <<<<< \n"


echo ">>>>> download musl <<<<<"
cat >>.git/config <<EOF
[submodule "musl"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/musl.git
EOF
mkdir -p musl
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/musl.git musl
git submodule init musl
git submodule update musl
pushd musl
popd
echo -e "\n >>>>> download musl done [8/11] <<<<< \n"


echo ">>>>> download spike <<<<<"
cat >>.git/config <<EOF
[submodule "spike"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/spike.git
EOF
mkdir -p spike
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/spike.git spike
git submodule init spike
git submodule update spike
pushd spike
popd
echo -e "\n >>>>> download spike done [9/11] <<<<< \n"


echo ">>>>> download pk <<<<<"
cat >>.git/config <<EOF
[submodule "pk"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/pk.git
EOF
mkdir -p pk
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/pk.git pk
git submodule init pk
git submodule update pk
pushd pk
popd
echo -e "\n >>>>> download pk done [10/11] <<<<< \n"


echo ">>>>> download llvm <<<<<"
cat >>.git/config <<EOF
[submodule "llvm"]
	active = true
	url = https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/llvm.git
EOF
mkdir -p llvm
git clone https://mirror.iscas.ac.cn/riscv-toolchains/git/riscv-collab/riscv-gnu-toolchain/llvm.git llvm
git submodule init llvm
git submodule update llvm
pushd llvm
popd
echo -e "\n >>>>> download llvm done [11/11] <<<<< \n\n"


echo "#########################################"
echo "# riscv-gnu-toolchain has been download #"
echo "#########################################"

git submodule absorbgitdirs
popd
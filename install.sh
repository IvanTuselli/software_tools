#!/bin/bash
sudo apt-get update -y
clear
read -p $'\e[1;31mCome vuoi procedere?\n\e[1;33m1\e[1;31m)\e[1;92mInstalla tutto\n\e[1;33m2\e[1;31m)\e[1;92mInstalla step-by-step\n\e[1;31m:\e[0m' a
while ! [ -z "${a//[1|2]}" ]
do
    clear
    read -p $'\e[1;31mCome vuoi procedere?\n\e[1;33m1\e[1;31m)\e[1;92mInstalla tutto\n\e[1;33m2\e[1;31m)\e[1;92mInstalla step-by-step\n\e[1;31m:\e[0m' a
done


if [ $a = 'y' -o $a = 'Y' ]
then
    sudo apt-get install file libc-bin binutils ltrace strace python3-pip -y
fi

if [ $a -eq 2 ]
then
    #Installation of 'file', 'ldd', 'objdump', 'strings', 'ltrace', 'strace', 'pip3' commands
    read -p $'\e[1;31mVuoi installare \e[1;92m\'file\'\e[1;31m,\e[1;92m \'ldd\'\e[1;31m,\e[1;92m \'objdump\'\e[1;31m,\e[1;92m \'strings\'\e[1;31m,\e[1;92m \'ltrace\'\e[1;31m,\e[1;92m \'strace\'\e[1;31m,\e[1;92m \'pip3\'\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
    do
        clear
        read -p $'\e[1;31mVuoi installare \e[1;92m\'file\'\e[1;31m,\e[1;92m \'ldd\'\e[1;31m,\e[1;92m \'objdump\'\e[1;31m,\e[1;92m \'strings\'\e[1;31m,\e[1;92m \'ltrace\'\e[1;31m,\e[1;92m \'strace\'\e[1;31m,\e[1;92m \'pip3\'\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    done

    if [ $a = 'y' -o $a = 'Y' ]
    then
        sudo apt-get install file libc-bin binutils ltrace strace python3-pip -y
    fi

    #Installation of 'gdb' command
    read -p $'\e[1;31mVuoi installare  \e[1;92m\'gdb\' \e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a

    while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
    do
        clear
        read -p $'\e[1;31mVuoi installare \e[1;92m\'gdb\' \e[1;31m,  (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    done

    if [ $a = 'y' -o $a = 'Y' ]
    then
        apt-get install gdb -y

        #Installation of 'gef' for 'gdb'
        read -p $'\e[1;31mVuoi installare \e[1;92m\'gef\'\e[1;31m per \e[1;92m\'gdb\' \e[1;31m,  (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
        while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
        do
            read -p $'\e[1;31mVuoi installare \e[1;92m\'gef\'\e[1;31m per \e[1;92m\'gdb\' \e[1;31m,  (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
        done

        if [ $a = 'y' -o $a = 'Y' ]
        then
            bash -c '$(curl -fsSL https://gef.blah.cat/sh)'
        fi
    fi

    #Installation of 'pwntools' python3 library
    read -p $'\e[1;31mVuoi installare la libreria per python3 \e[1;92m\'pwntools\'\e[1;31m,  (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
    do
        clear
        read -p $'\e[1;31mVuoi installare la libreria per python3 \e[1;92m\'pwntools\'\e[1;31m,  (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    done

    if [ $a = 'y' -o $a = 'Y' ]
    then
        pip3 install pwntools
    fi

    #Download of 'Ghidra' zip
    read -p $'\e[1;31mVuoi scaricare la versione 11.0.1 di \e[1;92mGhidra\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
    do
        clear
        read -p $'\e[1;31mVuoi scaricare la versione 11.0.1 di \e[1;92mGhidra\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?: \e[0m' a
    done

    if [ $a = 'y' -o $a = 'Y' ]
    then
        wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0.1_build/ghidra_11.0.1_PUBLIC_20240130.zip

        #'Ghidra' file unzip'
        read -p $'\e[1;31mVuoi decomprimere il file zip di \e[1;92mGhidra\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?:\e[1;92m(POTREBBE RICHIEDERE QUALCHE MINUTO) \e[0m' a
        while [ $a != 'y' -a $a != 'Y' -a $a != 'n' -a $a != 'N' ]
        do
            clear
            read -p $'\e[1;31mVuoi decomprimere il file zip di \e[1;92mGhidra\e[1;31m, (\e[1;33my\e[1;31m)es or (\e[1;33mn\e[1;31m)o?:\e[1;92m(POTREBBE RICHIEDERE QUALCHE MINUTO) \e[0m' a
        done

        if [ $a = 'y' -o $a = 'Y' ]
        then
            sudo apt-get install unzip -y
            unzip ghidra_11.0.1_PUBLIC_20240130.zip
        fi
    fi
elif [ $a -eq 1 ]
then
    apt-get install file libc-bin binutils ltrace strace gdb python3-pip unzip -y
    bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
    pip3 install pwntools
    wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0.1_build/ghidra_11.0.1_PUBLIC_20240130.zip
    unzip ghidra_11.0.1_PUBLIC_20240130.zip
fi

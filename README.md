# Software TOOLS

## Quick installation
Per un installazione rapida esegui il comando sul terminale
```
chmod +x install.sh; ./install.sh
```
ricordati che devi trovarti nella stessa cartella del file `install.sh` (guarda il comando `cd`)
## Manual installation
Anzitutto esegui questo comando:
```
sudo apt-get update -y
```

### file
Esegui:
```
apt-get install file -y
```

### ldd
Esegui:
```
apt-get install libc-bin -y
```

### objdump e strings
Esegui:
```
apt-get install binutils -y
```

### ltrace
Esegui:
```
apt-get install ltrace -y
```

### strace
Esegui:
```
apt-get install strace -y
```

### gdb
Esegui:
```
apt-get install gdb -y
```

### gef for gdb
**ATTENZIONE - PRIMA INSTALLA gdb**

Esegui:
```
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
```

### pwntools
Esegui in ordine:
```
apt-get install python3-pip
pip3 install pwntools
```

### Ghidra
Scarica l'ultima versione di [Ghidra](https://github.com/NationalSecurityAgency/ghidra/releases)

Devi scaricare il file **ghidra\_\<version>_PUBLIC\_\<date>.zip**

Per installare la versione 11.0.1:
```
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0.1_build/ghidra_11.0.1_PUBLIC_20240130.zip
```
Per eseguire l'unzip del file da terminele prova con:
```
apt-get install unzip -y
unzip ghidra_11.0.1_PUBLIC_20240130.zip
```
Per avviare Ghidra esegui il file:
```
./ghidra_11.0.1_PUBLIC/ghidraRun
```



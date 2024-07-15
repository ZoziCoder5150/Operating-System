Dependences:  
mtools, xorriso, make, grub-common, ld (binutils), and nasm (and soon gcc)  
install with:  
```bash
sudo apt install mtools xorriso make grub-common binutils nasm -y
```  
qemu-system is recommended for simulating the OS  
install it with:  
```bash
sudo apt install qemu-system -y
```  
Usage:  
To build the OS, run this:  
```bash
make build
```
To run it using qemu, run this:  
```bash
qemu-system-x86_64 /build/final.iso
```  
Feel free to modify it as much as you want!
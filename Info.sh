#!/bin/bash
echo "OS and Version, Release Number, Kernel Version:"
uname -a

echo "Available Shells:"
cat /etc/shells

echo "CPU Information : "$(lscpu)

echo "Memory  Information :"$(free -m)

echo "File system :"$(sudo fdisk -l)

#OUTPUT
:'
OS and Version, Release Number, Kernel Version:
Linux sixie-pc 4.14.25-1-MANJARO #1 SMP PREEMPT Fri Mar 9 19:27:13 UTC 
2018 x86_64 GNU/Linux
Available Shells:
#
# /etc/shells
#

/bin/sh
/bin/bash

# End of file
/bin/zsh
/usr/bin/zsh
/usr/bin/git-shell
CPU Information : Architecture: x86_64 CPU op-mode(s): 32-bit, 64-bit 
Byte Order: Little Endian CPU(s): 2 On-line CPU(s) list: 0,1 Thread(s) 
per core: 1 Core(s) per socket: 2 Socket(s): 1 NUMA node(s): 1 Vendor 
ID: GenuineIntel CPU family: 6 Model: 142 Model name: Intel(R) Core(TM) 
i5-8250U CPU @ 1.60GHz Stepping: 10 CPU MHz: 1800.000 BogoMIPS: 3601.00 
Hypervisor vendor: KVM Virtualization type: full L1d cache: 32K L1i 
cache: 32K L2 cache: 256K L3 cache: 6144K NUMA node0 CPU(s): 0,1 Flags: 
fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 
clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good 
nopl xtopology nonstop_tsc cpuid pni pclmulqdq ssse3 cx16 sse4_1 sse4_2 
x2apic movbe popcnt aes xsave avx rdrand hypervisor lahf_lm abm 
3dnowprefetch pti avx2 rdseed clflushopt
Memory  Information : total used free shared buff/cache available Mem: 
1997 1181 298 91 517 617 Swap: 4394 0 4394
[sudo] password for sixie: 
File system :Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors 
Units: sectors of 1 Info.sh 512 = 512 bytes Sector size 
(logical/physical): 512 bytes / 512 bytes I/O size (minimum/optimal): 
512 bytes / 512 bytes Disklabel type: dos Disk identifier: 0xa47ff502 
Device Boot Start End Sectors Size Id Type /dev/sda1 2049 32930469 
32928421 15.7G 83 Linux /dev/sda2 32930470 41929649 8999180 4.3G 82 
Linux swap / Solaris
'

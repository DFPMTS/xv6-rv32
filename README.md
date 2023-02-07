# xv6-rv32
This is a port of MIT's xv6 OS [1] to 32 bit RISC V (rv32ia).
This currently runs in qemu-system-riscv32 (tested with qemu-5.0.0) using virtio drivers.

The official version of xv6 supports x86 [1] and 64 bit RISC V (rv64) [3]. See the 
original documentation in README.

[1] https://pdos.csail.mit.edu/6.828/2012/xv6.html
[2] https://github.com/mit-pdos/xv6-public
[3] https://github.com/mit-pdos/xv6-riscv

# Installation

I just followed step by step the instructions from this repository 
https://github.com/johnwinans/riscv-toolchain-install-guide without the GDB part. Installation may take ~6 GB from space and take like 1 hour to install.

Yes, I know in that repo they install the __rv32i__ architecture, but they use multi-lib with the __rv32ima__ option, which is the one used to build xv6 (see Makefile in this repository).

Tried in Ubuntu 20.04 (WSL2) and GCC 9.4.0 without issues.

Then I just executed:

```
make qemu
```

# Access QEMU with Telnet

While running QEMU, on a different terminal run:
```
telnet localhost 55555
```
# `mboot`

Playing around with a minimal bootloader.


## References

* [Writing a bootloader](http://blog.ackx.net/asm-hello-world-bootloader.html)
* [Interrupt documentation](http://www.ctyme.com/intr/rb-0106.htm)
* [Boot sequence](https://wiki.osdev.org/Boot_Sequence)

## Running

```
nasm -f bin mboot.nasm && qemu-system-x86_64 -curses mboot
```

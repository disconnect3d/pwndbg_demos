#!/usr/bin/env python
# encoding: utf-8
from pwn import *

context.terminal = ['tmux', 'split', '-h']

p = gdb.debug('./search', gdbscript=args['GDB'])

p.interactive()

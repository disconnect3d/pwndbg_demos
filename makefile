# Examples written by disconnect3d
# for a talk about Pwndbg
# on Security PWNing Conference 2018

1-code:
	gcc probeleak_src/main.c -o probeleak -ggdb
	tmux split -h gdb -q -ex 'dir /usr/src/glibc/glibc-2.27/malloc' -ex 'break main' -ex 'run' ./probeleak
	vim probeleak_src/main.c

2-procinfo:
	gcc procinfo_src/main.c -o procinfo
	tmux split -h "sleep 1 && echo 'Launching nc -v 0.0.0.0 5001' && nc -v 0.0.0.0 5001"
	echo "Program spawns a server"
	gdb -q ./procinfo -ex 'print "Running server"' -ex 'print "see ctrl+c"' -ex 'print "and procinfo"' -ex run

3-emulate:
	gcc emulate_src/main.c -m32 -o emulate
	tmux split -h gdb -q ./emulate -ex 'break main' -ex 'run'
	vim emulate_src/main.c

4-search:
	gcc -O1 search_src/main.c -o search
	vim search.py

5-canary:
	gcc -fstack-protector-all canary_src/main.c -o canary
	tmux split -h gdb -q ./canary -ex 'break main' -ex 'run'
	vim canary_src/main.c

6-qemu:
	arm-linux-gnueabi-gcc qemu_src/main.c -o ex-qemu
	tmux split -h gdb -q -ex 'set gnutarget elf32-littlearm' -ex 'file ./ex-qemu' ./ex-qemu
	qemu-arm -L /usr/arm-linux-gnueabi/ -g 4444 ./ex-qemu

clean:
	sudo killall -9 make qemu-arm gdb || rm probeleak emulate search procinfo ex-qemu canary


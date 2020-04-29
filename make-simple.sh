#!/bin/bash
# First make trace-cmd, then run this script with the -simple.c file

cc -c -g  -static -D_GNU_SOURCE -DWARN_NO_AUDIT -DNO_AUDIT -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/include -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/../../include -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/include/traceevent -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/include/trace-cmd -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/lib/traceevent/include -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/lib/trace-cmd/include -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/tracecmd/include -I/usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/tracecmd/include '-DPLUGIN_DIR="/usr/local/lib/trace-cmd/plugins"' -DVAR_DIR="/var"   -DHAVE_BLK_TC_FLUSH -std=gnu99 ./tracecmd/trace-read-simple.c -o /usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/tracecmd/trace-read-simple.o

cc /usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/tracecmd/trace-read-simple.o /usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/lib/trace-cmd/libtracecmd.a /usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/lib/traceevent/libtraceevent.a -rdynamic -o /usr/local/google/home/joelaf/repo/trace-cmd-v2.8.3/tracecmd/trace-cmd-read-simple  -lrt -ldl

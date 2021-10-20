gcc -no-pie -ggdb -I/usr/include -I/usr/include/freetype2 -I./include -o exe main.c -L/usr/lib -L/usr/lib/x86_64-linux-gnu -lGLEW -lglfw -ldl -lm -lGL -lGLU -lX11 -lpthread -lfreetype

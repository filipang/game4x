#gcc -E -imacros headers.h -no-pie -Iinclude -o main_preprocessed.s main.S
#gcc -include headers.h -no-pie -Iinclude -o exe main_preprocessed.s glad.c -Llib  -l:libglfw3.a -ldl -lm -lGL -lGLU -lX11 -lpthread
gcc -g -E -imacros /usr/include/stdio.h -imacros /usr/include/GLFW/glfw3.h -o main.s main.S
gcc -g -c -no-pie -o main_asm.o main.s 

gcc -g -c -ggdb -I/usr/include -I/usr/include/freetype2 -I./include  main.c
gcc -g -S -ggdb -I/usr/include -I/usr/include/freetype2 -I./include -o gcc_input.s main.c

gcc -no-pie -ggdb -I/usr/include -I/usr/include/freetype2 -I./include -o exe main.o main_asm.o -L/usr/lib -L/usr/lib/x86_64-linux-gnu -lGLEW -lglfw -ldl -lm -lGL -lGLU -lX11 -lpthread -lfreetype

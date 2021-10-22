#gcc -E -imacros headers.h -no-pie -Iinclude -o main_preprocessed.s main.S
#gcc -include headers.h -no-pie -Iinclude -o exe main_preprocessed.s glad.c -Llib  -l:libglfw3.a -ldl -lm -lGL -lGLU -lX11 -lpthread
gcc -E -o utils_preprocessed.s utils.S
gcc -c -no-pie utils_preprocessed.s 

gcc -c -ggdb -I/usr/include -I/usr/include/freetype2 -I./include  main.c 

gcc -no-pie -ggdb -I/usr/include -I/usr/include/freetype2 -I./include -o exe main.o utils_preprocessed.o -L/usr/lib -L/usr/lib/x86_64-linux-gnu -lGLEW -lglfw -ldl -lm -lGL -lGLU -lX11 -lpthread -lfreetype

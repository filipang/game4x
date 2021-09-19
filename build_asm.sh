gcc -E -imacros headers.h -no-pie -Iinclude -o main_preprocessed.s main.S
gcc -include headers.h -no-pie -Iinclude -o exe main_preprocessed.s glad.c -Llib  -l:libglfw3.a -ldl -lm -lGL -lGLU -lX11 -lpthread


gcc -no-pie -Iinclude -o exe main.c glad.c -Llib  -l:libglfw3.a -ldl -lm -lGL -lGLU -lX11 -lpthread -lfreetype

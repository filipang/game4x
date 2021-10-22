gcc -E -o utils_preprocessed.s utils.S
gcc -c -no-pie utils_preprocessed.s 

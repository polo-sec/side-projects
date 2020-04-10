clear
objfile=$1
objfile+=".o"
asmfile=$1
asmfile+=".asm"
echo 'Variables OK'
echo 'NASM Working...'
nasm -f elf64 -F dwarf -g -o $objfile $asmfile
echo 'GCC Working...'
gcc -o $1 $objfile
echo 'Finished Assembling...'

echo

chmod +x $1
ls -l

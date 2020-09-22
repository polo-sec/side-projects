objfile=$1
objfile+=".o"
linkfile=$1
linkfile+=".l"
asmfile=$1
asmfile+=".asm"
echo 'Variables OK'
echo 'Assembling...'
nasm -f elf64 -F dwarf -g -o $objfile $asmfile
echo 'Linking...'
gcc -o $1 $objfile
echo 'Finished Assembling...'

echo "Executing..."

chmod +x $1
./$1

echo "Finished execution"

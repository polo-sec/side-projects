objfile=$1
objfile+=".o"
asmfile=$1
asmfile+=".asm"
echo 'Variables OK'
echo 'Assembling...'
nasm -f elf64 -o $objfile $asmfile
echo 'Linking...'
ld -o $1 $objfile
echo 'Finished Assembling...'

echo
echo
echo
echo "Executing..."
echo
echo
echo

chmod +x $1
./$1

echo
echo
echo
echo "Finished execution"
echo
echo
echo
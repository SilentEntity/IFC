# everytime make a new file
printf "" > inputFile
for (( i=0;i<=10;i++ )){
echo "$i, $((RANDOM))" >> inputFile
}

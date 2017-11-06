# Counts the number of times each of the five sister’s first names 
# (Elizabeth, Jane, Mary, Catherine and Lydia) are mentioned in Jane 
# Austin’s Pride and Prejudice.
GIRLS=(Elizabeth Jane Mary Catherine Lydia)

FILE=PP.txt
if [ ! -f $FILE ]; then
curl -o $FILE  http://www.gutenberg.org/files/1342/1342-0.txt
fi

echo '-----------------------'
printf '| %-10s | %-6s |\n' "Name" "Number";
echo '-----------------------'
for name in ${GIRLS[*]}
do
n=$(grep -io ${name} ${FILE} | wc -l)
printf '| %-10s | %-6s |\n' $name $n;
done
exit 0

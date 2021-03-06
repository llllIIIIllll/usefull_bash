
files=`find ./ | awk -F "\." '{print $NF}' | grep -v "/" | sort -u`

for file in $files
do
    suffer="\."$file"$"
    find ./ | grep "$suffer" |xargs du -b |awk -v file=$file 'BEGIN{count=0;size=0;} \
        {count = count + 1; size = size + $1;} \
        END{print size/1024/1024 "M  " count " " file}'
done

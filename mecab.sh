
#!/bin/bash

#Usage 
#sh mecab.sh DirectoryName
DeleteLinNumbers(){
    for file in $1/*.txt; do
        fileName=${file##*/}
        sed -e "s/^[0-9]*://" $file | sed -e "s/^\/\///" | sed  -e "s/^\/*//" |sed -e "s/\$\*\///g"|sed -e "s/\*//g"
    done
}
 DeleteLinNumbers $1 | mecab | grep $'\t名詞'  | cut -f1  | sort | uniq | sort 
 #名詞を取る
 # DeleteLinNumbers $1 | mecab | grep $'\t名詞'  | cut -f1  | sort | uniq | sort 
 

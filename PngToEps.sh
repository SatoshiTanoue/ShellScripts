# convertコマンドを使用するために，ImageMagickをインストールする必要がある
# brew install imagemagick
# sh con.sh *.png 
#!/bin/sh

for str in $@
do
name=`echo $str| cut -d "." -f 1`
ex=`echo $str| cut -d "." -f 2`
convert $name.$ex $name.eps
done

arr=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
num=1
for value1 in ${arr[@]}
do
for value2 in ${arr[@]}
do
 ((bnum=$num+9999))
 if [ ! -d "/root/$num" ];then
  echo c
 else
  ((num+=10000))
  continue
 fi
 if [ ! -f "url$value1$value2" ];then
  break
 else
  aria2c -c -iurl$value1$value2 -d/root/$num -x4 -s4 -j128 --auto-file-renaming=false --allow-overwrite=false
  aria2c -c -iurl$value1$value2 -d/root/$num -x4 -s4 -j128 --auto-file-renaming=false --allow-overwrite=false
  aria2c -c -iurl$value1$value2 -d/root/$num -x4 -s4 -j128 --auto-file-renaming=false --allow-overwrite=false
  nohup zip -r $num-$bnum.zip /root/$num &
 fi
 ((num+=10000))
done
done



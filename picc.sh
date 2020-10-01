function up() 
{
fclone move /root/$1 gc:{$3}/$1-$2 --ignore-existing --stats=1s --stats-one-line --checkers=64 --transfers=64 --drive-pacer-min-sleep=1ms --check-first
}
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
 if  [ $num -gt 0 ] && [ $num -lt 300000 ] ; then
  up $num $bnum 0ADR52XSOV6bDUk9PVA
  up $num $bnum 0ADR52XSOV6bDUk9PVA
 elif [ $num -gt 300000 ] && [ $num -lt 600000 ] ; then
  up $num $bnum 0AOYczvhBrki4Uk9PVA
  up $num $bnum 0AOYczvhBrki4Uk9PVA
 elif [ $num -gt 600000 ] && [ $num -lt 900000 ] ; then
  up $num $bnum 0AGzmPa9I1WloUk9PVA
  up $num $bnum 0AGzmPa9I1WloUk9PVA
 elif [ $num -gt 900000 ] && [ $num -lt 1200000 ] ; then
  up $num $bnum 0AOJNvxrE0XnlUk9PVA
  up $num $bnum 0AOJNvxrE0XnlUk9PVA
 elif [ $num -gt 120000 ] && [ $num -lt 1500000 ] ; then
  up $num $bnum 0ALjr3FAoWexDUk9PVA
  up $num $bnum 0ALjr3FAoWexDUk9PVA
 fi
 ((num+=10000))
done
done



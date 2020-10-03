function up() 
{ 
fclone move /root/$1 gc:{$3}/$1-$2 --ignore-existing --stats=1s --stats-one-line --checkers=64 --transfers=64 --drive-pacer-min-sleep=1ms --check-first
fclone move /root/$1-$2.zip gc:{$3} --ignore-existing --stats=1s --stats-one-line --checkers=64 --transfers=64 --drive-pacer-min-sleep=1ms --check-first
}
arr=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
num=1480001
for value1 in ${arr[@]}
do
for value2 in ${arr[@]}
do
 ((bnum=$num+9999))
 if [ ! -f "$num-$bnum.zip" ];then
  echo sws
 else
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
 fi
 ((num-=10000))
done
done



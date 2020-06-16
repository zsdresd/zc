cd /root
bash <(wget -qO- https://git.io/gclone.sh)
wget https://dl-web.dropbox.com/s/1a2920noistdub3/pixiv.zip
unzip -o pixiv.zip -d /root
mv /root/pixiv/rclone.conf /root/.config/rclone/rclone.conf
cd pixiv
#获取昨天日期
cur_date=$(date -d "$N day ago" +%Y%m%d) 
#获取昨天年
cur_y=$(date -d "$N day ago" +%Y) 
#获取昨天月
cur_m=$(date -d "$N day ago" +%m) 
#获取昨天日
cur_d=$(date -d "$N day ago" +%d) 
#获取今天的日
cur_t=$(date -d "$M day ago" +%d)
#获取前天日期
cur_ys=$(date -d "$O day ago" +%Y%m%d) 
#获取昨天星期几
cur_w=$(date -d "$N day ago" +%w)
#获取7天前月
sm=$(date -d "$P day ago" +%m)
#获取7天前日
sd=$(date -d "$P day ago" +%d)
#下载昨天日榜
python3 day.py "https://www.pixiv.net/ranking.php?mode=daily&content=illust"
#下载昨天男性榜
python3 male.py "https://www.pixiv.net/ranking.php?mode=male"
#下载昨天女性榜
python3 female.py "https://www.pixiv.net/ranking.php?mode=female"
#周日时，下载周榜原创榜
if  [ $cur_w == 0 ] ; then
python3 week.py "https://www.pixiv.net/ranking.php?mode=daily&content=illust"
python3 ori.py "https://www.pixiv.net/ranking.php?mode=original"
fi
#月初时，下载上个月月榜
if  [ $cur_t -eq 1 ] && [ $cur_d -le 30 ] ; then
python3 month.py "https://www.pixiv.net/ranking.php?mode=monthly&content=illust"
elif [ $cur_d -eq 31 ] ; then
python3 month.py "https://www.pixiv.net/ranking.php?mode=monthly&content=illust&date=$cur_date"
python3 mouth.py "https://www.pixiv.net/ranking.php?mode=monthly&content=illust&date=$cur_ys"
fi
#月初时，整合上个月全部日榜到一个文件夹
if  [ $cur_t -eq 1 ] ; then
 for (( VAR=1;VAR<=$cur_d;VAR++ ))
  do
   gclone copy gc:{0APhrGdH9CrpqUk9PVA}/排行榜/日榜/$cur_y/$cur_m/$VAR gc:{0APhrGdH9CrpqUk9PVA}/排行榜/日榜/$cur_y/$cur_m/All --ignore-existing  --drive-server-side-across-configs
  done
fi
sleep 10m
gclone move /root/pixiv/日榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/日榜/$cur_y/$cur_m/$cur_d --ignore-existing
gclone move /root/pixiv/男榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/受男性欢迎/$cur_y/$cur_m/$cur_d --ignore-existing
gclone move /root/pixiv/女榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/受女性欢迎/$cur_y/$cur_m/$cur_d --ignore-existing
gclone move /root/pixiv/周榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/周榜//$cur_y/${sm}${sd}-${cur_m}${cur_d} --ignore-existing
gclone move /root/pixiv/月榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/月榜/$cur_y/$cur_m --ignore-existing
gclone move /root/pixiv/原创榜 gc:{0APhrGdH9CrpqUk9PVA}/排行榜/原创榜/$cur_y/${sm}${sd}-${cur_m}${cur_d} --ignore-existing

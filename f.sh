function de() #去重所有盘，清空回收站
{
for (( index=1; index <= $#; index++ ))
do
 nohup gclone dedupe newest gc:{${!index}} --drive-server-side-across-configs  --tpslimit 5 &
 nohup gclone delete gc:{${!index}} --drive-trashed-only --drive-use-trash=false --fast-list &
done
echo 开始去重
}
cd /root
bash <(wget -qO- https://git.io/gclone.sh)
git clone https://github.com/damifen/wtf
wget https://dl-web.dropbox.com/s/zqijpen92ll9rfh/rclone.conf
#mv /root/wtf/rclone.conf /home/runner/.config/rclone/rclone.conf
mv /root/rclone.conf /home/runner/.config/rclone/rclone.conf
unzip -o /root/wtf/2400.zip -d /root/sb
de 0AEXTYZepvkC3Uk9PVA 0ADR3bbXWcqnZUk9PVA 0ANbUhwqMAZqNUk9PVA 0AAXyG2pyrA4LUk9PVA 0APhrGdH9CrpqUk9PVA 0AHTXBrERjkYlUk9PVA 0ACgDoNA7akThUk9PVA 0ABMqxfvXluvzUk9PVA 0ADdLjkjrR8oHUk9PVA 0AHKhZ4iuPoFHUk9PVA 0AGUe1wrfcIt5Uk9PVA 0ABIVkQ4pu0dZUk9PVA 0ACEkaVHrnArTUk9PVA 0AORI0uLys_-ZUk9PVA 0AITc07rJC_RVUk9PVA 0APD-tXX3FoeyUk9PVA 0AOYy-wj3kxN8Uk9PVA 0AM6Vwy1089TBUk9PVA 0AFXwjWXN4eRkUk9PVA 0ALwVzFCbugjsUk9PVA 0ANMMKHQJNcaYUk9PVA 0AAprlJw6kbP7Uk9PVA 0APr0rwwCmzv9Uk9PVA 0AMxQszs7A-dnUk9PVA 0ALBFN6ACFsDMUk9PVA 0ALtUB_13BdGnUk9PVA 0AJNZfsC6zWknUk9PVA 0AFhnQVIiiek0Uk9PVA 0AKictOD8TtirUk9PVA 0AC8aKx0OEbnwUk9PVA 0ADWSDMn6NXqIUk9PVA 0AOZ0ItndKKRYUk9PVA 0AJz9kE4u-Q5iUk9PVA 0AHEevv4G2FrMUk9PVA 0AJIu8LYnGhnJUk9PVA 0ALumV7QfywsPUk9PVA 0AGV2UMBn44haUk9PVA 0AH-vsbBFk06BUk9PVA 0AD_PyvtxK5hhUk9PVA 0AJzHjALHVXaVUk9PVA 0AMH3L2iZ1sbGUk9PVA

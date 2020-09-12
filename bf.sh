function zc() 
{
fclone copy fc:{$1} gc:{$2} --drive-server-side-across-configs --stats=1s --stats-one-line --checkers=128 --transfers=128 --drive-pacer-min-sleep=1ms --drive-pacer-burst=5000 --check-first
fclone dedupe newest gc:{$2} --drive-server-side-across-configs  --tpslimit 50
fclone delete fc:{$2} --drive-trashed-only --drive-use-trash=false --fast-list
echo 开始转存
}
zc 0AAUm6vJls3cKUk9PVA 0AL2wbgCsig6eUk9PVA
zc 0AHk1zKir33-zUk9PVA 0AKnkC5p3UAXfUk9PVA
zc 0AAW2WxOjnIpHUk9PVA 0ACVeE2kEgXa1Uk9PVA
zc 0AAWwwDFPsnmBUk9PVA 0ACwuN98WA5zGUk9PVA
zc 0ALzQxRMt91PkUk9PVA 0AALBCrg6wNC4Uk9PVA
zc 0AA_23DpH8wIFUk9PVA 0AFeWuiMu-9MDUk9PVA
zc 0AM5v7c_a2rlKUk9PVA 0AEXmkB1xZPOUUk9PVA
zc 0AHRTHXPvC7dxUk9PVA 0AJSyog8XyL9rUk9PVA
zc 0ABu9XStAnK_4Uk9PVA 0AMBLqyEX6KfYUk9PVA
zc 0APpuCVExJz42Uk9PVA 0AGiVthYfrKN0Uk9PVA
zc 0AAk173U3yUTfUk9PVA 0AIX9UYN4QqnoUk9PVA
zc 0AD5iXqA3aC5xUk9PVA 0AI4sA_t95sBCUk9PVA
zc 0AMtxqV7WxMp_Uk9PVA 0ANe80wwfeflLUk9PVA
zc 0ANjbJuooF5axUk9PVA 0ADKhtD3g68PIUk9PVA
zc 0AA3JsPjLVPBuUk9PVA 0ADv9WTnF9UNPUk9PVA
zc 0ANq-W3ktyeNdUk9PVA 0AJun_m5WDRPzUk9PVA
zc 0AGcRM9o_N8R2Uk9PVA 0AHdGl-LKDWBfUk9PVA
zc 0AH8RukNW0jiBUk9PVA 0AF0hDN3uGa39Uk9PVA

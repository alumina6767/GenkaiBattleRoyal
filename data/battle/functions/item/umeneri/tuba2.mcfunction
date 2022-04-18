#> battle:item/umeneri/tuba2
# @internal

## つば
summon llama_spit ~ ~1.2 ~ {Tags:["new"],Fire:1000}

## 計算用マーカー
execute positioned 0.0 0.0 0.0 positioned ~ ~0.2 ~ run summon marker ^ ^ ^0.2 {UUID:[I;6,7,0,7]}

## 飛ばす
data modify entity @e[type=llama_spit,tag=new,limit=1] Motion set from entity 00000006-0000-0007-0000-000000000007 Pos

## Ownerを更新
data modify entity @e[type=llama_spit,tag=new,limit=1] Owner set from entity @s UUID

## マーカーをkill
kill 00000006-0000-0007-0000-000000000007

## タグを消去
tag @e[type=llama_spit,tag=new] remove new
tag @a[tag=target] remove target
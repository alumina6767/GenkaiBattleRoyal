#> battle:item/umeneri/tuba2
# @internal

#>
# @within battle:item/umeneri/**
    #declare tag tarako.tuba
    #declare tag tarako.tuba.poison

## つば
summon llama_spit ~ ~0.1 ~ {Tags:["new","tarako.tuba"],Fire:1000}

## 計算用マーカー
execute facing entity @a[tag=target,distance=..8] eyes positioned 0.0 0.0 0.0 run summon marker ^ ^0.02 ^0.8 {UUID:[I;6,7,0,7]}

## 飛ばす
data modify entity @e[type=llama_spit,tag=new,dx=0,limit=1] Motion set from entity 00000006-0000-0007-0000-000000000007 Pos

## 毒
execute as @s[tag=!level2] run tag @e[type=llama_spit,tag=new,dx=0,limit=1] add tarako.tuba.poison

## Ownerを更新
data modify entity @e[type=llama_spit,tag=new,dx=0,limit=1] Owner set from entity @s UUID

## マーカーをkill
kill 00000006-0000-0007-0000-000000000007

## パーティクル
schedule function battle:item/umeneri/particle_tuba 1t append

## タグを消去
tag @e[type=llama_spit,dx=0,tag=new] remove new
tag @a[tag=target,distance=..8] remove target
#> battle:effect/barrier/2
# バリア as 矢
# @internal


#> 
# @private
    #declare tag owner

## 矢のUUIDを保存
execute store result score _ _ run data get entity @s Owner[3]

## 発射主を取得
execute as @a if score @s uuid3 = _ _ run tag @s add owner

## パーティクル
execute positioned ~ ~1.5 ~ facing entity @s eyes positioned as @s run function battle:effect/barrier/particle

## 音
playsound block.anvil.place neutral @a ~ ~ ~ 1.0 2.0 0.0
playsound item.shield.block neutral @a ~ ~ ~ 1.0 2.0 0.0

## メッセージ
title @a[tag=owner] times 5 10 5
title @a[tag=owner] subtitle "弾かれてしまう！！"
title @a[tag=owner] title ""

## 発射主の近くでも鳴らす
execute as @a[tag=owner] at @s run playsound block.anvil.place neutral @s ~ ~ ~ 0.1 2.0 0.0
execute as @a[tag=owner] at @s run playsound item.shield.block neutral @s ~ ~ ~ 0.1 2.0 0.0

## シールドを移動
execute if entity @a[team=A,dx=0] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000001 ^0.5 ^ ^-1 ~ ~

## シールドの一時停止のインターバル
execute if entity @a[team=A,dx=0] run scoreboard players set 00000006-0000-0007-0000-000100000001 battle 10

## 矢を消す
kill @s

## タグを消去
tag @a[tag=owner] remove owner
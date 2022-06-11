#> battle:effect/barrier/2
# バリア as 矢
# @internal


#> 
# @private
    #declare tag owner

## シールドを移動
execute if score _ battle.team matches 1 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000001 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 2 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000002 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 3 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000003 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 4 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000004 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 5 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000005 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 6 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000006 ^0.5 ^ ^ ~ ~
execute if score _ battle.team matches 7 facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000007 ^0.5 ^ ^ ~ ~

## シールドの一時停止のインターバル
execute if score _ battle.team matches 1 run scoreboard players set 00000006-0000-0007-0000-000100000001 battle 10
execute if score _ battle.team matches 2 run scoreboard players set 00000006-0000-0007-0000-000100000002 battle 10
execute if score _ battle.team matches 3 run scoreboard players set 00000006-0000-0007-0000-000100000003 battle 10
execute if score _ battle.team matches 4 run scoreboard players set 00000006-0000-0007-0000-000100000004 battle 10
execute if score _ battle.team matches 5 run scoreboard players set 00000006-0000-0007-0000-000100000005 battle 10
execute if score _ battle.team matches 6 run scoreboard players set 00000006-0000-0007-0000-000100000006 battle 10
execute if score _ battle.team matches 7 run scoreboard players set 00000006-0000-0007-0000-000100000007 battle 10

## uuid3が登録されていない場合はOwnerから取得
execute unless entity @s[scores={uuid3=-2147483648..2147483647}] store result score _ _ run data get entity @s Owner[3]
scoreboard players operation _ _ = @s[scores={uuid3=-2147483648..2147483647}] uuid3

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

## 矢を消す
kill @s

## タグを消去
tag @a[tag=owner] remove owner
#> battle:main
# 毎ティック実行
# @public

scoreboard players add clock battle 1
scoreboard players operation clock battle %= interval battle

## 死亡したプレイヤーを監視
#execute as @a[scores={battle.death=1..}] run function battle:death/

#execute as @a[scores={battle.health=..0}] run effect give @s instant_health 4 100 false
#execute as @a[scores={battle.health=..0}] run tp @s -68.79 -60.00 -35.33 93.06 1.44

#execute as @a[nbt={Health:0.0f}] run say boka-nn
#execute as @a[scores={death=1}] run say hoo

## スライムジャンプ
function battle:effect/jump_small_2/tick

## ボスを見ている時 弱体化エフェクト 極まれにジャンプ切りするとダメージが入る
execute as @a[tag=looking_at_boss,predicate=!battle:looking_at/boss] run function battle:effect/weak/clear
execute as @a[tag=!battle.boss,predicate=battle:looking_at/boss] run function battle:effect/weak/
#execute as @a[tag=battle.boss] at @s run function battle:effect/weak_area

## ボスの近くに矢が来た時 弾く
execute as @a[tag=battle.boss] at @s run function battle:effect/barrier/

function battle:effect/barrier/tick

## コンパスの更新
execute if score clock battle matches 0 run function battle:item/compass/tick

## たらこ
execute if score clock battle matches 0 run schedule function battle:item/umeneri/tick/ 1t append
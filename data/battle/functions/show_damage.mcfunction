#> battle:show_damage
# ダメージを表示
# @internal

#>
# @private
    #declare score_holder before
    #declare score_holder now

## 現在のHPを取得
execute store result score now tmp run data get entity @s Health 100

## 与ダメージ前のHPを取得
scoreboard players operation before tmp = @s battle.health
execute if score @s battle.health matches 0 run scoreboard players set before tmp 20
scoreboard players operation before tmp *= 100 const

## 死亡時にはHPがMAXになってしまう
execute if score before tmp < now tmp run scoreboard players set now tmp 0

## 差を計算
scoreboard players operation now tmp -= before tmp

## 丸め込み
scoreboard players operation now tmp /= 100 const

## インジゲータを作る
execute if score now tmp matches -2.. run data merge block 0 -63 0 {Text2:'[{"score":{"name":"now","objective":"tmp"},"color":"yellow"}]'}
execute if score now tmp matches -5..-3 run data merge block 0 -63 0 {Text2:'[{"score":{"name":"now","objective":"tmp"},"color":"gold"}]'}
execute if score now tmp matches ..-6 run data merge block 0 -63 0 {Text2:'[{"score":{"name":"now","objective":"tmp"},"color":"red"}]'}

execute rotated ~ 0 run summon item ^ ^1.8 ^-0.5 {NoGravity:1b,CustomNameVisible:1b,Age:5980,PickupDelay:32767,Motion:[0.0,0.02,0.0],Tags:["new"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @e[type=item,tag=new,limit=1] CustomName set from block 0 -63 0 Text2

## タグを消す
tag @e[type=item,tag=new] remove new

## スコアリセット
scoreboard players reset before tmp
scoreboard players reset now tmp
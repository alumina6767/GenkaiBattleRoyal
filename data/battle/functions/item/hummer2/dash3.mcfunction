#> battle:item/hummer2/dash3
# as armor_stand
# @internal

#region 前進
## 時間とともに加速
scoreboard players operation _ mx = @s mx
scoreboard players operation _ mz = @s mz

scoreboard players operation _ mx *= @s hummer2.speed
scoreboard players operation _ mz *= @s hummer2.speed

scoreboard players operation _ mx /= 100 const
scoreboard players operation _ mz /= 100 const

## y成分以外を初期値に
data modify storage tmp Motion set from entity @s Motion
execute store result storage tmp Motion[0] double 0.001 run scoreboard players get _ mx
execute store result storage tmp Motion[2] double 0.001 run scoreboard players get _ mz

## y成分は少し上方向に
execute store result score _ my run data get storage tmp Motion[1] 1000
scoreboard players add _ my 75
execute store result storage tmp Motion[1] double 0.001 run scoreboard players get _ my

## エンティに代入
data modify entity @s Motion set from storage tmp Motion

## ストレージのリセット
data remove storage tmp Motion

## スコアのリセット
scoreboard players reset _ mx
scoreboard players reset _ my
scoreboard players reset _ mz
#endregion

#region 回転
#>
# @private
    #declare score_holder rx RotationX
    #declare score_holder delta_rx RotationXの変化量

## 現在の方角を取得
execute store result score rx _ run data get entity @s Rotation[0] 100

## 回転角
scoreboard players set delta_rx _ 300

## 時間とともに加速 加速が足りないので２乗
scoreboard players operation delta_rx _ *= @s hummer2.speed
scoreboard players operation delta_rx _ *= @s hummer2.speed
scoreboard players operation delta_rx _ /= 100 const
scoreboard players operation delta_rx _ /= 100 const

execute if score delta_rx _ matches 4500.. run scoreboard players set delta_rx _ 4499

## もとの方角がマイナスのときにバグる
#execute if score rx _ matches ..0 run scoreboard players remove delta_rx _ 36

## 回転
scoreboard players operation rx _ += delta_rx _

## 人形に代入
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get rx _

## 音
execute if score delta_rx _ matches 300..1000 if predicate battle:chance/0.1 run playsound entity.ender_dragon.flap neutral @a ~ ~ ~ 1.0 0.5 0.0
execute if score delta_rx _ matches 1001..3000 if predicate battle:chance/0.2 run playsound entity.ender_dragon.growl neutral @a ~ ~ ~ 1.0 0.7 0.0
execute if score delta_rx _ matches 3001..4500 if predicate battle:chance/0.5 run playsound block.ladder.step neutral @a ~ ~ ~ 1.0 0.5 0.0
execute if score delta_rx _ matches 3001..4500 if predicate battle:chance/0.5 run playsound entity.ender_dragon.flap neutral @a ~ ~ ~ 1.0 0.5 0.0
execute if score delta_rx _ matches 3001..4500 if predicate battle:chance/0.5 run playsound item.trident.riptide_3 neutral @a ~ ~ ~ 1.0 0.5 0.0

## パーティクル
execute anchored eyes run particle flame ^-1 ^-0.5 ^3 0.2 0.2 0.2 0.1 5 force

## 方角を反映させる
#data merge entity @s {Air:-1}

## リセット
scoreboard players reset rx _
scoreboard players reset delta_rx _
#endregion

## 加速分を増加
scoreboard players add @s hummer2.speed 15

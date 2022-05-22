#> battle:item/champagne/shoot3/diffuse
# 弾を拡散させる
# @internal

#>
# @private
# @within battle:item/champagne/rand_circle
    #declare score_holder rx
    #declare score_holder ry
    #declare score_holder 2000
    #declare score_holder 4000
    #declare score_holder rand_x
    #declare score_holder rand_y
    #declare score_holder x^2
    #declare score_holder y^2

## 定数
scoreboard players set 2000 _ 2000
scoreboard players set 4000 _ 4000

## 円形の乱数
function battle:item/champagne/rand_circle

## 現在のRotationを取得
data modify storage tmp Rotation set from entity @s Rotation
execute store result score rx _ run data get storage tmp Rotation[0] 100
execute store result score ry _ run data get storage tmp Rotation[1] 100

## rxを変換
scoreboard players operation rx _ += rand_x _

## ryを変換
scoreboard players operation ry _ += rand_y _

## rx ry を代入
execute store result storage tmp Rotation[0] float 0.01 run scoreboard players get rx _
execute store result storage tmp Rotation[1] float 0.01 run scoreboard players get ry _
data modify entity @s Rotation set from storage tmp Rotation

## スコアを削除
scoreboard players reset rx _
scoreboard players reset ry _
scoreboard players reset 2000 _
scoreboard players reset 4000 _
scoreboard players reset rand_x _
scoreboard players reset rand_y _
scoreboard players reset x^2 _
scoreboard players reset y^2 _

## ストレージを削除
data remove storage tmp Rotation
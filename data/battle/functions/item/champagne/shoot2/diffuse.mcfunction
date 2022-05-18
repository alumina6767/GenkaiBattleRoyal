#> battle:item/champagne/shoot2/diffuse
# 弾を拡散させる
# @internal

#>
# @private
    #declare score_holder rx
    #declare score_holder ry
    #declare score_holder 1500
    #declare score_holder 3000
    #declare score_holder random

## 定数
scoreboard players set 1500 _ 1500
scoreboard players set 3000 _ 3000

## 現在のRotationを取得
data modify storage tmp Rotation set from entity @s Rotation
execute store result score rx _ run data get storage tmp Rotation[0] 100
execute store result score ry _ run data get storage tmp Rotation[1] 100

## rxを変換
function #math:random
execute store result score random _ run data get storage math: out 1
scoreboard players operation random _ %= 3000 _
scoreboard players operation rx _ -= 1500 _
scoreboard players operation rx _ += random _

## ryを変換
function #math:random
execute store result score random _ run data get storage math: out 1
scoreboard players operation random _ %= 3000 _
scoreboard players operation ry _ -= 1500 _
scoreboard players operation ry _ += random _

## rx ry を代入
execute store result storage tmp Rotation[0] float 0.01 run scoreboard players get rx _
execute store result storage tmp Rotation[1] float 0.01 run scoreboard players get ry _
data modify entity @s Rotation set from storage tmp Rotation

## スコアを削除
scoreboard players reset rx _
scoreboard players reset ry _
scoreboard players reset 1500 _
scoreboard players reset 3000 _
scoreboard players reset random _

## ストレージを削除
data remove storage tmp Rotation
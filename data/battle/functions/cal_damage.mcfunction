#> battle:cal_damage
# ダメージを表示
# @internal

#>
# @private
    #declare score_holder before
    #declare score_holder now

## 現在のHPを取得
execute store result score now _ run data get entity @s Health 100

## 与ダメージ前のHPを取得
scoreboard players operation before _ = @s battle.health
execute if score @s battle.health matches 0 run scoreboard players set before _ 20
scoreboard players operation before _ *= 100 const

## 死亡時にはHPがMAXになってしまう
execute if score before _ < now _ run scoreboard players set now _ 0

## 差を計算
scoreboard players operation now _ -= before _

## 丸め込み
scoreboard players operation now _ /= 100 const

## インジゲータを作る
execute if score now _ matches ..-1 run function battle:show_damage/

## スコアリセット
scoreboard players reset before _
scoreboard players reset now _
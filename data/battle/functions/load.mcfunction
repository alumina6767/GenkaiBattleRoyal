#> battle:load
# ロード時のみ実行
# @public

#>
# @internal
    #declare tag battle.boss ボスのみにつけるタグ
    #declare score_holder clock
    #declare score_holder interval
    #declare score_holder compass.slot
    #declare score_holder slot
    #declare score_holder tarako.interval

## 最大HP
scoreboard objectives add max_health dummy
scoreboard objectives add battle.death deathCount
scoreboard objectives add battle.health health

## チーム
team add A
team add B
team add C
team add D
team add E
team add F
team add G

## 汎用スコアボード
scoreboard objectives add battle dummy

scoreboard players set clock battle -1
scoreboard players set interval battle 10
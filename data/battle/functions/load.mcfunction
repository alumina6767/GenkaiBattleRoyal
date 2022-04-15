#> battle:load
# ロード時のみ実行
# @public

#>
# @internal
    #declare tag battle.boss ボスのみにつけるタグ

# 最大HP
scoreboard objectives add max_health dummy
scoreboard objectives add battle.death deathCount
scoreboard objectives add battle.health health

# チーム
team add A
team add B
team add C
team add D
team add E
team add F

## 汎用スコアボード
scoreboard objectives add battle dummy
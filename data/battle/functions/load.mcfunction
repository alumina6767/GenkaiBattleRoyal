#> battle:load
# ロード時のみ実行
# @public

#>
# @internal
    #declare tag battle.boss ボスのみにつけるタグ
    #declare tag battle.invulnerable ダメージ処理を行わないエンティティ
    #declare score_holder clock
    #declare score_holder interval
    #declare score_holder compass.slot
    #declare score_holder slot
    #declare score_holder tarako.interval
    #declare score_holder battle.team
    #declare score_holder commpass.timer 0の時コンパスの処理を実行
    #declare score_holder cron.timer 0の時定期実行の処理を行う

## 最大HP
scoreboard objectives add max_health dummy
scoreboard objectives add battle.death deathCount
scoreboard objectives add battle.health health

## 汎用スコアボード
scoreboard objectives add battle dummy

## クロック
scoreboard players set clock battle -1
scoreboard players set interval battle 2000

## チーム数
execute unless score team_n battle matches -2147483648..2147483647 run scoreboard players set team_n battle 2

## チームID
scoreboard objectives add battle.team dummy

## 設定を表示するスコアボード
scoreboard objectives add battle.setting dummy "設定"

## 当たり判定を消すためだけのチーム
team add no_collision
team modify no_collision collisionRule never

## ダメージソースの情報を保存
scoreboard objectives add battle.hurt_by dummy
scoreboard objectives add battle.hurt_with dummy
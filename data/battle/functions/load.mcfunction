#> battle:load
# ロード時のみ実行
# @public

#>
# @internal
    #declare tag battle.boss ボスのみにつけるタグ
    #declare tag battle.invulnerable ダメージ処理を行わないエンティティ
    #declare score_holder clock
    #declare score_holder interval
    #declare score_holder compass.slot コンパスのあるスロット
    #declare score_holder slot 現在探索中のスロット
    #declare score_holder tarako.interval たらこの処理の間隔
    #declare score_holder battle.team ゲーム内のチーム情報
    #declare score_holder commpass.timer 0の時コンパスの処理を実行
    #declare score_holder cron.timer 0の時定期実行の処理を行う
    #declare score_holder game.phase ゲームのフェーズ 0:ロビー 1:ゲーム準備中 2:ゲーム中 3:ゲーム終了時 -1:デバッグ

## 最大HP
scoreboard objectives add max_health dummy
scoreboard objectives add battle.death deathCount
scoreboard objectives add battle.health health

## 汎用スコアボード
scoreboard objectives add battle dummy

## クロック
scoreboard players set clock battle -1
scoreboard players set interval battle 2000

## チームID
scoreboard objectives add battle.team dummy

## 設定を表示するスコアボード
scoreboard objectives add battle.setting dummy "設定"

## チーム数
execute unless score チーム数 battle.setting matches -2147483648..2147483647 run scoreboard players set チーム数 battle.setting 2

## 当たり判定を消すためだけのチーム
team add no_collision
team modify no_collision collisionRule never

## ダメージソースの情報を保存
scoreboard objectives add battle.hurt_by dummy
scoreboard objectives add battle.hurt_with dummy

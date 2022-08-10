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
    #declare score_holder battle.game.phase ゲームのフェーズ 0: ロビー, 1:ゲーム準備中,  2:カウントダウン中, 3:ゲーム中, 4:ゲーム終了メッセージ, 5:ゲーム終了中, -1:デバッグ
    #declare score_holder #game.mode ゲームの形式
    #declare score_holder タイム制 タイム制であることを表示するためだけのもの
    #declare score_holder ボスバトル制 ボスバトル制であることを表示するためだけのもの
    #declare tag battle.map_center マップの中心にあるエンティティにあるタグ
    #declare score_holder 制限時間 ゲームの制限時間
    #declare score_holder battle.game_timer ゲームの現在時刻

## 最大HP
scoreboard objectives add max_health dummy
scoreboard objectives add battle.death deathCount "死亡したかフラグ"
scoreboard objectives add battle.total_death deathCount "合計死亡回数"
scoreboard objectives add battle.health health "現在のHP"

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

## キルポイント
scoreboard objectives add battle.kill_point dummy "キルポイント"

## リスポーンクールダウン
scoreboard objectives add battle.respawn_cd dummy "リスポーンクールダウン"

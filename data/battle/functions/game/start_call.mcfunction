#> battle:game/start_call
# 開始までのカウントダウン
# @internal

#> 
# @private
    #declare score_holder start_call 開始までのカウントダウン

## カウントの初期化
execute unless score start_call _ matches -2147483648..2147483647 run scoreboard players set start_call _ 200

## カウントダウン
execute if score start_call _ matches 199 run title @a title "5"
execute if score start_call _ matches 160 run title @a title "4"
execute if score start_call _ matches 120 run title @a title "3"
execute if score start_call _ matches 80 run title @a title "2"
execute if score start_call _ matches 40 run title @a title "1"

## スタート
execute if score start_call _ matches 0 run title @a title "start!!"

## デクリメント
scoreboard players remove start_call _ 1

## ループ
execute if score start_call _ matches 0.. run schedule function battle:game/start_call 1t append

## スコアリセット
execute if score start_call _ matches -1 run scoreboard players reset start_call

## スタートコマンド
execute if score start_call _ matches -1 run function battle:game/start
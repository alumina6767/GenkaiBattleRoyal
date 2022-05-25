#> battle:game/bossbar/loop
# ボスバー用にハートの個数を揃える
# @internal

## デクリメント
scoreboard players remove health _ 2

## ハートの追加
data modify storage tmp tmp append value '{"text":"2","font":"heart"}'

## ループ判定
execute if score health _ matches 2.. run function battle:game/bossbar/loop
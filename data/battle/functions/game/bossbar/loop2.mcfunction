#> battle:game/bossbar/loop2
# ボスバー用にハートの個数を揃える
# @internal

## デクリメント
scoreboard players remove max_health _ 2

## ハートの追加
data modify storage tmp tmp append value '{"text":"0","font":"heart"}'

## ループ判定
execute if score max_health _ matches 2.. run function battle:game/bossbar/loop2
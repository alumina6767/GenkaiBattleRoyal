#> battle:item/champagne/change_slime
# 無敵になってしまったスライムを取り替える
# @internal

## 新しいスライムを呼ぶ
function battle:item/champagne/summon_slime

## 古いスライムのスコアを削除
scoreboard players reset @s uuid3

## 古いスライムを消す
tp @s ~ -200 ~
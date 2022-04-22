#> battle:item/gonkane/open
# 開ける
# @internal

## 音
playsound entity.egg.throw player @s ~ ~ ~ 1.0 1.0 0.0

## 消費
item modify entity @s weapon.mainhand share:remove_count

## ガチャ
loot give @s loot battle:gonkane/opened

## 長押しカウントリセット
scoreboard players reset @s main_hand.hold_time
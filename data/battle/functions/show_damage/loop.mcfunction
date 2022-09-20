#> battle:show_damage/loop
# ダメージ表示の消滅までのループ
# @internal

## ループフラグ
scoreboard players set _ _ 0

## 残存時間の増加
execute store success score _ _ run scoreboard players add @e[type=armor_stand,tag=battle.damage_indicator] battle 1

## 上へ移動
execute as @e[type=armor_stand,tag=battle.damage_indicator] at @s run tp ~ ~0.01 ~

## 終了判定
kill @e[type=armor_stand,tag=battle.damage_indicator,scores={battle=50}]

## ループ判定
execute if score _ _ matches 1.. run schedule function battle:show_damage/loop 1t append

#> battle:item/champagne/holding_tick
# 手に持っている時 常時実行
# @internal

#>
# @internal
    #declare tag champagne.shaking champagne振り中

## フラグをリセット
scoreboard players reset _ _

## 前tickに振っていなければスライムを呼ぶ
execute as @s[tag=!champagne.shaking] at @s anchored eyes positioned ^ ^ ^ run function battle:item/champagne/summon_slime

## シャンパンを振っているタグを追加
tag @s[tag=!champagne.shaking] add champagne.shaking

## uuid3でスライムを検索しtp
scoreboard players operation _ _ = @s uuid3
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=slime,tag=champagne,distance=..10] if score @s uuid3 = _ _ run tp @s ~ ~-0.5 ~

## ループ
schedule function battle:item/champagne/kill_slime 1t append
schedule function battle:item/champagne/kill_slime 2t append
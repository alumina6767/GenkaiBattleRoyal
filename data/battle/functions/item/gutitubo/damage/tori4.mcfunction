#> battle:item/gutitubo/damage/tori4
# 違うチームへのtori4からのダメージ
# @internal

## エフェクト
effect give @s instant_damage 1 1 true

## ダメージのクールダウン
scoreboard players set @s tori.damage_cd 20

## クールダウンの減少
schedule function battle:item/gutitubo/damage/cool_down 1t append

## 進捗をリセット
advancement revoke @s[advancements={battle:gutitubo/tori4/a=true}] only battle:gutitubo/tori4/a
advancement revoke @s[advancements={battle:gutitubo/tori4/b=true}] only battle:gutitubo/tori4/b
advancement revoke @s[advancements={battle:gutitubo/tori4/c=true}] only battle:gutitubo/tori4/c
advancement revoke @s[advancements={battle:gutitubo/tori4/d=true}] only battle:gutitubo/tori4/d
advancement revoke @s[advancements={battle:gutitubo/tori4/e=true}] only battle:gutitubo/tori4/e
advancement revoke @s[advancements={battle:gutitubo/tori4/f=true}] only battle:gutitubo/tori4/f
advancement revoke @s[advancements={battle:gutitubo/tori4/g=true}] only battle:gutitubo/tori4/g

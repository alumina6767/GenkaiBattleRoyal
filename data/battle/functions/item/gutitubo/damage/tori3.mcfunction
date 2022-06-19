#> battle:item/gutitubo/damage/tori3
# 違うチームへのtori3からのダメージ
# @internal

## 衝突ダメージ
effect give @s instant_damage 1 1 true

## 凍結エフェクト
function battle:effect/frozen

## ダメージのクールダウン
scoreboard players set @s tori.damage_cd 20

## クールダウンの減少
schedule function battle:item/gutitubo/damage/cool_down 1t append

## 進捗をリセット
advancement revoke @s[advancements={battle:gutitubo/tori3/a=true}] only battle:gutitubo/tori3/a
advancement revoke @s[advancements={battle:gutitubo/tori3/b=true}] only battle:gutitubo/tori3/b
advancement revoke @s[advancements={battle:gutitubo/tori3/c=true}] only battle:gutitubo/tori3/c
advancement revoke @s[advancements={battle:gutitubo/tori3/d=true}] only battle:gutitubo/tori3/d
advancement revoke @s[advancements={battle:gutitubo/tori3/e=true}] only battle:gutitubo/tori3/e
advancement revoke @s[advancements={battle:gutitubo/tori3/f=true}] only battle:gutitubo/tori3/f
advancement revoke @s[advancements={battle:gutitubo/tori3/g=true}] only battle:gutitubo/tori3/g

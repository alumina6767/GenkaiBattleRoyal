#> battle:item/gutitubo/damage/tori4
# 違うチームへのtori4からのダメージ
# @internal

## エフェクト
effect give @s instant_damage 1 1 true

## ダメージのクールダウン
scoreboard players set @s tori.damage_cd 20

## クールダウンの減少
schedule function battle:item/gutitubo/damage/cool_down 1t append

## ダメージ情報を保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation @s battle.hurt_by = @e[type=slime,tag=battle.tori4,sort=nearest,predicate=!battle:same_team,limit=1] uuid3
scoreboard players set @s battle.hurt_with 670034

## 進捗をリセット
advancement revoke @s[advancements={battle:gutitubo/tori4/a=true}] only battle:gutitubo/tori4/a
advancement revoke @s[advancements={battle:gutitubo/tori4/b=true}] only battle:gutitubo/tori4/b
advancement revoke @s[advancements={battle:gutitubo/tori4/c=true}] only battle:gutitubo/tori4/c
advancement revoke @s[advancements={battle:gutitubo/tori4/d=true}] only battle:gutitubo/tori4/d
advancement revoke @s[advancements={battle:gutitubo/tori4/e=true}] only battle:gutitubo/tori4/e
advancement revoke @s[advancements={battle:gutitubo/tori4/f=true}] only battle:gutitubo/tori4/f
advancement revoke @s[advancements={battle:gutitubo/tori4/g=true}] only battle:gutitubo/tori4/g

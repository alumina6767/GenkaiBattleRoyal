#> battle:item/gutitubo/damage/tori1
# 違うチームへのtori1からのダメージ
# @internal

## エフェクト
#function battle:effect/jump_small_2/jump
effect give @s instant_damage 1 1 true

## ダメージのクールダウン
scoreboard players set @s tori.damage_cd 20

## クールダウンの減少
schedule function battle:item/gutitubo/damage/cool_down 1t append

## ダメージ情報を保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation @s battle.hurt_by = @e[type=slime,tag=battle.tori1,sort=nearest,predicate=!battle:same_team,limit=1] uuid3
scoreboard players set @s battle.hurt_with 670031

## 進捗をリセット
advancement revoke @s[advancements={battle:gutitubo/tori1/a=true}] only battle:gutitubo/tori1/a
advancement revoke @s[advancements={battle:gutitubo/tori1/b=true}] only battle:gutitubo/tori1/b
advancement revoke @s[advancements={battle:gutitubo/tori1/c=true}] only battle:gutitubo/tori1/c
advancement revoke @s[advancements={battle:gutitubo/tori1/d=true}] only battle:gutitubo/tori1/d
advancement revoke @s[advancements={battle:gutitubo/tori1/e=true}] only battle:gutitubo/tori1/e
advancement revoke @s[advancements={battle:gutitubo/tori1/f=true}] only battle:gutitubo/tori1/f
advancement revoke @s[advancements={battle:gutitubo/tori1/g=true}] only battle:gutitubo/tori1/g

#> battle:item/gutitubo/damage/tori2
# 違うチームへのtori2からのダメージ
# @internal

## 衝突ダメージ
effect give @s instant_damage 1 0 true

## 延焼ダメージ
summon arrow ~ ~2.1 ~ {Fire:800,damage:0.1d,Motion:[0.0,-6.0,0.0]}

## ダメージのクールダウン
scoreboard players set @s tori.damage_cd 20

## クールダウンの減少
schedule function battle:item/gutitubo/damage/cool_down 1t append

## ダメージ情報を保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation @s battle.hurt_by = @e[type=slime,tag=battle.tori2,sort=nearest,predicate=!battle:same_team,limit=1] uuid3
scoreboard players set @s battle.hurt_with 670032

## 進捗をリセット
advancement revoke @s[advancements={battle:gutitubo/tori2/a=true}] only battle:gutitubo/tori2/a
advancement revoke @s[advancements={battle:gutitubo/tori2/b=true}] only battle:gutitubo/tori2/b
advancement revoke @s[advancements={battle:gutitubo/tori2/c=true}] only battle:gutitubo/tori2/c
advancement revoke @s[advancements={battle:gutitubo/tori2/d=true}] only battle:gutitubo/tori2/d
advancement revoke @s[advancements={battle:gutitubo/tori2/e=true}] only battle:gutitubo/tori2/e
advancement revoke @s[advancements={battle:gutitubo/tori2/f=true}] only battle:gutitubo/tori2/f
advancement revoke @s[advancements={battle:gutitubo/tori2/g=true}] only battle:gutitubo/tori2/g

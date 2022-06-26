#> battle:item/umeneri/attack
# 直接攻撃を与えた時 as player
# @internal

## ダメージ情報を保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation @s battle.hurt_by = @e[type=silverfish,predicate=!battle:same_team,sort=nearest,limit=1,distance=..3] uuid3
scoreboard players set @s battle.hurt_with 670012

## 進捗をリセット
advancement revoke @s only battle:item/umeneri/attack

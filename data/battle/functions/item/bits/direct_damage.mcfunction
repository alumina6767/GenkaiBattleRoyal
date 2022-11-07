#> battle:item/bits/direct_damage
# 直接ダメージを受けた時

## ダメージ情報を保存
scoreboard players operation @s battle.hurt_by = @e[type=fireball,sort=nearest,limit=1] uuid3
scoreboard players operation @s battle.hurt_with = @e[type=fireball,sort=nearest,limit=1] battle.hurt_with

## 進捗をリセット
advancement revoke @s only battle:item/bits/direct_damage
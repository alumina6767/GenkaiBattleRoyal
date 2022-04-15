#> battle:revival
# トーテムの様な効果を発揮させる
# @internal

## 死亡判定を戻す
scoreboard players set @s death 0

## トーテムを持たせる
#item replace entity @s weapon.offhand with totem_of_undying

## タグをつける
#tag @s add revival

## 殺す
#schedule function battle:revival2 2s

## 視界を曇らせる
#effect give @s blindness 1 0 true

## 音
playsound item.totem.use player @a ~ ~ ~ 1.0 1.0 0.0

## パーティクル
particle totem_of_undying ~ ~ ~ 0 0 0 1.0 100 normal
particle totem_of_undying ~ ~ ~ 0 0 0 1.0 100 normal

## 回復
#effect give @s instant_health 1 100 true
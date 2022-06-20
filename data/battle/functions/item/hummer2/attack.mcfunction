#> battle:item/hummer2/attack
# 攻撃処理
# @internal

## 音
playsound entity.player.hurt neutral @a ~ ~ ~ 1 1 0
playsound entity.player.hurt neutral @a ~ ~ ~ 1 1 0
playsound entity.player.hurt neutral @a ~ ~ ~ 1 1 0
playsound entity.arrow.hit_player neutral @a[tag=target,distance=..10] ~ ~ ~ 1 1 0

## パーティクル
particle dust 1 1 1 2 ~ ~1 ~ 0.5 0.5 0.5 1 30 force

## クールダウンの設定
scoreboard players set @s hummer2.damage_cd 10
schedule function battle:item/hummer2/damage_cd 1t append

## 与えたいダメージを設定 (小数点2桁まで有効)
data modify storage score_damage: Argument set value {Damage:6.00}

## 対象を実行者にしてfunctionを実行
function score_damage:api/attack

## ダメージソース情報を保存
scoreboard players operation @s battle.hurt_by = _ uuid3
scoreboard players set @s battle.hurt_with 670130

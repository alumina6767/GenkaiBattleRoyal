#> battle:item/champagne/shoot2/hit_entity
# エンティティに当たったとき
# @internal

## 発射主を探す
scoreboard players operation _ _ = @s uuid3
execute as @a if score @s uuid3 = _ _ at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.8 0.8 0

## 弾を消す
scoreboard players set @s champagne.time 0
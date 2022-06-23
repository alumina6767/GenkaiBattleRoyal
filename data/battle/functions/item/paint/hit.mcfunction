#> battle:item/paint/hit
# hit処理
# @internal

## ダメージを与える

## 与えたいダメージを設定 (小数点2桁まで有効)
data modify storage score_damage: Argument set value {Damage:1.2}

## ダメージ処理
function score_damage:api/attack

## ダメージソース情報を保存
scoreboard players operation @s battle.hurt_by = _ uuid3
scoreboard players set @s battle.hurt_with 670110

## クールダウンを設定
scoreboard players set @s paint.damage.cool_down 10

## クールダウン減少ループ
schedule function battle:item/paint/tick_damage_cool_down.mcfunction 1t append
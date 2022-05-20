#> battle:item/champagne/shake
# champagneを振る
# @internal

## 音
playsound item.bottle.fill player @a ~ ~ ~ 1 2 0
playsound item.armor.equip_gold player @a ~ ~ ~ 1 1 0

## パーティクル これとは別にスライムを殴ったときにスライムボールのパーティクルが発生する
particle wax_off ~ ~1.0 ~ 0.3 0.3 0.3 2 5 force

## 現在の振り数を取得
execute store result score _ _ run data get entity @s SelectedItem.tag.Battle.Shake 1.0

## 振り数を追加
scoreboard players add _ _ 1

## ストレージに新しい振り数を入れる
data remove storage tmp Shake
execute store result storage tmp Shake int 1 run scoreboard players get _ _

## 振り数を更新 lootコマンドに干渉するので例外処理も必要
execute unless score _ _ matches 5 unless score _ _ matches 20 unless score _ _ matches 50 run item modify entity @s weapon.mainhand battle:shake

## ストレージをリセット
data remove storage tmp Shake

## シャンパンからシャンパンガトリングに変更する
execute if score _ _ matches 5 run particle dust 0.957 0.522 0.086 1.5 ~ ~1.0 ~ 1.0 0.1 1.0 1 20 force
execute if score _ _ matches 5 run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1 2 0
execute if score _ _ matches 5 run loot replace entity @s weapon.mainhand loot battle:champagne/gatling_low

## シャンパンガトリングの強化
execute if score _ _ matches 20 run particle dust 0.922 0.882 0.09 1.5 ~ ~1.0 ~ 1.0 0.1 1.0 1 30 force
execute if score _ _ matches 20 run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1 2 0
execute if score _ _ matches 20 run loot replace entity @s weapon.mainhand loot battle:champagne/gatling_normal

## シャンパンガトリングの強化
execute if score _ _ matches 50 run particle dust 0.369 0.922 0.09 2 ~ ~1.0 ~ 1.0 0.1 1.0 1 30 force
execute if score _ _ matches 50 run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1 2 0
execute if score _ _ matches 50 run loot replace entity @s weapon.mainhand loot battle:champagne/gatling_high

## 叩いたスライムはしばらく無敵になってしまうので取替え
scoreboard players operation _ _ = @s uuid3
execute anchored eyes positioned ^ ^ ^ as @e[type=slime,tag=champagne,distance=..5] if score @s uuid3 = _ _ run function battle:item/champagne/change_slime

## 進捗をリセット
advancement revoke @s only battle:champagne/shake
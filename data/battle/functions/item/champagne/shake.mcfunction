#> battle:item/champagne/shake
# champagneを振る
# @internal

## 現在の振り数を取得
execute store result score _ _ run data get entity @s SelectedItem.tag.Battle.Shake 1.0

## 振り数を追加
scoreboard players add _ _ 1

## ストレージに新しい振り数を入れる
data remove storage tmp Shake
execute store result storage tmp Shake int 1 run scoreboard players get _ _

## 振り数を更新
execute unless score _ _ matches 5 run item modify entity @s weapon.mainhand battle:shake

## ストレージをリセット
data remove storage tmp Shake

## もし振り数が5なら シャンパンからシャンパンガトリングに変更する
execute if score _ _ matches 5 run loot replace entity @s weapon.mainhand loot battle:champagne_gatling

## 叩いたスライムはしばらく無敵になってしまうので取替え
scoreboard players operation _ _ = @s uuid3
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=slime,tag=champagne] if score @s uuid3 = _ _ run function battle:item/champagne/change_slime

## 進捗をリセット
advancement revoke @s only battle:champagne/shake
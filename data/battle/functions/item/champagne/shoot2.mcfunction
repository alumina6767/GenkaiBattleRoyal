#> battle:item/champagne/shoot2
# @internal

execute anchored eyes as @s run tp @s ^ ^ ^ ~ ~

## 速度
execute store result score _ _ run data get storage player_data tmp.SelectedItem.tag.Battle.Shake
scoreboard players operation @s Speed = _ _
execute if score @s Speed matches 100.. run scoreboard players set @s Speed 100 
#scoreboard players set @s Speed 100

## 時間
scoreboard players set @s Duration 80

## 拡散角度(tag=Diffuse)
scoreboard players set @s diffuseX 15
scoreboard players set @s diffuseY 15

## 共通の初期化処理
function main:summon_as/initial

## 処理用のタグを消す
tag @s remove new
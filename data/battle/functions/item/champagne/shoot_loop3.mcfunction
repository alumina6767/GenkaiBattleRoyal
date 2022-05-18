#> battle:item/champagne/shoot_loop3
# @internal

execute anchored eyes as @s run tp @s ^ ^ ^ ~ ~

## 速度
scoreboard players operation @s Speed = _ _

## 時間
scoreboard players set @s Duration 80

## 拡散角度(tag=Diffuse)
scoreboard players set @s diffuseX 15
scoreboard players set @s diffuseY 15

## 共通の初期化処理
function main:summon_as/initial

## 処理用のタグを消す
tag @s remove new
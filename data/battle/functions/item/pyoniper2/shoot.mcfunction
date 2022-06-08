#> battle:item/pyoniper2/shoot
# 使用判定
# @internal

#>
# @internal
    #declare tag pyoniper2.bullet pyoniper2の弾丸

## 音
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5 0
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.8 0

#region 弾丸
## 弾を召喚
summon armor_stand ~ ~ ~ {Tags:["new","pyoniper2.bullet","barrier.blockable"],Small:1b,Marker:1b,Invisible:1b,Silent:1b}

## 射程距離を設定
scoreboard players set @e[type=armor_stand,tag=new] pyoniper2.time 10

## 発射主を登録
scoreboard players operation @e[type=armor_stand,tag=new] uuid3 = @s uuid3

## チームを登録
scoreboard players operation @e[type=armor_stand,tag=new] battle.team = @s battle.team

## 向きを指定
execute anchored eyes run tp @e[type=armor_stand,tag=new] ^ ^ ^0.01 ~ ~

## タグを削除
tag @e[type=armor_stand,tag=new] remove new
#endregion

## アイテムの置き換え
tag @s add pyoniper2.shot
schedule function battle:item/pyoniper2/shoot2 1t append

## 弾道処理
schedule function battle:item/pyoniper2/tick_bullet 1t append

## リロード時間を設定
scoreboard players add @s pyoniper2.reload 99

## リロード処理
schedule function battle:item/pyoniper2/tick_reload 1t append

## 進捗をリセット
advancement revoke @s only battle:pyoniper2/shoot
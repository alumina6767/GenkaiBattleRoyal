#> battle:punch_player

## 殴ったプレイヤー情報を保存
scoreboard players operation @a[tag=battle.punched] battle.hurt_by = @s uuid3
scoreboard players set @a[tag=battle.punched] battle.hurt_with 1

## タグの削除
tag @a[tag=battle.punched] remove battle.punched

advancement revoke @s only battle:punch_player
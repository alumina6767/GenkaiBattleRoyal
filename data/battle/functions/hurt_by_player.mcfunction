#> battle:hurt_by_player

#declare tag battle.punched 殴られたプレイヤー

## 殴られたことを保存
tag @s add battle.punched

advancement revoke @s only battle:hurt_by_player
#> battle:item/umeneri/tame
# たらこをてなづける
# @internal

#> 
# @internal
    #declare tag tamed

## タグ付け
tag @e[type=silverfish,tag=tarako,tag=!tamed,sort=nearest,limit=1] add target

## てなづけられているタグを追加
tag @e[type=silverfish,tag=tarako,tag=target] add tamed

## メッセージ
execute if entity @e[type=silverfish,tag=tamed] run tellraw @s "たらこを召喚した!!"

## チームに入れる
execute if entity @s[team=A] positioned ^ ^ ^1 run team join A @e[type=silverfish,tag=target]
execute if entity @s[team=B] positioned ^ ^ ^1 run team join B @e[type=silverfish,tag=target]
execute if entity @s[team=C] positioned ^ ^ ^1 run team join C @e[type=silverfish,tag=target]
execute if entity @s[team=D] positioned ^ ^ ^1 run team join D @e[type=silverfish,tag=target]
execute if entity @s[team=E] positioned ^ ^ ^1 run team join E @e[type=silverfish,tag=target]
execute if entity @s[team=F] positioned ^ ^ ^1 run team join F @e[type=silverfish,tag=target]
execute if entity @s[team=G] positioned ^ ^ ^1 run team join G @e[type=silverfish,tag=target]

## タグを消去
tag @e[type=silverfish,tag=tarako,tag=target] remove target

## 進捗をリセット
advancement revoke @s only battle:item/tame_tarako

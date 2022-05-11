#> battle:game/boss_lottery/
# ボスの抽選を行う
# @internal

#>
# @internal
    #declare score_holder team_n "チームの数"

## 特定のブロックの上に立っているプレイヤーにタグ付け
execute as @a at @s if block ~ ~-1 ~ white_concrete run tag @s add target

## チーム数が多すぎる、少なすぎるの警告後 抽選
scoreboard players operation _ _ = team_n battle.setting
execute if score _ _ matches 8.. run tellraw @a "最大チーム数は7です。現在のチーム数は多すぎます！"
execute if score _ _ matches ..1 run tellraw @a "最小チーム数は2です。現在のチーム数は少なすぎます！"
execute if score _ _ matches 2..7 run function battle:game/boss_lottery/set_tag

## ボスをチームに分配
execute if entity @a[tag=target,limit=1] run team add A "A"
team join A @r[tag=battle.boss,tag=target]
tag @a[team=A,tag=battle.boss] remove target
execute as @a[team=A,tag=battle.boss] run tellraw @a [{"text":"チームAのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=A] battle.team 0

execute if entity @a[tag=target,limit=1] run team add B "B"
team join B @r[tag=battle.boss,tag=target]
tag @a[team=B,tag=battle.boss] remove target
execute as @a[team=B,tag=battle.boss] run tellraw @a [{"text":"チームBのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=B] battle.team 1

execute if entity @a[tag=target,limit=1] run team add C "C"
team join C @r[tag=battle.boss,tag=target]
tag @a[team=C,tag=battle.boss] remove target
execute as @a[team=C,tag=battle.boss] run tellraw @a [{"text":"チームCのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=C] battle.team 2

execute if entity @a[tag=target,limit=1] run team add D "D"
team join D @r[tag=battle.boss,tag=target]
tag @a[team=D,tag=battle.boss] remove target
execute as @a[team=D,tag=battle.boss] run tellraw @a [{"text":"チームDのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=D] battle.team 3

execute if entity @a[tag=target,limit=1] run team add E "E"
team join E @r[tag=battle.boss,tag=target]
tag @a[team=E,tag=battle.boss] remove target
execute as @a[team=E,tag=battle.boss] run tellraw @a [{"text":"チームEのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=E] battle.team 4

execute if entity @a[tag=target,limit=1] run team add F "F"
team join F @r[tag=battle.boss,tag=target]
tag @a[team=F,tag=battle.boss] remove target
execute as @a[team=F,tag=battle.boss] run tellraw @a [{"text":"チームFのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=F] battle.team 5

execute if entity @a[tag=target,limit=1] run team add G "G"
team join G @r[tag=battle.boss,tag=target]
tag @a[team=G,tag=battle.boss] remove target
execute as @a[team=G,tag=battle.boss] run tellraw @a [{"text":"チームGのボスは "},{"selector":"@s"}]
scoreboard players set @a[team=G] battle.team 6

## タグを削除
tag @a[tag=target] remove target
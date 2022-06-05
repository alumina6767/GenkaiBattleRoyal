#> battle:team2id
# 現在のチームをスコアに保存
# @internal

scoreboard players set @s[team=A] battle.team 1
scoreboard players set @s[team=B] battle.team 2
scoreboard players set @s[team=C] battle.team 3
scoreboard players set @s[team=D] battle.team 4
scoreboard players set @s[team=E] battle.team 5
scoreboard players set @s[team=F] battle.team 6
scoreboard players set @s[team=G] battle.team 7
scoreboard players reset @s[team=!A,team=!B,team=!C,team=!D,team=!E,team=!F,team=!G] battle.team

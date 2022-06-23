execute at @a[tag=battle.boss] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["cipher","new"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"cipher"}'}}}]}
execute as @e[tag=cipher,tag=new] at @s run scoreboard players operation @s chiper_team = @p[tag=battle.boss] battle.team
execute as @e[tag=cipher,tag=new] if score @s chiper_team = @p[scores={cipher=200}] battle.team run kill @s
scoreboard players operation @e[tag=cipher,tag=new] cipher = @s cipher
##光らせる奴

##たｇ＝ねｗを消す

##光ってるよ通知をだしたい
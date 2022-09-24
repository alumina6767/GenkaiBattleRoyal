#> battle:item/gun_hammer/hammer/throw
#> ハンマーを投げる

# - 音
playsound entity.firework_rocket.launch master @a ~ ~ ~ 0.5 1.35
# - 召喚
summon armor_stand ~ ~0.5 ~ {Tags:["ThrowHammer","new"],Invisible:1b,Silent:1b}
summon armor_stand ~ ~0.5 ~ {Tags:["HammerModel"],Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:670142}}],Pose:{Head:[0f,0f,0f]}}

# - オーナー
execute store result score @e[type=armor_stand,tag=new,tag=ThrowHammer,sort=nearest,limit=1] gunhammer.owner run data get entity @s UUID[2]

# - モーション設定
function battle:item/gun_hammer/hammer/motion

#> リセット
item replace entity @s weapon.mainhand with air
tag @e[type=armor_stand,tag=new] remove new
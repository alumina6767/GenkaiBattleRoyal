#> battle:show_damage/
# ダメージ表示のインジゲータ
# @internal
# @api

#>
# @internal
    #declare tag battle.damage_indicator ダメージ表示用のアーマースタンド

## 一度看板へ
data merge block 0 -63 0 {Text2:'[{"text":"#","font":"invisible_bg"},{"score":{"name":"now","objective":"_"},"color":"white","font":"damage"},{"text":"#","font":"invisible_bg"}]'}

## インジゲータの設置
execute at @s rotated ~ 0 run summon armor_stand ^ ^1.5 ^-0.5 {Small:1b,Marker:1b,CustomName:'{"text": ""}',CustomNameVisible:1b,Invisible:1b,Tags:["new","battle.damage_indicator"]}

## インジゲータへ代入
data modify entity @e[type=armor_stand,tag=new,tag=battle.damage_indicator,limit=1] CustomName set from block 0 -63 0 Text2

## タグを消す
tag @e[type=armor_stand,tag=new,tag=battle.damage_indicator] remove new

## 消滅させるまでのループ
schedule function battle:show_damage/loop 1t append

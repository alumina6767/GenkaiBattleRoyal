#> battle:item/gonkane/wear
# カチューシャを頭にかぶる
# @internal

#>
# @private
    #declare entity 00000000-0000-0000-0000-0000000003e8 アイテム名を取得するためのエンティティ
    #declare entity 00000006-0000-0007-0000-000000000007 装備をスワップするためのエンティティ
    #declare score_holder is_cursed 束縛の呪いにかかったかどうか

## メッセージ 翻訳されたアイテム名を取得するためにエンティティを呼ぶ
summon item ~ 300 ~ {Item:{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"!"}'}}},UUID:[I;0,0,0,1000]}
data modify entity 00000000-0000-0000-0000-0000000003e8 Item merge from entity @s SelectedItem

scoreboard players set _ _ 0
    ### すでに束縛の呪いにかかった頭装備をしているか
    execute if data entity 00000000-0000-0000-0000-0000000003e8 Item.tag.Enchantments.[{"id":"minecraft:binding_curse"}] run scoreboard players set _ _ -1

    ### アイテムの名前を表示
    execute if score _ _ matches 0 run tellraw @s [{"nbt": "SelectedItem.tag.display.Name", "entity": "@s", "interpret": true,"color":"green"},{"text":" をかぶりました。","color": "gray"}]
    ### 束縛時
    execute if score _ _ matches -1 run tellraw @s {"text":"アイテムを脱ぐことができない！！","color": "red"}

kill 00000000-0000-0000-0000-0000000003e8

## メインハンドと頭装備の置き換え
execute if score _ _ matches 0 run summon armor_stand ~ ~ ~ {UUID: [I; 6, 7, 0, 7],Invisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,CustomName:'{"text":"invisible"}'}
execute if score _ _ matches 0 run item replace entity 00000006-0000-0007-0000-000000000007 weapon.mainhand from entity @s weapon.mainhand
execute if score _ _ matches 0 run item replace entity @s weapon.mainhand from entity @s armor.head
execute if score _ _ matches 0 run item replace entity @s armor.head from entity 00000006-0000-0007-0000-000000000007 weapon.mainhand
execute if score _ _ matches 0 run kill 00000006-0000-0007-0000-000000000007

## アイテムをひろう音を消して、装備の音を鳴らす
execute if score _ _ matches 0 run stopsound @a[distance=..10] * entity.item.pickup
execute if score _ _ matches 0 run playsound item.armor.equip_chain player @a ~ ~ ~ 1.0 1.0 0.0

## 低確率で束縛の呪いを付与する
execute if score _ _ matches 0 run scoreboard players set is_cursed _ 0
execute if score _ _ matches 0 run execute if predicate battle:chance/0.1 run scoreboard players set is_cursed _ 1
execute if score _ _ matches 0 run execute if score is_cursed _ matches 1 run item modify entity @s armor.head battle:item/gonkane/binding_curse
execute if score _ _ matches 0 run execute if score is_cursed _ matches 1 run title @s subtitle "あたまから外れなくなってしまった！！"
execute if score _ _ matches 0 run execute if score is_cursed _ matches 1 run function battle:message/title_reset

## 長押し時間をリセットする
scoreboard players set @s main_hand.hold_time 0

## スコアリセット
execute if score _ _ matches 0 run scoreboard players reset is_cursed _

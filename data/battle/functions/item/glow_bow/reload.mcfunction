#> battle:item/glow_bow/reload
# - リロード完了
# @internal

# ===== アイテム入れ替え
# - 4 -> 5
data modify storage player_item_tuner: condition.if set value {id:"minecraft:bow",tag:{ammo:4}}
data modify storage player_item_tuner: result.merge set value {tag:{ammo:5,max:1b,display:{Name:'[{"text":"発光棘弓","color":"green","italic":false},{"text":" [ 5 ]","color":"gold","italic":false}]'}}}
function #player_item_tuner:merge/inventory
# - 3 -> 4
data modify storage player_item_tuner: condition.if set value {id:"minecraft:bow",tag:{ammo:3}}
data modify storage player_item_tuner: result.merge set value {tag:{ammo:4,max:0b,display:{Name:'[{"text":"発光棘弓","color":"green","italic":false},{"text":" [ 4 ]","color":"gold","italic":false}]'}}}
function #player_item_tuner:merge/inventory
# - 2 -> 3
data modify storage player_item_tuner: condition.if set value {id:"minecraft:bow",tag:{ammo:2}}
data modify storage player_item_tuner: result.merge set value {tag:{ammo:3,max:0b,display:{Name:'[{"text":"発光棘弓","color":"green","italic":false},{"text":" [ 3 ]","color":"gold","italic":false}]'}}}
function #player_item_tuner:merge/inventory
# - 1 -> 2
data modify storage player_item_tuner: condition.if set value {id:"minecraft:bow",tag:{ammo:1}}
data modify storage player_item_tuner: result.merge set value {tag:{ammo:2,max:0b,display:{Name:'[{"text":"発光棘弓","color":"green","italic":false},{"text":" [ 2 ]","color":"gold","italic":false}]'}}}
function #player_item_tuner:merge/inventory
# - 0 -> 1
data modify storage player_item_tuner: condition.if set value {id:"minecraft:bow",tag:{ammo:0}}
data modify storage player_item_tuner: result.merge set value {tag:{ammo:1,max:0b,display:{Name:'[{"text":"発光棘弓","color":"green","italic":false},{"text":" [ 1 ]","color":"gold","italic":false}]'}}}
function #player_item_tuner:merge/inventory

# - scoreboard
scoreboard players set @s glowbow.cooltime 0
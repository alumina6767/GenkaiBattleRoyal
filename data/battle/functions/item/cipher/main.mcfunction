#cipher 基本ここうごかす


##頭装備を変える
item replace entity @s weapon.mainhand from entity @s armor.head
item replace entity @s armor.head with green_stained_glass
scoreboard players set @s cipher 300
##roop
function battle:item/cipher/roop
##
##
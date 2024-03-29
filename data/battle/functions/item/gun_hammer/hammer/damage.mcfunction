#> battle:item/gun_hammer/hammer/damage
#> ダメージを与える(コマンドコピペ)
# @internal

#>
# @private
    #declare score_holder is_same_team

# 同じチームかどうか
execute store result score is_same_team _ if predicate battle:same_team
scoreboard players set is_same_team _ 0

## 同じチームでない時ダメージ処理
# / 与えたいダメージを設定 (小数点2桁まで有効)
execute if score is_same_team _ matches 0 run data modify storage score_damage: Argument set value {Damage:5.00}
# / 対象を実行者にしてfunctionを実行
execute if score is_same_team _ matches 0 as @s at @s run function score_damage:api/attack
# / 盲目を付与する
execute if score is_same_team _ matches 0 as @s at @s run effect give @s blindness 5 0 true



# ダメージソース情報を保存
#execute if score is_same_team _ matches 0 run scoreboard players operation @s battle.hurt_by = @e[type=armor_stand,tag=ThrowHammer,limit=1,sort=nearest] gunhammer.owner
#execute if score is_same_team _ matches 0 run scoreboard players set @s battle.hurt_with 670080

# 銃を撃った人に音を鳴らす
execute as @a store result score @s gunhammer.owner run data get entity @s UUID[2]
execute if score is_same_team _ matches 0 as @a if score @s gunhammer.owner = @e[type=armor_stand,tag=ThrowHammer,limit=1,sort=nearest] gunhammer.owner at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.2 0

# reset
execute if score is_same_team _ matches 0 run kill @e[type=armor_stand,tag=watar_bullet,limit=1,sort=nearest]
scoreboard players reset is_same_team _
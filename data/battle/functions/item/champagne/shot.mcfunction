#> battle:item/champagne/shot
# shot
# @internal

#>
# @within battle:item/champagne/**
    #declare tag champagne.firing シャンパンを発射している人
    #declare tag champagne.firing_low 弱いシャンパンを発射している人
    #declare tag champagne.firing_normal そこそこのシャンパンを発射している人
    #declare tag champagne.firing_high 強いシャンパンを発射している人
    #declare tag champagne.firing_bomb 爆発するシャンパンを発射した人
    #declare tag champagne.bullet.first 最初の処理に使う

## 弾数 発射ラグを生じさせるために少し多い
scoreboard players set @s champagne.bullets 60

## 振り具合いを取得
execute store result score _ _ run data get storage player_data tmp.SelectedItem.tag.Battle.Shake

## 弱
execute if score _ _ matches 5..19 run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
execute if score _ _ matches 5..19 run tag @s add champagne.firing_low
execute if score _ _ matches 5..19 run schedule function battle:item/champagne/shoot1/loop 1t append

## 中
execute if score _ _ matches 20..49 run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
execute if score _ _ matches 20..49 run tag @s add champagne.firing_normal
execute if score _ _ matches 20..49 run schedule function battle:item/champagne/shoot2/loop 1t append

## 強
execute if score _ _ matches 50..55 run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
execute if score _ _ matches 50..55 run tag @s add champagne.firing_high
execute if score _ _ matches 50..55 run schedule function battle:item/champagne/shoot3/loop 1t append

## 爆発
execute if score _ _ matches 56.. run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
#execute if score _ _ matches 56.. run tag @s add champagne.firing_bomb
execute if score _ _ matches 56.. run function battle:item/champagne/bomb/

## シャンパンを消費
item replace entity @s weapon.mainhand with air 1
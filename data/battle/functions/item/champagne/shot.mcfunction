#> battle:item/champagne/shot
# shot
# @internal

#>
# @within battle:item/champagne/**
    #declare tag champagne.firing シャンパンを発射している人
    #declare tag champagne.firing_low 弱いシャンパンを発射している人
    #declare tag champagne.firing_normal そこそこのシャンパンを発射している人
    #declare tag champagne.firing_high 強いシャンパンを発射している人
    #declare tag champagne.bullet.first 最初の処理に使う

## 弾数
scoreboard players set @s champagne.bullets 56

## 振り具合いを取得
execute store result score _ _ run data get storage player_data tmp.SelectedItem.tag.Damage

## 弱
execute if score _ _ matches 70 run tag @s add champagne.firing_low
execute if score _ _ matches 70 run schedule function battle:item/champagne/shoot1/loop 1t append

## 中
execute if score _ _ matches 50 run tag @s add champagne.firing_normal
execute if score _ _ matches 50 run schedule function battle:item/champagne/shoot2/loop 1t append

## 強
execute if score _ _ matches 1 run tag @s add champagne.firing_high
execute if score _ _ matches 1 run schedule function battle:item/champagne/shoot3/loop 1t append

## シャンパンを消費
item replace entity @s weapon.mainhand with air 1
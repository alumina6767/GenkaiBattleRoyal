#> battle:item/gutitubo/tick/gutitubo_hit_slime
# ぐちつぼがスライムにあたって時
# @internal

## 打ち上げる
data merge entity @s {Motion:[0.0,1.0,0.0]}

## パーティクル
particle explosion ~ ~ ~ 0 2 0 5 5 force

## 音
playsound entity.firework_rocket.launch neutral @a ~ ~ ~ 2.0 1.0 0.0

#> battle:item/compass/tick
# ボスの座標に更新する
# @internal

## 更新するスロットを決める
scoreboard players add compass.slot battle 1
scoreboard players operation compass.slot battle %= 10 const

## ストレージリセット
data remove storage tmp tmp
data remove storage tmp lPos

## bossの座標を取得し、更新
execute as @a[tag=battle.boss,team=A] run function battle:item/compass/get_pos
execute if entity @a[team=A,tag=battle.boss,limit=1] as @a[team=A,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=B] run function battle:item/compass/get_pos
execute if entity @a[team=B,tag=battle.boss,limit=1] as @a[team=B,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=C] run function battle:item/compass/get_pos
execute if entity @a[team=C,tag=battle.boss,limit=1] as @a[team=C,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=D] run function battle:item/compass/get_pos
execute if entity @a[team=D,tag=battle.boss,limit=1] as @a[team=D,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=E] run function battle:item/compass/get_pos
execute if entity @a[team=E,tag=battle.boss,limit=1] as @a[team=E,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=F] run function battle:item/compass/get_pos
execute if entity @a[team=F,tag=battle.boss,limit=1] as @a[team=F,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=G] run function battle:item/compass/get_pos
execute if entity @a[team=G,tag=battle.boss,limit=1] as @a[team=G,tag=!battle.boss] run function battle:item/compass/update

## ストレージリセット
data remove storage tmp tmp
data remove storage tmp lPos

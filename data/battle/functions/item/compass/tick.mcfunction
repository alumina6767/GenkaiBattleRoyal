#> battle:item/compass/tick
# ボスの座標に更新する
# @internal

scoreboard players add compass.slot battle 1
scoreboard players operation compass.slot battle %= slot battle

## インベントリのチェックをオフ
scoreboard players set check_inventory battle 0

## ストレージリセット
data remove storage tmp tmp
data remove storage tmp lPos

## bossの座標を取得
execute as @a[tag=battle.boss,team=A,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=A,tag=battle.boss] as @a[team=A,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=B,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=B,tag=battle.boss] as @a[team=B,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=C,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=C,tag=battle.boss] as @a[team=C,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=D,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=D,tag=battle.boss] as @a[team=D,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=E,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=E,tag=battle.boss] as @a[team=E,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=F,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=F,tag=battle.boss] as @a[team=F,tag=!battle.boss] run function battle:item/compass/update

execute as @a[tag=battle.boss,team=G,limit=1] run function battle:item/compass/get_pos
execute if entity @a[team=G,tag=battle.boss] as @a[team=G,tag=!battle.boss] run function battle:item/compass/update

## ストレージリセット
data remove storage tmp tmp
data remove storage tmp lPos

## インベントリのチェックをオン
scoreboard players set check_inventory battle 1


#> battle:item/compass/tick
# ボスの座標に更新する
# @internal

scoreboard players add compass.slot battle 1
scoreboard players operation compass.slot battle %= slot battle

## インベントリのチェックをオフ
scoreboard players set check_inventory battle 0

## bossの座標を取得
data modify storage tmp tmp set from entity @a[tag=battle.boss,team=A,limit=1] Pos
data modify storage tmp lPos.X set from storage tmp tmp[0]
data modify storage tmp lPos.Y set from storage tmp tmp[1]
data modify storage tmp lPos.Z set from storage tmp tmp[2]

execute as @a[team=A,tag=!battle.boss] run function battle:item/compass/update

## インベントリのチェックをオン
scoreboard players set check_inventory battle 1

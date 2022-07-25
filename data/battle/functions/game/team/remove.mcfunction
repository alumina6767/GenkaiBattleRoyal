#> battle:game/team/remove
# チームを解散する
# @internal

## ボスからバリアを消去
tag @a[tag=battle.boss] remove barrier.effect

## ボスタグを消去
tag @a[tag=battle.boss] remove battle.boss

## チームを解散
team remove A
team remove B
team remove C
team remove D
team remove E
team remove F
team remove G

## チームIDを削除
scoreboard players reset * battle.team
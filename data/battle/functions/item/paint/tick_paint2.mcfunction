#> battle:item/paint/tick_paint2
# as paint
# @internal

## パーティクル
particle dust 1 1 1 0.5 ~ ~ ~ 1.75 1.75 1.75 0 40 force

scoreboard players operation _ _ = @s paint.bullet.life
scoreboard players operation _ _ %= 5 const
execute if score _ _ matches 0 if predicate battle:chance/0.8 positioned ~ ~-0.75 ~ rotated 0 90 run function battle:item/paint/particle
execute if score _ _ matches 1 if predicate battle:chance/0.8 positioned ~ ~-0.75 ~ rotated 72 90 run function battle:item/paint/particle
execute if score _ _ matches 2 if predicate battle:chance/0.8 positioned ~ ~-0.75 ~ rotated 144 90 run function battle:item/paint/particle
execute if score _ _ matches 3 if predicate battle:chance/0.8 positioned ~ ~-0.75 ~ rotated 216 90 run function battle:item/paint/particle
execute if score _ _ matches 4 if predicate battle:chance/0.8 positioned ~ ~-0.75 ~ rotated 288 90 run function battle:item/paint/particle

## 探索の回数を指定
scoreboard players set .itt raycast 2

## 衝突の探索
execute if entity @s[tag=paint.bullet.move] run function battle:item/paint/raycast

## 付近のプレイヤーに攻撃判定
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation _ uuid3 = @s uuid3
execute as @a[distance=..7,predicate=!battle:same_team,predicate=battle:can_take_damage] unless entity @s[scores={paint.damage.cool_down=1..}] run function battle:item/paint/hit

## 前進
tp @s[tag=paint.bullet.move] ^ ^ ^0.25

## 座標情報の更新
#data merge entity @s {Air:-1}

## 壁に当たった時 動きを止める
execute if entity @s[tag=paint.bullet.move] if score .itt raycast matches 0 run tag @s remove paint.bullet.move

## 残存時間の減少
scoreboard players remove @s paint.bullet.life 1

## kill
kill @s[scores={paint.bullet.life=..0}]
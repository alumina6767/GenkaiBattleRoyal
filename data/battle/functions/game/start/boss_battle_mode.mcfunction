#> battle:game/start/boss_battle_mode
# ボスバトル時の初期設定
# @internal

## 体力の最大値を設定
execute as @a run attribute @s generic.max_health base set 40

## しばらく無敵化エフェクト
effect clear @a
effect give @a resistance 10 100 false

## ボスバー
bossbar add a "A"
bossbar add b "B"
bossbar add c "C"
bossbar add d "D"
bossbar add e "E"
bossbar add f "F"
bossbar add g "G"

bossbar set a players @a
bossbar set b players @a
bossbar set c players @a
bossbar set d players @a
bossbar set e players @a
bossbar set f players @a
bossbar set g players @a

bossbar set a visible true
bossbar set b visible true
bossbar set c visible true
bossbar set d visible true
bossbar set e visible true
bossbar set f visible true
bossbar set g visible true

## ボスのバリア
function battle:effect/barrier/summon
tag @a[tag=battle.boss] add barrier.effect

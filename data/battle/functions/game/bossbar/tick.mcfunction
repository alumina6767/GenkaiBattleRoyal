#> battle:game/bossbar/tick
# tick
# @internal

## ボスを見た人
scoreboard players set @a[predicate=battle:looking_at/boss/a] hp.a_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/b] hp.b_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/c] hp.c_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/d] hp.d_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/e] hp.e_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/f] hp.f_visible 100
scoreboard players set @a[predicate=battle:looking_at/boss/g] hp.g_visible 100

## 更新
execute as @a[tag=battle.boss] run function battle:game/bossbar/update

## 残存時間が0ならリセット
scoreboard players reset @a[scores={hp.a_visible=0}] hp.a_visible
scoreboard players reset @a[scores={hp.b_visible=0}] hp.b_visible
scoreboard players reset @a[scores={hp.c_visible=0}] hp.c_visible
scoreboard players reset @a[scores={hp.d_visible=0}] hp.d_visible
scoreboard players reset @a[scores={hp.e_visible=0}] hp.e_visible
scoreboard players reset @a[scores={hp.f_visible=0}] hp.f_visible
scoreboard players reset @a[scores={hp.g_visible=0}] hp.g_visible

## 表示
bossbar set a players @a[scores={hp.a_visible=1..}]
bossbar set b players @a[scores={hp.b_visible=1..}]
bossbar set c players @a[scores={hp.c_visible=1..}]
bossbar set d players @a[scores={hp.d_visible=1..}]
bossbar set e players @a[scores={hp.e_visible=1..}]
bossbar set f players @a[scores={hp.f_visible=1..}]
bossbar set g players @a[scores={hp.g_visible=1..}]

## 表示残存時間を減らす
scoreboard players remove @a[scores={hp.a_visible=1..}] hp.a_visible 1
scoreboard players remove @a[scores={hp.b_visible=1..}] hp.b_visible 1
scoreboard players remove @a[scores={hp.c_visible=1..}] hp.c_visible 1
scoreboard players remove @a[scores={hp.d_visible=1..}] hp.d_visible 1
scoreboard players remove @a[scores={hp.e_visible=1..}] hp.e_visible 1
scoreboard players remove @a[scores={hp.f_visible=1..}] hp.f_visible 1
scoreboard players remove @a[scores={hp.g_visible=1..}] hp.g_visible 1
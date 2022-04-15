#> battle:effect/high_knockback/count
# ノックバック後
# @internal

#>
# @private
    #declare tag high_knockbacked.end

## スコアを減らす
scoreboard players remove @a[tag=high_knockbacked] high_knockback 1

## カウントが0
execute as @a[tag=high_knockbacked,scores={high_knockback=..0}] run function battle:effect/high_knockback/clear

## 有効なカウントを持つプレイヤーがいればループ
execute if entity @a[tag=high_knockbacked] run schedule function battle:effect/high_knockback/count 1t append
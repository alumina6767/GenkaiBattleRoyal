#> battle:game/phase3/respawn_tick
# リスポーン待機
# @internal

## 実行者を制限
execute as @a[tag=battle.respawn_cd] run function battle:game/phase3/respawn_tick2

## ループ
execute if entity @a[tag=battle.respawn_cd,limit=1] run schedule function battle:game/phase3/respawn_tick 1t append

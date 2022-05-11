#> battle:game/start
# スタートの処理
# @internal

## 体力の最大値を設定
execute as @a run attribute @s generic.max_health base set 40

## しばらく無敵化エフェクト

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
#> battle:death/a
# Aチームが死んだ時
# @internal

# ボスの最大HPを削る
execute as @a[tag=battle.boss,team=A,limit=1] run function battle:health/reduce_max_health

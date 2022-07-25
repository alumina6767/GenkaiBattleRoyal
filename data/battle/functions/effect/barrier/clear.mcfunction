#> battle:effect/barrier/clear
# バリアエフェクトを消す
# @internal

## バリアの盾の削除
execute if entity @s[tag=battle.boss,scores={battle.team=1}] run kill 00000006-0000-0007-0000-000100000001
execute if entity @s[tag=battle.boss,scores={battle.team=2}] run kill 00000006-0000-0007-0000-000100000002
execute if entity @s[tag=battle.boss,scores={battle.team=3}] run kill 00000006-0000-0007-0000-000100000003
execute if entity @s[tag=battle.boss,scores={battle.team=4}] run kill 00000006-0000-0007-0000-000100000004
execute if entity @s[tag=battle.boss,scores={battle.team=5}] run kill 00000006-0000-0007-0000-000100000005
execute if entity @s[tag=battle.boss,scores={battle.team=6}] run kill 00000006-0000-0007-0000-000100000006
execute if entity @s[tag=battle.boss,scores={battle.team=7}] run kill 00000006-0000-0007-0000-000100000007

## タグの削除
tag @s[tag=battle.boss] remove barrier.effect

#> battle:item/hummer2/use_cd/tick2
# @internal

## クールダウンの減少
scoreboard players remove @s[scores={hummer2.use_cd=1..}] hummer2.use_cd 1

## リロード状況に応じてインジゲータを変更
execute if entity @s[scores={hummer2.use_cd=99}] run function battle:item/hummer2/use_cd/0percent
execute if entity @s[scores={hummer2.use_cd=80}] run function battle:item/hummer2/use_cd/20percent
execute if entity @s[scores={hummer2.use_cd=60}] run function battle:item/hummer2/use_cd/40percent
execute if entity @s[scores={hummer2.use_cd=40}] run function battle:item/hummer2/use_cd/60percent
execute if entity @s[scores={hummer2.use_cd=20}] run function battle:item/hummer2/use_cd/80percent

## スコアのリセット
execute as @s[scores={hummer2.use_cd=..0}] at @s run function battle:item/hummer2/use_cd/end

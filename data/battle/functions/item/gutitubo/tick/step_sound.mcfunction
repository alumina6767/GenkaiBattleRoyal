#> battle:item/gutitubo/tick/step_sound
# 足音
# @internal

execute if predicate battle:chance/0.8 run playsound block.ladder.step neutral @a ~ ~ ~ 2.0 2.0 0.0
execute if predicate battle:chance/0.8 run playsound block.ladder.step neutral @a ~ ~ ~ 2.0 1.5 0.0
execute if predicate battle:chance/0.1 run playsound entity.iron_golem.repair neutral @a ~ ~ ~ 2.0 0.8 0.01
execute if predicate battle:chance/0.5 run playsound entity.ravager.step neutral @a ~ ~ ~ 3.0 1.0 0.0
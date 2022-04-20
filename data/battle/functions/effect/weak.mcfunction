#> battle:effect/weak
# @internal

#> 
# @internal
    #declare tag looking_at_boss

title @s actionbar "今はこのボスにダメージを与えることが出来ない！！"
effect give @s weakness 200000 100 false
tag @s add looking_at_boss
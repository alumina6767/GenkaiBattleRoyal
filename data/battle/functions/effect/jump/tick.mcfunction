#> battle:effect/jump/tick
# スライムジャンプ
# @internal

#>
# @within battle:effect/jump/**
    #declare tag air
    #declare tag hover

tag @e[type=slime,tag=new] remove new

## 空中にいるとき
#execute as @a[nbt={OnGround:0b}] at @s run function battle:effect/jump/air
execute as @a at @s run function battle:effect/jump/air


tag @a[tag=air,nbt={OnGround:1b}] remove air

execute as @e[type=slime,tag=hover,tag=!new] at @s run tp ~ -200 ~
#kill @e[type=slime,tag=hover,tag=!new]
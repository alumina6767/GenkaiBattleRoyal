execute as @e[scores={cipher=1..200}] run scoreboard players remove @s cipher 1
#roop 
##回らせる

#roop
execute as @e[scores={cipher=1..199}] run function battle:item/cipher/do
execute as @e[scores={cipher=0}] run function battle:item/cipher/fin
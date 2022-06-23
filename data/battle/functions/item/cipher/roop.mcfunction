execute as @s[scores={cipher=201..300}] run scoreboard players remove @s cipher 1

##通知用スコア
execute as @s[scores={cipher=200..300}] run scoreboard players operation @s cipher_2 = @s cipher
#tick:30 29 ..　21 20 
execute as @s[scores={cipher=200..300}] run scoreboard players operation @s cipher_2 /= dummy 10
execute as @s[scores={cipher=200..300}] run scoreboard players operation @s cipher_2 %= dummy 5
#title 表示
execute as @s[scores={cipher_2=0}] run title @s actionbar {"text":"Now Loading..."}
execute as @s[scores={cipher_2=1}] run title @s actionbar {"text":"Now Loading.."}
execute as @s[scores={cipher_2=2}] run title @s actionbar {"text":"Now Loading."}
execute as @s[scores={cipher_2=3}] run title @s actionbar {"text":"Now Loading...."}
execute as @s[scores={cipher_2=4}] run title @s actionbar {"text":"Now Loading....."}


##200になったら
execute as @s[scores={cipher=200}] run scoreboard players reset @s cipher_2
execute as @s[scores={cipher=200}] run function battle:item/cipher/summon
execute as @s[scores={cipher=200}] run function battle:item/cipher/do


execute as @s[scores={cipher=201..300}] run function battle:item/cipher/roop
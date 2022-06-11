#> battle:item/glow_bow/reloading
# - 弾薬が4以下の弓を持っているときに実行される
# @internal

scoreboard players add @s glowbow.cooltime 1

# - リロード完了
execute if entity @s[scores={glowbow.cooltime=1500..}] run function battle:item/glow_bow/reload

advancement revoke @s only battle:item/glow_bow/reloading
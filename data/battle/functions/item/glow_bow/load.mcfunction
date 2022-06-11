#> battle:item/glow_bow/load
# load
# @internal
# @load minecraft:load

#> 
# @within battle:item/glow_bow/**
    #declare score_holder glowbow.cooltime
    #declare score_holder glowbow.use
    #declare tag Item.glowbow.arrow 矢に付与されるタグ
    #declare tag Item.glowbow.arrow.have 追加の矢を持っているプレイヤーに対して付与されるタグ

# クールタイム
scoreboard objectives add glowbow.cooltime dummy [{"text": "発光棘弓クールタイム"}]
scoreboard objectives add glowbow.use used:bow [{"text": "弓を使用する"}]


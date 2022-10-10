#> battle:item/glow_bow/reload
#> リロード
# @internal
# @load minecraft:load

#> 
# @within battle:item/glow_bow/**
## scoreの作成
# / 弓
scoreboard objectives add glowbow.shot used:bow "発射検知"
scoreboard objectives add glowbow.reload dummy "矢の補充(10500で補充完了)"
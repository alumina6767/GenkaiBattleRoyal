#> battle:item/kasugai/load
#> reload
# @internal
# @load minecraft:load

#> 
# @within battle:item/kasugai/**

## scoreの作成
# / 人参棒のクリック
scoreboard objectives add kasugai.use used:carrot_on_a_stick "某市を使う"
# / アイテム使用中
scoreboard objectives add kasugai.time dummy [{"text": "某市使用中"}]
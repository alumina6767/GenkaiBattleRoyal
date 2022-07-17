#> battle:item/gun_hammer/load
#> リロード
# @internal
# @load minecraft:load

#> 
# @within battle:item/gun_hammer/**
    #declare tag weapon.change 武器の変更を実行する
    #declare tag watar_bullet 銃の弾
    #declare tag ThrowHammer ピコハン

## scoreの作成
# / ハンマー
scoreboard objectives add gunhammer.throw used:carrot_on_a_stick "斧を投げる"
# / 銃
scoreboard objectives add gunhammer.rate dummy "銃レート"
scoreboard objectives add gunhammer.bullet dummy "水鉄砲の弾"
scoreboard objectives add gunhammer.owner dummy "実行者のUUIDを保存する"

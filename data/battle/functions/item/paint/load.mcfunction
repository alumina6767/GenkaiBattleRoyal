#> battle:item/paint/load
# load
# @internal
# @within minecraft:load

## クールダウン
scoreboard objectives add cool_down.paint dummy

## 残存時間
scoreboard objectives add paint.bullet.life dummy

## ダメージのクールダウン
scoreboard objectives add paint.damage.cool_down dummy
#> battle:item/gutitubo/tick/gutitubo_end
# アイテムの終了
# @internal

## パーティクル
particle large_smoke ~ ~1 ~ 0 0 0 2 100 force

## 音
playsound entity.generic.explode neutral @a ~ ~ ~ 1.0 2.0 0.0

## 消す
kill @s
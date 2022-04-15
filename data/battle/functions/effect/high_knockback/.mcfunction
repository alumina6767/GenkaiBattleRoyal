#> battle:effect/high_knockback/
# 高いノックバック
# @internal


## 浮遊エフェクト
effect give @s levitation 1 120 true

## 進捗をリセット
advancement revoke @s only battle:high_knockback

## 遅延用のスコアをセット
scoreboard players set @s high_knockback 10
tag @s add high_knockbacked

## エフェクトの効果時間分ループ
schedule function battle:effect/high_knockback/count 1t append


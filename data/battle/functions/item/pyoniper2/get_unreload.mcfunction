#> battle:item/pyoniper2/get_unreload
# 手渡された時 リロード時間の計算を行う
# @internal

## リロードスコアを設定
scoreboard players set @s pyoniper2.reload 100

## リロード処理の開始
schedule function battle:item/pyoniper2/reload/tick 1t append

## 進捗をリセット
advancement revoke @s only battle:pyoniper2/get_unreload

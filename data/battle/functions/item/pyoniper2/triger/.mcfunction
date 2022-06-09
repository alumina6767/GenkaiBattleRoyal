#> battle:item/pyoniper2/triger/
# 使用判定
# @internal

#>
# @internal
    #declare tag pyoniper2.bullet pyoniper2の弾丸

## リロード中の時 メッセージを表示
execute if entity @s[scores={pyoniper2.reload=0..}] anchored eyes run function battle:item/pyoniper2/shoot/unreloaded

##リロード中でない時 発射
execute unless entity @s[scores={pyoniper2.reload=0..}] run function battle:item/pyoniper2/shoot/

## 進捗をリセット
advancement revoke @s only battle:pyoniper2/triger
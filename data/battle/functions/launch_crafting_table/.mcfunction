#> battle:launch_crafting_table/
# クラフトテーブルを飛ばす
# @internal

#> 
# @within battle:launch_crafting_table/**
    #declare score_holder flag

## スコア
scoreboard players set _ _ 0
scoreboard players set flag tmp 0

## ループ
execute anchored eyes run function battle:launch_crafting_table/loop

## 念のため周囲の作業台を消す fill範囲がワールド外だとコマンドに失敗する
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace crafting_table

## 進捗をリセット
advancement revoke @s only battle:launch_crafting_table
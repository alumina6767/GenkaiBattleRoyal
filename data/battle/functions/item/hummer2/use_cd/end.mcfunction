#> battle:item/hummer2/use_cd/end
# クールダウンの終了時
# @internal

## リロード完了音
function battle:sound/reload

## 表示をクールダウン終了に
function battle:item/hummer2/use_cd/100percent

## スコアのリセット
scoreboard players reset @s hummer2.use_cd

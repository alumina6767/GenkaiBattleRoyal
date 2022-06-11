#> battle:message/unreload
# リロード中であることを表示 anchoer eye
# @internal

## サブタイトルに表示
function battle:message/title_reset
title @s subtitle "リロード中"

## 音
playsound block.fire.extinguish player @s ~ ~ ~ 1 1 0

## パーティクル
particle smoke ^ ^ ^1 0.4 0.4 0.4 0.2 20 force @s
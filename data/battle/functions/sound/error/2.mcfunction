#> battle:sound/error/2
# エラー時のSE
# @internal

## 音
execute as @a[tag=se.error.2] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.5 1

## タグを外す
tag @a[tag=se.error.2] remove se.error.2

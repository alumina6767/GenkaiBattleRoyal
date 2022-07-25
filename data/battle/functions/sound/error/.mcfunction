#> battle:sound/error/
# エラー時のSE
# @internal

#> 
# @within battle:sound/error/**
    #declare tag se.error.2

## 音
execute at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.8 1

## タグ付け
tag @s add se.error.2

## 遅延
schedule function battle:sound/error/2 4t append


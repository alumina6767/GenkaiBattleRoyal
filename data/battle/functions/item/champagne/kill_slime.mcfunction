#> battle:item/champagne/kill_slime
# スライムを消す
# @internal

## 召喚主がスニークしていないスライムは削除
execute as @e[type=slime,tag=champagne] at @s run function battle:item/champagne/kill_slime2

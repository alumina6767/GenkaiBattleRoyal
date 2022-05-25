#> battle:game/bossbar/update
# tick
# @internal

#>
# @within battle:game/bossbar/**
    #declare score_holder max_health
    #declare score_holder health

## ストレージに入れる
data modify storage player_data tmp set from entity @s

## ボスの体力、最大値を取得
execute store result score max_health _ run attribute @s minecraft:generic.max_health get
scoreboard players operation health _ = @s battle.health

## ボスバーの表示を更新
data modify storage tmp tmp set value []

## ボス名の追加
data modify storage tmp tmp append value '{"selector":"@s"}'

## 見やすいように空白
data modify storage tmp tmp append value '{"text":" "}'

## 最大値表示用に計算
scoreboard players operation max_health _ -= health _

## 今のHP
execute if score health _ matches 2.. run function battle:game/bossbar/loop

## 端数のHP
execute if score health _ matches 1.. run data modify storage tmp tmp append value '{"text":"1","font":"heart"}'

## 最大HP
execute if score max_health _ matches 2.. run function battle:game/bossbar/loop2

## 自チームのボスバーを更新
execute if entity @s[team=A] run bossbar set a name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=B] run bossbar set b name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=C] run bossbar set c name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=D] run bossbar set d name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=E] run bossbar set e name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=F] run bossbar set f name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}
execute if entity @s[team=G] run bossbar set g name {"nbt":"tmp[]","storage":"tmp","interpret": true, "separator": ""}

## スコアホルダーをリセット
scoreboard players reset max_health _
scoreboard players reset health _

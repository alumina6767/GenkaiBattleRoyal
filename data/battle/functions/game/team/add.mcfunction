#> battle:game/team/add
# チーム数を増やす
# @internal

#> 
# @private
    #declare score_holder is_max チーム数が最大数かどうか

scoreboard players set is_max _ 0

#region 減らせないとき
## メッセージ
execute store success score is_max _ if score チーム数 battle.setting matches 7.. run tellraw @s {"text":"これ以上チーム数を増やすことはできません。","color": "red"}

## 音
execute if score is_max _ matches 1 run execute as @a run function battle:sound/error/
#endregion

#region 減らせたとき
## チームをリセット
execute if score is_max _ matches 0 run function battle:game/team/remove

## チーム数を減らす
execute if score is_max _ matches 0 run scoreboard players add チーム数 battle.setting 1

## メッセージ
execute if score is_max _ matches 0 run tellraw @a [{"text":"チーム数を増やしました。現在のチーム数: ","color": "gray"},{"color": "gold","score":{"name": "チーム数","objective": "battle.setting"}}]

## 音
execute if score is_max _ matches 0 as @a run function battle:sound/success/
#endregion

## スコアホルダーのリセット
scoreboard players reset is_max

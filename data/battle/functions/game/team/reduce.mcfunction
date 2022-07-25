#> battle:game/team/reduce
# チーム数を減らす
# @internal

#> 
# @private
    #declare score_holder is_min チーム数を減らせるかどうか

scoreboard players set is_min _ 0

#region 減らせないとき
## メッセージ
execute store success score is_min _ if score チーム数 battle.setting matches ..2 run tellraw @a {"text":"これ以上チーム数を減らすことはできません。","color": "red"}

## 音
execute if score is_min _ matches 1 run function battle:sound/error/
#endregion

#region 減らせるとき
## チームをリセット
execute if score is_min _ matches 0 run function battle:game/team/remove

## チーム数を減らせたとき
execute if score is_min _ matches 0 run scoreboard players remove チーム数 battle.setting 1

## メッセージ
execute if score is_min _ matches 0 run tellraw @a [{"text":"チーム数を減らしました。現在のチーム数: ","color": "gray"},{"color": "gold","score":{"name": "チーム数","objective": "battle.setting"}}]

## 音
execute if score is_min _ matches 0 as @a run function battle:sound/success/
#endregion

## スコアホルダーのリセット
scoreboard players reset is_min
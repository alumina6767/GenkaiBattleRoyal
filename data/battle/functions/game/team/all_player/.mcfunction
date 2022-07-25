#> battle:game/team/all_player/
# プレイヤーをチームに振り分ける
# @internal

## ボスの人数が、チームの人数分いるかのチェック
execute store result score _ _ run give @a[tag=battle.boss] air 1

## チーム数がボスよりも多かった場合
execute if score _ _ < チーム数 battle.setting run tellraw @s {"text": "ボスの数が不足しています！","color": "red"}
execute if score _ _ < チーム数 battle.setting run function battle:sound/error/

## チーム数がボスよりも少なかった場合
execute if score _ _ > チーム数 battle.setting run tellraw @s {"text": "ボスの数が多すぎます！","color": "red"}
execute if score _ _ > チーム数 battle.setting run function battle:sound/error/

## チーム数とボスが同数のとき
execute if score _ _ = チーム数 battle.setting run function battle:game/team/all_player/2 
execute if score _ _ = チーム数 battle.setting run function battle:sound/success/
#> battle:game/phase4/get_kill_rank_loop
# ランキングを取得
# @internal

#>
# @private
    #declare tag now_ranker 現在のランクのプレイヤー
    #declare tag now_ranker.target 現在処理するプレイヤー

## 現在キルポイントのプレイヤーにタグ付け
execute unless entity @a[tag=now_ranker,limit=1] as @a if score @s battle.kill_point = kill_point _ run tag @s add now_ranker

## 一人だけタグを消す
tag @a[tag=now_ranker,tag=!now_ranker.target,limit=1] add now_ranker.target
execute if entity @a[tag=now_ranker.target,limit=1] run tellraw @a [" ",{"score":{"objective": "_","name": "rank"}},{"text": "位"}," ",{"selector":"@a[tag=now_ranker.target,tag=now_ranker]"}," ",{"score":{"objective": "_","name": "kill_point"}},{"text": " Point"}]
tag @a[tag=now_ranker.target,tag=now_ranker] remove now_ranker

## ランクを進める
scoreboard players set _ _ 0
execute unless entity @a[tag=now_ranker,limit=1] store result score _ _ run tag @a[tag=now_ranker.target] remove now_ranker.target
scoreboard players operation rank _ += _ _
execute unless entity @a[tag=now_ranker,limit=1] run scoreboard players remove kill_point _ 1

## ループ
execute if score kill_point _ matches 0.. run function battle:game/phase4/get_kill_rank_loop

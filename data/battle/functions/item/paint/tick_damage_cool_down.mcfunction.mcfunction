#> battle:item/paint/tick_damage_cool_down.mcfunction
# ダメージ判定のクールダウン減少
# @internal

## クールダウン減少
scoreboard players remove @a[scores={paint.damage.cool_down=1..}] paint.damage.cool_down 1

## スコアをリセット
scoreboard players reset @a[scores={paint.damage.cool_down=0}] paint.damage.cool_down

## ループ処理
execute if entity @a[scores={paint.damage.cool_down=1..},limit=1] run schedule function battle:item/paint/tick_damage_cool_down.mcfunction 1t append

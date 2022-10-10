#> battle:item/glow_bow/shortage
#> 残弾不足

#> actionbarにメッセージ
title @s actionbar [{"text": "発光棘弓の矢が不足しています","color": "red","bold": true}]

#> 音の削除
stopsound @a * entity.arrow.shoot
playsound block.note_block.bass master @s ~ ~ ~ 1 0
playsound block.fire.extinguish master @s ~ ~ ~ 0.3 1

#> 矢の削除
kill @e[type=arrow,limit=1,sort=nearest]

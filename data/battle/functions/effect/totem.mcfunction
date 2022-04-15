#> battle:effect/totem
# トーテムと同等の効果を付与する
# @internal

## エフェクトのクリア
#effect clear @s
say hoo

effect give @s instant_health 4 10 false

## オフハンドにトーテムを持たせる
item replace entity @s weapon.offhand with totem_of_undying 1

advancement revoke @s only battle:kimotara_armor
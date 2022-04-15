#> battle:item/jump_pad/
# ジャンプパッド
# @internal

## メインハンドとオフハンドをスワップ
function share:swap_main_off

## ジャンプパッド
execute rotated ~ 0 positioned ^ ^ ^1 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^ ^ ^2 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^ ^ ^3 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^1 ^ ^1 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^1 ^ ^2 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^1 ^ ^3 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^-1 ^ ^1 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^-1 ^ ^2 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}
execute rotated ~ 0 positioned ^-1 ^ ^3 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:1,DropItem:false}

## 音
playsound block.metal_pressure_plate.click_on player @a ~ ~ ~ 1 1 0

## 進捗をリセット
advancement revoke @s only battle:item/jump_pad
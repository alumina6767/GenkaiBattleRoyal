#> battle:item/glow_bow/clear
# - 追加矢を入手でクリア（チェスト対策）
# @internal

execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{glow_bow:1b}}}] run clear @s arrow{glow_bow_arrow:1b}
advancement revoke @s only battle:item/glow_bow/get_arrow

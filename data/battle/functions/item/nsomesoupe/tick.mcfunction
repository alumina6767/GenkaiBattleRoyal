#検知用
execute as @a[nbt={SelectedItem:{tag:{Nsomesoupe:[]}}},scores={Rod=1..,nsomesoupe=..0}] at @s run function battle:item/nsomesoupe/summon
#クールダウン
execute as @a[nbt={SelectedItem:{tag:{Nsomesoupe:["added"]}}},scores={Rod=1..,nsomesoupe=1..}] at @s run function battle:item/nsomesoupe/cooldown

#クールダウンが終わったらKBを削除

#上の1tickの時にアイテムを持ってなかった場合KBが削除されないのでこれで持った時に消す
execute as @a[nbt={SelectedItem:{tag:{Nsomesoupe:[added]}}},scores={nsomesoupe=..0}] at @s run item modify entity @s weapon.mainhand battle:nsomesoupe_4


scoreboard players remove @a[scores={nsomesoupe=1..}] nsomesoupe 1 
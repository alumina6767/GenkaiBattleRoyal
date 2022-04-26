#> battle:item/bits/if
# @within share:inventory_changed

#>
# @within battle:item/bits/**
    #declare score_holder count

execute store result score _ _ run data get storage tmp Inventory.[{Slot:-106b}].tag.bits
execute store result score count tmp run data get storage tmp Inventory.[{Slot:-106b}].Count

execute if score _ _ matches 100 if score count tmp matches 10.. run function battle:item/bits/100to1000/
execute if score _ _ matches 1000 if score count tmp matches 5.. run function battle:item/bits/1000to5000/
execute if score _ _ matches 5000 if score count tmp matches 10.. run function battle:item/bits/5000to10000/

scoreboard players reset count tmp
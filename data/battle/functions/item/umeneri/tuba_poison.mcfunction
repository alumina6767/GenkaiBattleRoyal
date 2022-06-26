#> battle:item/umeneri/tuba_poison
# @internal

#>
# @private
    #declare tag tarako.tuba.hit

## ダメージを与えたツバにタグ付け
tag @e[type=llama_spit,sort=nearest,limit=1] add tarako.tuba.hit

## ダメージデータを保存
scoreboard players operation @s battle.hurt_by = @e[type=llama_spit,tag=tarako.tuba.hit] uuid3
scoreboard players set @s battle.hurt_with 670011

effect give @s poison 6 0 false

## タグを消去
tag @e[type=llama_spit,tag=tarako.tuba.hit] remove tarako.tuba.hit

## 進捗のリセット
advancement revoke @s only battle:item/umeneri/tuba

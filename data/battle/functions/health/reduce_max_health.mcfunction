#> battle:health/reduce_max_health
# 最大HPを設定する
# @internal

#> 
# @private
    #declare score_holder max_health.base

# 現在の最大HPを取得
execute store result score max_health.base tmp run attribute @s generic.max_health base get 1

# HPを1減らす
execute if score max_health.base tmp matches 11 run attribute @s generic.max_health base set 10.0
execute if score max_health.base tmp matches 12 run attribute @s generic.max_health base set 11.0
execute if score max_health.base tmp matches 13 run attribute @s generic.max_health base set 12.0
execute if score max_health.base tmp matches 14 run attribute @s generic.max_health base set 13.0
execute if score max_health.base tmp matches 15 run attribute @s generic.max_health base set 14.0
execute if score max_health.base tmp matches 16 run attribute @s generic.max_health base set 15.0
execute if score max_health.base tmp matches 17 run attribute @s generic.max_health base set 16.0
execute if score max_health.base tmp matches 18 run attribute @s generic.max_health base set 17.0
execute if score max_health.base tmp matches 19 run attribute @s generic.max_health base set 18.0
execute if score max_health.base tmp matches 20 run attribute @s generic.max_health base set 19.0
execute if score max_health.base tmp matches 21 run attribute @s generic.max_health base set 20.0
execute if score max_health.base tmp matches 22 run attribute @s generic.max_health base set 21.0
execute if score max_health.base tmp matches 23 run attribute @s generic.max_health base set 22.0
execute if score max_health.base tmp matches 24 run attribute @s generic.max_health base set 23.0
execute if score max_health.base tmp matches 25 run attribute @s generic.max_health base set 24.0
execute if score max_health.base tmp matches 26 run attribute @s generic.max_health base set 25.0
execute if score max_health.base tmp matches 27 run attribute @s generic.max_health base set 26.0
execute if score max_health.base tmp matches 28 run attribute @s generic.max_health base set 27.0
execute if score max_health.base tmp matches 29 run attribute @s generic.max_health base set 28.0
execute if score max_health.base tmp matches 30 run attribute @s generic.max_health base set 29.0
execute if score max_health.base tmp matches 31 run attribute @s generic.max_health base set 30.0
execute if score max_health.base tmp matches 32 run attribute @s generic.max_health base set 31.0
execute if score max_health.base tmp matches 33 run attribute @s generic.max_health base set 32.0
execute if score max_health.base tmp matches 34 run attribute @s generic.max_health base set 33.0
execute if score max_health.base tmp matches 35 run attribute @s generic.max_health base set 34.0
execute if score max_health.base tmp matches 36 run attribute @s generic.max_health base set 35.0
execute if score max_health.base tmp matches 37 run attribute @s generic.max_health base set 36.0
execute if score max_health.base tmp matches 38 run attribute @s generic.max_health base set 37.0
execute if score max_health.base tmp matches 39 run attribute @s generic.max_health base set 38.0
execute if score max_health.base tmp matches 40 run attribute @s generic.max_health base set 39.0

# スコアに代入
scoreboard players operation @s max_health = max_health.base tmp
scoreboard players remove @s max_health 1
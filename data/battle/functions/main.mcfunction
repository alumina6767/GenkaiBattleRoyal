#> battle:main
# 毎ティック実行
# @public

# 死亡したプレイヤーを監視
#execute as @a[scores={battle.death=1..}] run function battle:death/

#execute as @a[scores={battle.health=..0}] run effect give @s instant_health 4 100 false
#execute as @a[scores={battle.health=..0}] run tp @s -68.79 -60.00 -35.33 93.06 1.44

#execute as @a[nbt={Health:0.0f}] run say boka-nn
#execute as @a[scores={death=1}] run say hoo

## 死亡時に復活
#execute as @a[scores={death=1..}] at @s run function battle:revival

## スポーンポイントを随時更新
#execute as alumina6767 at @s run spawnpoint @s ~ ~ ~ ~

#execute as @a[nbt={OnGround:0b}, tag=!air] at @s run summon area_effect_cloud ~ ~2 ~ {Duration:40,Effects:[{Id:25b,Amplifier:80b,Duration:40}],Radius:3}


## スライムジャンプ
function battle:effect/jump_small_2/tick
#function battle:effect/jump/tick
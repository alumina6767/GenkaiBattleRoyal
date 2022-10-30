#> battle:death/
# 死亡時
# @internal
# @api

#> 
# @private
    #declare tag battle.killer 殺害したプレイヤー

## チームIDを検索用に保存
scoreboard players operation _ battle.team = @s battle.team

## 同じチームのボスの最大体力を削る
execute as @a[tag=battle.boss] if score @s battle.team = _ battle.team run function battle:death/effect2boss

## 死亡フラグを戻す
scoreboard players reset @s battle.death

## スコアリセット
scoreboard players reset _ battle.team

#region デスログ

## 保持されているダメージソースを呼び出し
scoreboard players operation _ battle.hurt_by = @s battle.hurt_by

## とどめを刺したプレイヤーを特定
execute as @a if score @s uuid3 = _ battle.hurt_by run tag @s add battle.killer

## 自殺以外のとどめを刺したプレイヤーにスコアを加算
execute unless entity @s[tag=battle.killer] run scoreboard players add @a[tag=battle.killer,limit=1] battle.kill_point 1

## 死因によって場合分け

## 殴り
execute if score @s battle.hurt_with matches 1 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"に殴り倒された","color": "gray"}]

## ビッツ
execute if score @s battle.hurt_with matches 670000 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のちょっとした投げ銭で爆破された","color": "gray"}]
execute if score @s battle.hurt_with matches 670001 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のそこそこの投げ銭で爆破された","color": "gray"}]
execute if score @s battle.hurt_with matches 670002 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のけっこうな投げ銭で爆破された","color": "gray"}]
execute if score @s battle.hurt_with matches 670003 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のやばい投げ銭で爆破された","color": "gray"}]
execute if score @s battle.hurt_with matches 670004 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のとんでもない投げ銭で爆破された","color": "gray"}]

## たらこぺろぺろ
execute if score @s battle.hurt_with matches 670011 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の放ったたらこのつばでねちょねちょになった","color": "gray"}]
execute if score @s battle.hurt_with matches 670012 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の放ったたらこにペロペロされすぎた","color": "gray"}]

### 炎上と凍結
execute if score @s battle.hurt_with matches 670031 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の炎上と凍結で踏み潰された","color": "gray"}]
execute if score @s battle.hurt_with matches 670032 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の炎上と凍結で燃え尽きた","color": "gray"}]
execute if score @s battle.hurt_with matches 670033 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の炎上と凍結でカチコチになってしまった","color": "gray"}]
execute if score @s battle.hurt_with matches 670034 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の炎上と凍結で蹴り飛ばされた","color": "gray"}]

### シャンパンガトリング
execute if score @s battle.hurt_with matches 670040 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のシャンパンガトリングでハチの巣にされた","color": "gray"}]
execute if score @s battle.hurt_with matches 670044 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の暴発に巻き込まれた","color": "gray"}]

### ピョナイパー
execute if score @s battle.hurt_with matches 670060 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のピョナイパーで射抜かれた","color": "gray"}]
execute if score @s battle.hurt_with matches 670080 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"のピョナイパー２で射抜かれた","color": "gray"}]

### 未だ無名の筆
execute if score @s battle.hurt_with matches 670110 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の無名の筆に感銘を受けすぎた","color": "gray"}]

### 黒酢つぶつぶ２
execute if score @s battle.hurt_with matches 670130 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=battle.killer]"},{"text":"の黒酢つぶつぶ２にぶちぶちにされた","color": "gray"}]

## タグの消去
tag @a[tag=battle.killer] remove battle.killer

## スコアのリセット
scoreboard players reset @s battle.hurt_by
scoreboard players reset @s battle.hurt_with

#endregion

## リスポーン
execute if score #game.mode battle.setting matches 2 run function battle:game/phase3/respawn

## 進捗リセット
advancement revoke @s only battle:died
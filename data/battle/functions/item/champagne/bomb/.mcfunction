#> battle:item/champagne/bomb/
# 爆発するシャンパンガトリング todo デスログどっちかにする
# @internal

## クリーパーの召喚
summon creeper ~ 200 ~ {Fire:1,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Fuse:2,ignited:1b,Tags:["new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1,ShowParticles:0b}]}

## 透明化エフェクトがちゃんと掛かるようにtp
tp @e[type=creeper,tag=new] ~ ~ ~

#region クリーパーに名前をつける
## 召喚主にタグ付け
tag @s add target 

## 召喚主の名前の保存
data modify block 0 -63 0 Text1 set value '{"selector":"@a[tag=target]"}'

## クリーパーに召喚主の名前を付ける
data modify entity @e[type=creeper,tag=new,dx=0,limit=1] CustomName set from block 0 -63 0 Text1

##タグを消去
tag @s add target
#endregion

#region デスログ
scoreboard players operation @a[distance=..10] battle.hurt_by = @s uuid3
scoreboard players set @a[distance=..10] battle.hurt_with 670044
#endregion

## タグの消去
tag @e[type=creeper,tag=new,dx=0] remove new

## 残弾リセット
scoreboard players reset @s champagne.bullets

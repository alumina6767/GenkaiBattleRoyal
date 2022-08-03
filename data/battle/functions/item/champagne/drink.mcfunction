#> battle:item/champagne/drink
# シャンパンを飲んだ時
# @internal

#> 
# @within battle:item/champagne/**
    #declare tag champagne.drunk

## 吐き気の効果
effect give @s nausea 10 2 false

## 回復の効果
effect give @s regeneration 2 5 false

## 飲み切ったタグを追加
tag @s add champagne.drunk

## 1tick後に空の瓶を消す
schedule function battle:item/champagne/drink2 1t append

## 進捗リセット
advancement revoke @s only battle:item/champagne/drink
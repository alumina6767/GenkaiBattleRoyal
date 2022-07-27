#> battle:item/gonkane/eat_body
# 胴体を食べたとき
# @within battle:item/gonkane/eat_body

## 70%でベイクドポテト、20%で発酵した蜘蛛の目、10%で金リンゴの効果
## 100% 22% 10%での上書き

#> 
# @private
    #declare score_holder effect 食べた後の効果

## タイトルのリセット
function battle:message/title_reset

## ベイクドポテト = 0
scoreboard players set effect _ 0

## 発酵した蜘蛛の目 = 1
execute if predicate battle:chance/0.2 run scoreboard players set effect _ 1

## 金リンゴ = 2
execute if predicate battle:chance/0.1 run scoreboard players set effect _ 2


#region ベイクドポテト
execute if score effect _ matches 0 run title @s subtitle "おなかいっぱいだぁ！"
execute if score effect _ matches 0 run title @s title ""
execute if score effect _ matches 0 run effect give @s saturation 3 1 true
#endregion

#region 発酵した蜘蛛の目
execute if score effect _ matches 1 run title @s subtitle "おなかいたーい！！"
execute if score effect _ matches 1 run title @s title ""
execute if score effect _ matches 1 run effect give @s saturation 1 1 true
execute if score effect _ matches 1 run effect give @s poison 5 1 false
#endregion

#region 金リンゴ
execute if score effect _ matches 2 run title @s subtitle "おー...うまいじゃん！！"
execute if score effect _ matches 2 run title @s title ""
execute if score effect _ matches 2 run effect give @s saturation 2 1 true
execute if score effect _ matches 2 run effect give @s absorption 120 1 false
execute if score effect _ matches 2 run effect give @s regeneration 5 2 false
#endregion

## 進捗リセット
advancement revoke @s only battle:item/gonkane/eat_body
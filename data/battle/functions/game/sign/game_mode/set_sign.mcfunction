#> battle:game/sign/game_mode/set_sign
# 看板の設定
# @private

data merge entity @e[type=item_frame,distance=..2,sort=nearest,limit=1] {Tags:["battle.sign.game_mode"],Invulnerable:1b,Invisible:1b}
#> battle:game/sign/time_limit/set_sign
# 看板の設定
# @private

data merge entity @e[type=item_frame,distance=..2,sort=nearest,limit=1] {Tags:["battle.sign.time_limit"],Invulnerable:1b,Invisible:1b}
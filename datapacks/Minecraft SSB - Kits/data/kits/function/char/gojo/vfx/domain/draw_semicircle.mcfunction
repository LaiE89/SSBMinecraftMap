## Draws a Semi-Circle
$tp @s ~ ~ ~ ~ ~$(inaccuracyRot)
$execute if block ^ ^ ^$(circleRadius) #kits:passable run particle $(particle) ^ ^ ^$(circleRadius)
execute unless entity @s[x_rotation=90] at @s run function kits:char/gojo/vfx/domain/draw_semicircle with storage kits:vfx domain
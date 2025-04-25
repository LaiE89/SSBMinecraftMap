## Draws a Sphere
function kits:char/ekko/expanding_sphere/draw_circle with storage kits:vfx ExpandingSphere
$tp @s ~ ~ ~ ~ ~$(Density)
execute unless entity @s[x_rotation=90] at @s run function kits:char/ekko/expanding_sphere/draw_sphere with storage kits:vfx ExpandingSphere
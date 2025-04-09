## Draws a Sphere
function kits:dragonborn/expanding_sphere/draw_circle with storage minecraft:vfx ExpandingSphere
$tp @s ~ ~ ~ ~ ~$(Density)
execute unless entity @s[x_rotation=90] at @s run function kits:dragonborn/expanding_sphere/draw_sphere with storage minecraft:vfx ExpandingSphere
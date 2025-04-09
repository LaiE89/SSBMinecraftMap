## Draws a Sphere
function kits:chosenundead/miracles/wrath_of_the_gods/draw_circle with storage minecraft:vfx ExpandingSphere
$tp @s ~ ~ ~ ~ ~$(Density)
execute unless entity @s[x_rotation=90] at @s run function kits:chosenundead/miracles/wrath_of_the_gods/draw_sphere with storage minecraft:vfx ExpandingSphere
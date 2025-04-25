## Draws a Sphere
function kits:char/chosenundead/miracles/wrath_of_the_gods/draw_circle with storage kits:vfx ExpandingSphere
$tp @s ~ ~ ~ ~ ~$(Density)
execute unless entity @s[x_rotation=90] at @s run function kits:char/chosenundead/miracles/wrath_of_the_gods/draw_sphere with storage kits:vfx ExpandingSphere
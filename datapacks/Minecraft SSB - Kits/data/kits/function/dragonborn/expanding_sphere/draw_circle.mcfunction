# dust example alternative: $particle flash ^ ^ ^$(Step) 0 0 0 0 1
## Draws a Circle
$tp @s ~ ~ ~ ~$(Density) ~
$particle dust{color:[$(R),$(G),$(B)],scale:$(Size)} ^ ^ ^$(Step) 0 0 0 0 1
$execute unless entity @s[y_rotation=0..$(Density1Less)] at @s run function kits:dragonborn/expanding_sphere/draw_circle with storage minecraft:vfx ExpandingSphere

# Identifies the Symbol Drawn
function kits:char/siris/blade/magic/identify/reset
execute unless score @s kits.timer matches -1 run function kits:char/siris/blade/magic/identify/shield
execute unless score @s kits.timer matches -1 run function kits:char/siris/blade/magic/identify/ice
execute unless score @s kits.timer matches -1 run function kits:char/siris/blade/magic/identify/holy
execute unless score @s kits.timer matches -1 run scoreboard players set @s kits.ability2CD 198
# kits.x = horizontal
# kits.y = vertical
# kits.dx = changes in x
# kits.dy = changes in y

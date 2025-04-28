# Darkfire Effect
scoreboard players remove @s kits.specific.sirisDarkfire 1
scoreboard players add @s kits.specific.sirisDarkfire2 1
execute if score @s kits.specific.sirisDarkfire2 matches 20.. run function kits:char/siris/shield/gem/dot
particle squid_ink ~ ~1 ~ 0 0 0 0.1 1 force

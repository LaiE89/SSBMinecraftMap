scoreboard players add @s kits.timer 1

execute if block ^ ^1 ^-1 #kits:passable run tp @s[scores={kits.timer=..4}] ^ ^ ^-1
execute if block ^ ^1 ^-0.1 #kits:passable run tp @s[scores={kits.timer=5..}] ^ ^ ^-0.1

execute if score @s kits.timer matches 10.. run function kits:char/sekiro/prosthetic/firecrackerexplosion

particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 1
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 5
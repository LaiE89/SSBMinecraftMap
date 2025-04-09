execute if entity @p[tag=Doomslayer,distance=..4] run function kits:doomslayer/shotguncloserange
execute if entity @p[tag=Doomslayer,distance=4.1..10] run function kits:doomslayer/shotgunfarrange
execute if entity @p[tag=Doomslayer,distance=10.1..] run damage @s 0.25 bypass:player_attack_no_kb by @p[tag=Doomslayer]

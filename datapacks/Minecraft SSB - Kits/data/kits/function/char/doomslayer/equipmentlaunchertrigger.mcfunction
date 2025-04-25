execute store result score @p[tag=Doomslayer] kits.timer3 run random value 1..2
execute as @p[tag=Doomslayer] at @s if score @s kits.timer3 matches 1 run return run function kits:char/doomslayer/frag_grenade/passive1
execute as @p[tag=Doomslayer] at @s if score @s kits.timer3 matches 2 run return run function kits:char/doomslayer/ice_bomb/passive1
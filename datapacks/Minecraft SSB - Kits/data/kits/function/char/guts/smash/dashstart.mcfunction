execute as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] at @s run effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
attribute @s minecraft:gravity modifier add gravity.smash.guts -1 add_multiplied_total
tp @s @s
execute at @s run particle block{block_state:"minecraft:sand"} ~ ~0.2 ~ 2 0 2 0 50 force
execute at @s run playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0.9 1
execute at @s run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..30] ~ ~ ~ 3 1 1
function kits:char/guts/smash/raycastdown
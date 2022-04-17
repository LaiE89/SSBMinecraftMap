scoreboard players add @s RaycastTimer 1

execute as @s[scores={RaycastTimer=0..15}] run execute as @e[distance=..1.5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Guts,tag=!InLabyrinth] at @s run tag @s add GutsCleaved 

execute as @e[tag=GutsCleaved] at @s run function datapack:guts_functions/cleavedamage

execute as @s[scores={RaycastTimer=..15}] positioned ^ ^ ^0.5 run function datapack:guts_functions/gutspassive2
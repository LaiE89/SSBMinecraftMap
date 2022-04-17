execute at @s run scoreboard players set @s RaycastTimer 0
execute at @s run function datapack:doomfist_functions/doomfistpassive5
effect clear @s minecraft:levitation
execute at @s run execute as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomfist,tag=!InLabyrinth] at @s run function datapack:doomfist_functions/meteordamage
execute at @s run particle minecraft:explosion ~ ~ ~
execute at @s run particle minecraft:block minecraft:dirt ~ ~ ~ 4 0 4 0 200
execute at @s run particle minecraft:dust 1 0 0 3 ~ ~ ~ 4 0 4 0 100
execute at @s run playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 10 0 1
tag @s remove DoomfistMeteor
scoreboard players reset @s Timer2
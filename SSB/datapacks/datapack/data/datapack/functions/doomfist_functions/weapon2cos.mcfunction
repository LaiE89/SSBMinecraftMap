particle minecraft:dust 1 0 0 3 ~ ~4 ~ 0.4 3 0.4 0 100
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
effect give @s minecraft:slow_falling 1 0 true
execute as @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomfist,tag=!InLabyrinth] at @s run function datapack:doomfist_functions/uppercutdamage
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:doomfist_functions/doomfistpassive3
scoreboard players set @s Ability2CD 0


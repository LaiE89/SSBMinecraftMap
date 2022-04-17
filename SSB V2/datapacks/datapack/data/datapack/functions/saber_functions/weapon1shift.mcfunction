scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:saber_functions/saberpassive2
execute at @s run particle minecraft:sweep_attack ^-1 ^1 ^0.5 0.3 0 0.3 0 10
execute at @s run particle minecraft:dust 1 1 1 1 ^-1 ^ ^0.5 0.8 0 0.8 0 100
execute at @s run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 0 1
execute at @s run execute as @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Saber,tag=!InLabyrinth] at @s run function datapack:damage1
tag @s add SaberStrikeAir
scoreboard players set @s Ability1CD 0
scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run particle minecraft:dust 0 0 0 5 ~ ~0.2 ~ 1.5 0 1.5 0 100
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Tags:["alucardspikes"],Duration:10}
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run execute as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!baskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function datapack:alucard_functions/spikesdamage
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run playsound minecraft:block.roots.break neutral @a[distance=..20] ~ ~ ~ 3 0 1

execute as @s[scores={RaycastTimer=..1111}] positioned ^ ^ ^0.5 run function datapack:alucard_functions/alucardpassive3
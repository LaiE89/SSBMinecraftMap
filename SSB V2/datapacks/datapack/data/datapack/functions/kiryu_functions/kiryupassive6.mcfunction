scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 3333
execute if entity @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kiryu,tag=!InLabyrinth] run scoreboard players set @s RaycastTimer 2222

execute at @s[scores={RaycastTimer=2222}] run particle minecraft:block minecraft:dirt ~ ~0.2 ~ 2 0 2 0 200
execute at @s[scores={RaycastTimer=2222}] run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..30] ~ ~ ~ 3 0 1
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kiryu,tag=!InLabyrinth] at @s run function datapack:kiryu_functions/thekneedamage
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run scoreboard players set @s Timer2 1
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run scoreboard players set @s Ability1CD 90

execute as @s[scores={RaycastTimer=..30}] positioned ^ ^ ^0.5 run function datapack:kiryu_functions/kiryupassive6
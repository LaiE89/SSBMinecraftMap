scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 3333
execute if entity @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Arcueid,tag=!InLabyrinth] run scoreboard players set @s RaycastTimer 2222

execute at @s[scores={RaycastTimer=2222}] run particle minecraft:explosion ~ ~-1 ~
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run particle minecraft:sweep_attack ^ ^ ^0.5
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run playsound minecraft:entity.iron_golem.damage neutral @a[distance=..20] ~ ~ ~ 3 0 1
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Arcueid,tag=!InLabyrinth] at @s run function datapack:arcueid_functions/ripapartdamage
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run effect give @s instant_health
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run scoreboard players set @s RaycastTimer2 0
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run function datapack:arcueid_functions/arcueidpassive3
execute as @s[scores={RaycastTimer=2222}] run scoreboard players set @s Ability1CD 0

execute as @s[scores={RaycastTimer=..8}] positioned ^ ^ ^0.5 run function datapack:arcueid_functions/arcueidpassive2	
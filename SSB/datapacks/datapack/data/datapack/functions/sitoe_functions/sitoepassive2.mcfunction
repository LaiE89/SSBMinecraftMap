execute as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Sitoe,tag=!InLabyrinth] at @s run function datapack:sitoe_functions/carddamage

execute unless block ~0.5 ~ ~ air run tag @s add SitoeCardBounce
execute unless block ~-0.5 ~ ~ air run tag @s add SitoeCardBounce
execute unless block ~ ~0.5 ~ air run tag @s add SitoeCardBounce
execute unless block ~ ~-0.5 ~ air run tag @s add SitoeCardBounce
execute unless block ~ ~ ~0.5 air run tag @s add SitoeCardBounce
execute unless block ~ ~ ~-0.5 air run tag @s add SitoeCardBounce

scoreboard players add @s[tag=SitoeCardBounce] Timer2 1
execute at @s[tag=SitoeCardBounce] run playsound minecraft:entity.arrow.hit_player neutral @a[distance=..15] ~ ~ ~ 3 1.5 1
execute at @s[tag=SitoeCardBounce] run particle minecraft:dust 1 1 0 0.5 ~ ~ ~ 0.2 0 0.2 0 50
tag @s[tag=SitoeCardBounce] remove SitoeCardBounce

execute unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 air run function datapack:sitoe_functions/cardzplanebounce
execute unless block ~ ~ ~-0.5 air run function datapack:sitoe_functions/cardzplanebounce

execute at @s rotated as @s run tp @s ^ ^ ^-1
#function datapack:sitoe_functions/cardspeed

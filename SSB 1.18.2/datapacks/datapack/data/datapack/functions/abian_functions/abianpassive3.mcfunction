scoreboard players add @s RaycastTimer 1

execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute if entity @e[distance=..2.2,tag=!Abian,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~1 ~-1 {Tags:["AbianStarstorm"],Invisible:1,Invulnerable:1,DisabledSlots:2039583}
execute if entity @s[scores={RaycastTimer=50}] run summon armor_stand ~ ~1 ~ {Tags:["AbianStarstorm"],Invisible:1,Invulnerable:1,DisabledSlots:2039583}
execute as @s[scores={RaycastTimer=..49}] positioned ^ ^ ^0.5 run function datapack:abian_functions/abianpassive3
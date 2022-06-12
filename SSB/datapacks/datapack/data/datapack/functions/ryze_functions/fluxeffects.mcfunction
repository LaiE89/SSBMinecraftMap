scoreboard players set @s RyzeFluxTimer 0
execute if entity @s[tag=RyzeFlux] run scoreboard players set @e[distance=..10,tag=RyzeFlux] RyzeFluxTimer 0
execute if entity @s[tag=RyzeFlux] run tag @e[distance=..10,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ryze,tag=!InLabyrinth,tag=!RyzeFlux] add RyzeFlux
tag @s[tag=!RyzeFlux] add RyzeFlux

particle minecraft:nautilus ~ ~ ~ 0.5 0.3 0.5 5 100
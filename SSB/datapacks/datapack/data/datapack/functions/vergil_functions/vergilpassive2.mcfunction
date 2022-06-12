scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 3333
execute if entity @e[distance=..1.5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Vergil,tag=!InLabyrinth] run scoreboard players set @s RaycastTimer 2222
execute at @s[scores={RaycastTimer=2222}] run particle minecraft:block minecraft:white_wool ~ ~ ~ 0.4 1 0.4 0.1 100
execute as @s[scores={RaycastTimer=2222}] run clear @s minecraft:player_head{display:{Name:"{\"text\":\"Vergil\"}"}}
execute as @s[scores={RaycastTimer=2222}] run clear @s minecraft:player_head{display:{Name:"{\"text\":\"Devil Trigger\"}"}}
execute as @s[scores={RaycastTimer=2222}] run clear @s minecraft:leather_chestplate{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]'}}
execute as @s[scores={RaycastTimer=2222}] run clear @s minecraft:leather_leggings{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]'}}
execute as @s[scores={RaycastTimer=2222}] run clear @s minecraft:leather_boots{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]'}}
execute as @s[scores={RaycastTimer=2222}] run effect give @s invisibility 1 0 true
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run scoreboard players set @s RaycastTimer2 0
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run function datapack:vergil_functions/vergilpassive4
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run playsound minecraft:entity.shulker.teleport neutral @a[distance=..20] ~ ~ ~ 3 0.9 1
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run tag @a[tag=Vergil] add VergilInvis
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run tag @a[tag=Vergil] remove VergilDash
execute as @s[scores={RaycastTimer=2222}] positioned ^ ^ ^ run scoreboard players reset @s[tag=Vergil] Timer4
execute as @s[scores={RaycastTimer=..39}] positioned ^ ^ ^0.5 run function datapack:vergil_functions/vergilpassive2 
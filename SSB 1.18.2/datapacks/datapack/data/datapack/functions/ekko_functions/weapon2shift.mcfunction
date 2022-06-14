tp @s @e[type=armor_stand,tag=chronobreak,sort=nearest,limit=1]
effect give @s minecraft:instant_health 1 2 true
execute at @s as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth] at @s run function datapack:damage1
execute at @s run scoreboard players add @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD] EkkoResonance 1
kill @e[type=minecraft:armor_stand,tag=chronobreak]
kill @e[type=minecraft:area_effect_cloud,tag=ChronobreakPath]
execute at @s run particle minecraft:nautilus ~ ~ ~ 2 2 2 0 100
execute at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 2 2 2 0 500
execute at @s run playsound minecraft:block.end_gateway.spawn neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
execute at @s run playsound minecraft:entity.illusioner.cast_spell neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
execute at @s run playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..50] ~ ~ ~ 2 2 1
scoreboard players set @s Ability4CD 0

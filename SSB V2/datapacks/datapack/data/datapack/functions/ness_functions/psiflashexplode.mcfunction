playsound minecraft:item.totem.use neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
particle minecraft:explosion ~ ~1 ~
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 100
execute as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] at @s run function datapack:ness_functions/psiflashexplodedamage

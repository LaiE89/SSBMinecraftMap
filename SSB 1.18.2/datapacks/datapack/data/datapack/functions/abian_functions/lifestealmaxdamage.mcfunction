execute as @e[distance=..2,tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!arrow,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] at @s run function datapack:damage1
execute as @e[distance=..2,tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!arrow,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] at @s run effect give @s minecraft:weakness 3 0 true
effect give @p[tag=Abian] minecraft:instant_health 1 1 true
particle minecraft:sneeze ~ ~ ~ 0.5 0.5 0.5 0.5 20
kill @s
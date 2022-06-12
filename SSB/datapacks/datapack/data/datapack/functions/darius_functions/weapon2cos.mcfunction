execute positioned ^ ^1.35 ^5 run tp @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Darius,tag=!InLabyrinth] @s
execute positioned ^ ^1.35 ^5 run effect give @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Darius,tag=!InLabyrinth] slowness 2 9 true
particle minecraft:item minecraft:flint ^ ^0.7 ^2 1 0 1 0 10
particle minecraft:item minecraft:flint ^ ^0.7 ^4 1 0 1 0 10
particle minecraft:item minecraft:flint ^ ^0.7 ^6 1 0 1 0 10
particle minecraft:cloud ^ ^0.7 ^2 1 0 1 0 10
particle minecraft:cloud ^ ^0.7 ^4 1 0 1 0 10
particle minecraft:cloud ^ ^0.7 ^6 1 0 1 0 10
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 0 1
scoreboard players set @s Ability2CD 0
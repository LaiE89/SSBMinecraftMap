execute at @e[distance=..6,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Tanjiro,tag=!InLabyrinth] run particle minecraft:falling_lava ~ ~1 ~ 0.4 1 0.4 0 100
playsound minecraft:entity.generic.explode neutral @a[distance=..15] ~ ~ ~ 10 2 1
execute as @e[tag=!Tanjiro,distance=..6,tag=!InLabyrinth] at @s run function datapack:damage1
effect give @e[tag=!Tanjiro,distance=..6,tag=!InLabyrinth] minecraft:wither 2 9 true
execute at @p[tag=Tanjiro] run particle minecraft:dust 1 0.25 0 1 ^ ^1 ^2 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^1 ^2 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^1 ^-2 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^2 ^-1.5 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^2 ^1.5 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^ ^1.5 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^ ^-1.5 0.2 0.2 0.2 0 100
particle minecraft:dust 1 0.25 0 1 ^ ^2.5 ^ 0.2 0.2 0.2 0 100
scoreboard players set @s Ability2CD 0
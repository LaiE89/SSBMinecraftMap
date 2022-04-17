scoreboard players add @s RaycastTimer 1
execute if entity @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kaneki,tag=!InLabyrinth] run scoreboard players set @s RaycastTimer 2222
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 3333

execute positioned ~ ~-0.5 ~ run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1
execute as @s[scores={RaycastTimer=2222..2300}] positioned ^ ^ ^ as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kaneki,tag=!InLabyrinth] at @s run function datapack:kaneki_functions/kagunedamage

execute as @s[scores={RaycastTimer=3333..}] positioned ^ ^ ^ run playsound minecraft:entity.player.hurt neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @s[scores={RaycastTimer=3333..}] positioned ^ ^ ^ run summon armor_stand ^ ^ ^-1 {Tags:["KanekiKagune"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1,DisabledSlots:2039583}

execute as @s[scores={RaycastTimer=15}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["KanekiKagune"],Small:1b,Invisible:1b,Invulnerable:1,DisabledSlots:2039583}

execute as @s[scores={RaycastTimer=..14}] positioned ^ ^ ^0.5 run function datapack:kaneki_functions/kanekipassive2
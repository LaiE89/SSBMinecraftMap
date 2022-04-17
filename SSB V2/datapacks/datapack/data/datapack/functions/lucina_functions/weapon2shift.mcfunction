particle minecraft:sweep_attack ~ ~5 ~ 0 1.8 0 0 20
particle minecraft:block minecraft:dirt ~ ~0.5 ~ 2 0 2 0.5 100
execute as @e[distance=..5,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Lucina,tag=!InLabyrinth] at @s run function datapack:lucina_functions/dolphinslashdamage

scoreboard players set @s RaycastTimer2 0
execute at @s positioned ~ ~1.5 ~ run function datapack:lucina_functions/lucinapassive4

scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1 ~ run function datapack:lucina_functions/lucinapassive5
tag @e[tag=LucinaDolphinSlashed] remove LucinaDolphinSlashed

playsound minecraft:entity.player.splash.high_speed neutral @a[distance=..20] ~ ~ ~ 5 2 1
effect give @s minecraft:slow_falling 1 0 true
scoreboard players set @s Ability3CD 0

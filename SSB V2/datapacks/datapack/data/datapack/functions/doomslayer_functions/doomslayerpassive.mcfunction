# Ability CDs
title @p[tag=Doomslayer] actionbar ["",{"text":"Super Shotgun:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Doomslayer]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Meat Hook:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Doomslayer]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"BFG:","color":"dark_green"},{"text":" ","color":"gold"},{"score":{"name":"@p[tag=Doomslayer]","objective":"Ability3CD"},"color":"white"}]

execute at @p[tag=Doomslayer] run execute store result score @e[tag=!Doomslayer,limit=1,sort=nearest] Health2 run data get entity @e[tag=!Doomslayer,limit=1,sort=nearest] Health
execute at @p[tag=Doomslayer] as @e[distance=..8,limit=1,sort=nearest,scores={Health2=..4},type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth] at @s run particle minecraft:dust 2 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0 5
execute at @p[gamemode=!spectator,tag=Doomslayer,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"Crucible","italic":false,"color":"gold"}]'}}}}] as @e[distance=..8,limit=1,sort=nearest,scores={Health2=..4},type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth] at @s run function datapack:doomslayer_functions/glorykill

# Shotgun
scoreboard players add @p[tag=Doomslayer,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Doomslayer,scores={COS=1..}] as @p[tag=Doomslayer,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Super Shotgun","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:doomslayer_functions/weapon2cos

execute as @e[type=area_effect_cloud,tag=supershotgun,tag=!facingsupershotgun] at @s run tp @s ~ ~ ~ facing entity @p[tag=Doomslayer]
tag @e[type=area_effect_cloud,tag=supershotgun,tag=!facingsupershotgun] add facingsupershotgun
execute as @e[type=area_effect_cloud,tag=supershotgun] at @s run tp @s ^ ^ ^-2
execute as @e[type=area_effect_cloud,tag=supershotgun] at @s run particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0 0 0 0 1
execute at @e[type=area_effect_cloud,tag=supershotgun] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth,tag=!DoomslayerShotgunned,tag=!DoomslayerShotgunned2] at @s run function datapack:doomslayer_functions/shotgundamage
execute as @e[type=area_effect_cloud,tag=supershotgun] at @s if entity @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth] run function datapack:doomslayer_functions/shotgunkb

execute as @p[tag=Doomslayer,scores={COS=1..}] as @p[tag=Doomslayer,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Super Shotgun","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:doomslayer_functions/weapon2cos2

# Meathook
scoreboard players add @p[tag=Doomslayer,scores={Ability2CD=..159}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Doomslayer,scores={Shift=1..}] as @p[tag=Doomslayer,scores={Ability2CD=160..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Super Shotgun","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:doomslayer_functions/weapon2shift

execute as @e[type=armor_stand,tag=meathook,tag=!facingmeathook] at @s run tp @s ~ ~ ~ facing entity @p[tag=Doomslayer]
tag @e[type=armor_stand,tag=meathook,tag=!facingmeathook] add facingmeathook
execute as @e[type=armor_stand,tag=meathook] at @s run tp @s ^ ^ ^-2
execute as @e[type=armor_stand,tag=meathook] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.08 0.08 0.08 0 2
execute at @e[type=armor_stand,tag=meathook] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth] at @s run function datapack:doomslayer_functions/hookdamage
scoreboard players add @e[type=armor_stand,tag=meathook] Timer 1
kill @e[type=armor_stand,tag=meathook,scores={Timer=10..}]

execute at @p[tag=Doomslayer] if entity @e[tag=DoomslayerHooked,limit=1,sort=nearest] as @p[tag=Doomslayer] at @s facing entity @e[tag=DoomslayerHooked,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2
execute at @p[tag=Doomslayer] if entity @e[tag=DoomslayerHooked,distance=..4] run tag @e[tag=DoomslayerHooked] remove DoomslayerHooked

# BFG
scoreboard players add @p[tag=Doomslayer,scores={Ability3CD=..799}] Ability3CD 1
execute as @p[tag=Doomslayer,scores={COS=1..}] as @p[tag=Doomslayer,scores={Ability3CD=800..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"BFG 9000","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:doomslayer_functions/weapon3cos

execute as @e[type=armor_stand,tag=bfg,tag=!castedbfg] at @s run tp @s ~ ~ ~ facing entity @p[tag=Doomslayer]
tag @e[type=armor_stand,tag=bfg,tag=!castedbfg] add castedbfg
execute as @e[type=armor_stand,tag=bfg] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=bfg] at @s run particle minecraft:sneeze ^ ^1 ^0.5 0.2 0.2 0.2 0 20
execute at @e[type=armor_stand,tag=bfg] as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomslayer,tag=!InLabyrinth] at @s run function datapack:doomslayer_functions/bfgdamage

scoreboard players add @e[type=armor_stand,tag=bfg] Timer 1
kill @e[type=armor_stand,tag=bfg,scores={Timer=200..}]
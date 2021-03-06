# Ability CDs
title @p[tag=Zed] actionbar ["",{"text":"Razor Shuriken:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Zed]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Living Shadow:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Zed]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Shadow Slash:","color":"dark_gray"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Zed]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Death Mark:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Zed]","objective":"Ability4CD"},"color":"white"}]

# Passive
execute as @p[tag=Zed] at @s if entity @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Zed,tag=!InLabyrinth] run function datapack:zed_functions/gethalfhealth

execute as @p[tag=Zed,scores={Basic_Attack=1..}] if score @s Health4 <= @s Health3 as @e[limit=1,sort=nearest,tag=!Zed,tag=!InLabyrinth,nbt={HurtTime:10s}] at @s run function datapack:zed_functions/passivedamage

# Shurikens
scoreboard players add @p[tag=Zed,scores={Ability1CD=..79}] Ability1CD 1
execute as @p[tag=Zed,scores={Basic_COS=1..},predicate=datapack:zed_items/shurikens] as @p[tag=Zed,scores={Ability1CD=80..}] at @s run function datapack:zed_functions/weapon1cos

execute as @e[type=area_effect_cloud,tag=razorshuriken,tag=!facingrazorshuriken] at @s run tp @s ~ ~ ~ facing entity @p[tag=Zed]
tag @e[type=area_effect_cloud,tag=razorshuriken,tag=!facingrazorshuriken] add facingrazorshuriken
execute as @e[type=area_effect_cloud,tag=razorshuriken] at @s run tp @s ^ ^ ^-2

execute as @e[type=area_effect_cloud,tag=razorshuriken2,tag=!facingrazorshuriken2] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest]
tag @e[type=area_effect_cloud,tag=razorshuriken2,tag=!facingrazorshuriken2] add facingrazorshuriken2
execute as @e[type=area_effect_cloud,tag=razorshuriken2] at @s run tp @s ^ ^ ^-2

execute as @e[type=area_effect_cloud,tag=razorshuriken3,tag=!facingrazorshuriken3] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest]
tag @e[type=area_effect_cloud,tag=razorshuriken3,tag=!facingrazorshuriken3] add facingrazorshuriken3
execute as @e[type=area_effect_cloud,tag=razorshuriken3] at @s run tp @s ^ ^ ^-2

execute as @e[type=area_effect_cloud,tag=zedshuriken] at @s run function datapack:zed_functions/shurikendamage

# Shadow Slash
scoreboard players add @p[tag=Zed,scores={Ability2CD=..59}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/shurikens] as @p[tag=Zed,scores={Ability2CD=60..}] at @s run function datapack:zed_functions/weapon1shift

# Living Shadow
scoreboard players set @p[tag=Zed,scores={Ability3CD=301..}] Ability3CD 300
scoreboard players add @p[tag=Zed,scores={Ability3CD=..299}] Ability3CD 1
execute as @p[tag=Zed,scores={Basic_COS=1..},predicate=datapack:zed_items/shadow] as @p[tag=Zed,scores={Ability3CD=300..}] at @s run function datapack:zed_functions/weapon2cos

execute at @p[gamemode=!spectator,tag=!ZedNoSwitch,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/shadow] run summon armor_stand ~ ~1 ~ {Tags:["zedshadow2"],Invisible:1,Invulnerable:1}
tp @e[type=armor_stand,tag=zedshadow2] @p[tag=Zed]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/shadow] run tp @p[tag=Zed] @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/shadow] run tp @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest] @e[type=armor_stand,tag=zedshadow2,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=zedshadow] if entity @e[type=armor_stand,tag=zedshadow2,distance=..2] run kill @e[type=armor_stand,tag=zedshadow2]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/shadow] run tag @p[tag=Zed] add ZedNoSwitch

# Death Mark
scoreboard players add @p[tag=Zed,scores={Ability4CD=..499}] Ability4CD 1
execute as @p[tag=Zed,scores={Basic_COS=1..},predicate=datapack:zed_items/mark] at @s as @s[scores={Ability4CD=500..}] run function datapack:zed_functions/weapon2shift

execute if entity @e[tag=ZedDeathmarked] run scoreboard players add @p[tag=Zed] Timer2 1
execute at @e[tag=ZedDeathmarked] run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0 5
execute as @p[tag=Zed,scores={Timer2=40..}] as @e[tag=ZedDeathmarked] at @s run function datapack:zed_functions/deathmarkdamage
scoreboard players reset @p[tag=Zed,scores={Timer2=40..}] Timer2

execute at @p[gamemode=!spectator,tag=!ZedNoSwitch2,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/mark] run summon armor_stand ~ ~1 ~ {Tags:["ultshadow2"],Invisible:1,Invulnerable:1}
tp @e[type=armor_stand,tag=ultshadow2] @p[tag=Zed]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch2,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/mark] run tp @p[tag=Zed] @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch2,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/mark] run tp @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest] @e[type=armor_stand,tag=ultshadow2,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=ultshadow] run execute if entity @e[type=armor_stand,tag=ultshadow2,distance=..2] run kill @e[type=armor_stand,tag=ultshadow2]
execute at @p[gamemode=!spectator,tag=!ZedNoSwitch2,tag=Zed,scores={Basic_Shift=1..},predicate=datapack:zed_items/mark] run tag @p[tag=Zed] add ZedNoSwitch2

scoreboard players add @e[type=armor_stand,tag=zedshadow] Timer2 1
scoreboard players add @e[type=armor_stand,tag=zedshadow2] Timer2 1
kill @e[type=armor_stand,tag=zedshadow,scores={Timer2=150..}]
kill @e[type=armor_stand,tag=zedshadow2,scores={Timer2=150..}]
scoreboard players add @e[type=armor_stand,tag=ultshadow] Timer2 1
scoreboard players add @e[type=armor_stand,tag=ultshadow2] Timer2 1
kill @e[type=armor_stand,tag=ultshadow,scores={Timer2=150..}]
kill @e[type=armor_stand,tag=ultshadow2,scores={Timer2=150..}]
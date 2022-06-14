# Ability CDs
title @a[tag=Sitoe] actionbar ["",{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Sitoe]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Sitoe]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@p[tag=Sitoe]","objective":"Ability4CD"},"color":"white"}]

# Highlighting Weapon Wheel
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeSword,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:sitoe_functions/sword
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeSword,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=SitoeSword,limit=1] CustomNameVisible

execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeCards,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:sitoe_functions/cards
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeCards,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=SitoeCards,limit=1] CustomNameVisible

execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoePossess,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:sitoe_functions/possession
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoePossess,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=armor_stand,tag=SitoePossess,limit=1] CustomNameVisible

execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeTeleport,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:sitoe_functions/teleport
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeTeleport,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=armor_stand,tag=SitoeTeleport,limit=1] CustomNameVisible

execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeRitual,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:sitoe_functions/ritual
execute as @p[tag=Sitoe] at @s anchored eyes facing entity @e[type=armor_stand,tag=SitoeRitual,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=SitoeRitual,limit=1] CustomNameVisible

# Weapon Wheel
scoreboard players add @p[tag=Sitoe,scores={Basic_Shift=0}] Basic_ShiftOff 1
scoreboard players reset @p[tag=Sitoe,scores={Basic_ShiftOff=3..}] Shift
scoreboard players reset @p[tag=Sitoe,scores={Basic_Shift=1..}] Basic_ShiftOff

scoreboard players add @p[gamemode=!spectator,tag=Sitoe,scores={Basic_Shift=1..},predicate=datapack:sitoe_items/sitoe_weapon] Basic_ShiftOn 1
scoreboard players reset @p[tag=Sitoe,scores={Basic_ShiftOff=3..}] Basic_ShiftOn

## Weapon Wheel
execute as @p[tag=Sitoe,scores={Basic_ShiftOn=1}] at @s run function datapack:sitoe_functions/weaponwheel
execute at @p[tag=Sitoe,scores={Basic_ShiftOn=1..}] as @e[type=armor_stand,tag=SitoeWeapons] at @s run tp @s ~ ~ ~ facing entity @p[tag=Sitoe]
execute as @p[tag=Sitoe,scores={Basic_ShiftOff=3..}] at @s run kill @e[type=armor_stand,tag=SitoeWeapons]

scoreboard players reset @p[tag=Sitoe,scores={Basic_ShiftOff=3..}] Basic_ShiftOff

# Sword of Sitrouille
scoreboard players add @p[tag=Sitoe,scores={Basic_Attack=1..},predicate=datapack:sitoe_items/sword] Timer 1
execute as @p[tag=Sitoe,scores={Timer=3..}] at @s run function datapack:sitoe_functions/swordhit
scoreboard players reset @p[tag=Sitoe,scores={Timer=3..}] Timer

# Yugioh Cards
scoreboard players add @p[tag=Sitoe,scores={Ability1CD=..29}] Ability1CD 1
execute as @p[tag=Sitoe,tag=!SitoePossessing,scores={Ability1CD=30..},predicate=datapack:sitoe_items/cards] as @s[scores={Basic_COS=1..}] at @s run function datapack:sitoe_functions/cardthrow

#execute as @e[type=armor_stand,tag=SitoeCardThrow,tag=!castedSitoeCardThrow] at @s run tp @s ~ ~ ~ facing entity @p[tag=Sitoe] eyes
#scoreboard players set @e[type=armor_stand,tag=SitoeCardThrow,tag=!castedSitoeCardThrow] Timer2 0
tag @e[type=armor_stand,tag=SitoeCardThrow,tag=!castedSitoeCardThrow] add castedSitoeCardThrow
execute as @e[type=armor_stand,tag=SitoeCardThrow] at @s run function datapack:sitoe_functions/sitoepassive2

kill @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer2=8..}]

scoreboard players add @e[type=armor_stand,tag=SitoeCardThrow] Timer 1
kill @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer=30..}]

# Possession
scoreboard players add @p[tag=Sitoe,scores={Ability2CD=..299}] Ability2CD 1
execute as @p[tag=Sitoe,scores={Ability2CD=300..},predicate=datapack:sitoe_items/possession] as @s[scores={Basic_COS=1..}] at @s run function datapack:sitoe_functions/possessionuse

execute at @e[tag=SitoePossessed] run particle minecraft:sneeze ~ ~1.2 ~ 0.4 0.8 0.4 0 10

scoreboard players add @p[tag=SitoePossessing] Timer2 1
execute as @p[tag=SitoePossessing,scores={Timer2=1}] at @s run tp @s @e[tag=SitoePossessed,limit=1,sort=nearest]
execute as @p[tag=SitoePossessing,scores={Timer2=2..}] at @s run tp @e[tag=SitoePossessed,limit=1,sort=nearest] @s

execute if entity @p[tag=SitoePossessing,scores={Timer2=45..}] run tag @e[tag=SitoePossessed] remove SitoePossessed
tag @e[tag=SitoePossessed,scores={Basic_Death=1..}] remove SitoePossessed
execute as @p[tag=SitoePossessing,scores={Timer2=45}] at @s run function datapack:sitoe_functions/possessionfinish
tag @p[tag=SitoePossessing,scores={Timer2=45..}] remove SitoePossessing
scoreboard players reset @p[tag=Sitoe,scores={Timer2=45..}] Timer2

# Teleport
scoreboard players add @p[tag=Sitoe,scores={Ability3CD=..299}] Ability3CD 1
execute as @p[tag=Sitoe,scores={Ability3CD=300..},predicate=datapack:sitoe_items/teleport] at @s run execute at @s[scores={Basic_COS=1..}] run function datapack:sitoe_functions/teleportuse
execute as @e[type=armor_stand,tag=SitoeBolt] at @s anchored eyes facing entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Sitoe,tag=!InLabyrinth] eyes positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^0.5 ^ ^0.5 ~ ~

execute at @e[type=armor_stand,tag=SitoeBolt] run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0 0 0 0.5 2

scoreboard players add @e[type=armor_stand,tag=SitoeBolt] Timer 1
execute at @e[type=armor_stand,tag=SitoeBolt,scores={Timer=60..}] run particle minecraft:flash ~ ~1.35 ~
kill @e[type=armor_stand,tag=SitoeBolt,scores={Timer=60..}]
execute at @e[type=armor_stand,tag=SitoeBolt] as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Sitoe,tag=!InLabyrinth] at @s run function datapack:sitoe_functions/teleportdamage

# Ritual
scoreboard players add @p[tag=Sitoe,scores={Ability4CD=..1499}] Ability4CD 1
execute as @p[tag=Sitoe,scores={Ability4CD=1500..},predicate=datapack:sitoe_items/ritual] at @s as @s[scores={Basic_COS=1..}] run function datapack:sitoe_functions/ritualuse

scoreboard players add @e[type=armor_stand,tag=SitoeRitualStand] Timer 1
execute as @e[type=armor_stand,tag=SitoeRitualStand] at @s run function datapack:sitoe_functions/ritualparticles
execute as @p[tag=SitoeGettingRitualed,scores={Basic_Death=1..}] run scoreboard players set @e[tag=SitoeRitualStand,type=armor_stand] Timer 149
execute if entity @e[type=armor_stand,tag=SitoeRitualStand,scores={Timer=150..}] run kill @e[type=armor_stand,tag=SitoeGettingRitualedDamage] 
kill @e[type=armor_stand,tag=SitoeRitualStand,scores={Timer=150..}]

execute as @e[type=armor_stand,tag=SitoeGettingRitualedDamage] at @s run function datapack:sitoe_functions/ritualspin

execute as @p[tag=Sitoe,scores={Basic_Death=1..}] run tag @e[tag=SitoePossessed] remove SitoePossessed
execute as @p[tag=Sitoe,scores={Basic_Death=1..}] run tag @e[tag=SitoeGettingRitualed] remove SitoeGettingRitualed
# Ability CDs
title @p[tag=Luffy] actionbar ["",{"text":"Pistol:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Dash:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"Ability2CD"},"color":"white"},{"text":" || "},{"text":"Gatling:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"Ability3CD"}},{"text":" || "},{"text":"Grab:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"Ability4CD"}}]

# Gomu Gomu Pistol
scoreboard players add @p[tag=Luffy,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Luffy,gamemode=!spectator,scores={Shift=1..}] as @p[tag=Luffy,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Luffy\'s Fists","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:luffy_functions/weapon1shift

scoreboard players add @p[tag=Luffy,scores={Shift=0}] ShiftOff 1
scoreboard players reset @p[tag=Luffy,scores={ShiftOff=3..}] Shift
scoreboard players reset @p[tag=Luffy,scores={Shift=1..}] ShiftOff

scoreboard players add @p[tag=Luffy,scores={Shift=1..},tag=LuffyUsingPistol] ShiftOn 1
scoreboard players reset @p[tag=Luffy,scores={ShiftOff=3..}] ShiftOn
execute at @p[tag=Luffy,scores={ShiftOn=1}] run tp @e[tag=ChargingLuffyPistol,type=armor_stand] ^ ^ ^-0.5 facing entity @p[tag=Luffy]
execute at @p[tag=Luffy,scores={ShiftOn=2..}] run execute as @e[tag=ChargingLuffyPistol,type=armor_stand] at @s run tp @s ^ ^ ^-0.5 facing entity @p[tag=Luffy]

execute as @p[tag=Luffy,scores={ShiftOn=40..},tag=LuffyUsingPistol] at @s run function datapack:luffy_functions/shootingpistol

execute as @p[tag=Luffy,scores={ShiftOff=3..},tag=LuffyUsingPistol] at @s run function datapack:luffy_functions/shootingpistol2

execute at @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol] run execute if entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol,limit=1] at @s facing entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] feet run tp @e[type=armor_stand,limit=1,sort=nearest,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol] ^ ^ ^1.5
execute at @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol] run execute if entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol,limit=1] at @s facing entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] feet run tp @e[type=armor_stand,limit=1,sort=nearest,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol] ^ ^ ^2

execute at @e[type=armor_stand,tag=LuffyPistol] if entity @e[tag=LuffyPistolDestination,type=armor_stand,distance=..3] run function datapack:luffy_functions/pistolending

scoreboard players add @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol] Timer 1
execute as @e[type=armor_stand,tag=LuffyPistol,scores={Timer=60..}] at @s run function datapack:luffy_functions/pistolending2

execute at @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Luffy,tag=!InLabyrinth] at @s run function datapack:luffy_functions/pistoldamage

execute at @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Luffy,tag=!InLabyrinth] at @s run function datapack:luffy_functions/pistoldamage2

execute at @e[type=armor_stand,tag=LuffyPistol,tag=ChargingLuffyPistol] run execute if entity @p[tag=Luffy] as @e[type=armor_stand,tag=LuffyPistol,tag=ChargingLuffyPistol] at @s positioned ~ ~1.5 ~ facing entity @p[tag=Luffy] eyes run function datapack:luffy_functions/luffypassive2
execute at @e[type=armor_stand,tag=LuffyPistolAngle] run execute if entity @p[tag=Luffy] as @e[type=armor_stand,tag=LuffyPistolAngle] at @s positioned ~ ~1.5 ~ facing entity @p[tag=Luffy] eyes run function datapack:luffy_functions/luffypassive2
execute at @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol] run execute if entity @e[type=armor_stand,tag=LuffyPistolAngle] as @e[tag=LuffyPistol,tag=!ChargingLuffyPistol,type=armor_stand] at @s positioned ~ ~1.5 ~ facing entity @e[type=armor_stand,tag=LuffyPistolAngle] eyes run function datapack:luffy_functions/luffypassive6

scoreboard players reset @p[tag=Luffy,scores={ShiftOn=40..}] ShiftOn
scoreboard players reset @p[tag=Luffy,scores={ShiftOff=3..}] ShiftOff

# Dash
scoreboard players add @p[tag=Luffy,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Luffy,scores={COS=1..}] as @p[tag=Luffy,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Luffy\'s Fists","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:luffy_functions/weapon1cos

# Gatling
scoreboard players add @p[tag=Luffy,scores={Ability3CD=..199}] Ability3CD 1
execute as @p[tag=Luffy,scores={COS=1..}] as @p[tag=Luffy,scores={Ability3CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Luffy\'s Skills","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:luffy_functions/weapon2cos

execute at @p[tag=LuffyGatling] run function datapack:luffy_functions/luffygatling

scoreboard players add @p[tag=LuffyGatling] Timer 1
tag @p[tag=LuffyGatling,scores={Timer=20..}] remove LuffyGatling
scoreboard players reset @p[tag=Luffy,scores={Timer=20..}] Timer

# Grab
scoreboard players add @p[tag=Luffy,scores={Ability4CD=..199}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Luffy,scores={Shift=1..}] as @p[tag=Luffy,scores={Ability4CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Luffy\'s Skills","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:luffy_functions/weapon2shift

execute as @e[type=armor_stand,tag=LuffyGrab,tag=!castedLuffyGrab] at @s run tp @s ~ ~ ~ facing entity @p[tag=Luffy]
tag @e[type=armor_stand,tag=LuffyGrab,tag=!castedLuffyGrab] add castedLuffyGrab
execute as @e[type=armor_stand,tag=LuffyGrab,scores={Timer=0..20}] at @s run tp @s ^ ^ ^-1.2

execute at @e[type=armor_stand,tag=LuffyGrab,scores={Timer=21..}] run execute if entity @p[tag=Luffy] as @e[type=armor_stand,tag=LuffyGrab,limit=1] at @s facing entity @p[tag=Luffy] feet run tp @e[type=armor_stand,tag=LuffyGrab,limit=1] ^ ^ ^1.2

execute at @e[type=armor_stand,tag=LuffyGrab] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Luffy,tag=!InLabyrinth,tag=!LuffyGrabbed] at @s run function datapack:luffy_functions/grab

scoreboard players add @e[type=armor_stand,tag=LuffyGrab] Timer 1
kill @e[type=armor_stand,tag=LuffyGrab,scores={Timer=100..}]
execute as @e[type=armor_stand,tag=LuffyGrab] at @s run tp @e[tag=LuffyGrabbed] ~ ~0.5 ~

execute as @e[type=armor_stand,tag=LuffyGrab,scores={Timer=21..}] at @s if entity @p[tag=Luffy,distance=..2] run function datapack:luffy_functions/grabback

execute at @e[type=armor_stand,tag=LuffyGrab] run execute if entity @p[tag=Luffy] as @e[type=armor_stand,tag=LuffyGrab] at @s positioned ~ ~1.5 ~ facing entity @p[tag=Luffy] eyes run function datapack:luffy_functions/luffypassive2
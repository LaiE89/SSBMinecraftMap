# Ability CDs
title @p[tag=Doomfist] actionbar ["",{"text":"Rocket Punch:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Doomfist]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Rising Uppercut:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Doomfist]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Seismic Slam:","color":"red"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Doomfist]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Meteor Strike","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Doomfist]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Ammo: ","color":"light_purple"},{"score":{"name":"@p[tag=Doomfist]","objective":"Ability5CD"},"color":"light_purple"}]

# Handcannon
scoreboard players add @p[tag=Doomfist,scores={Ability5CD=..3}] Timer 1
scoreboard players add @p[tag=Doomfist,scores={Timer=30}] Ability5CD 1
scoreboard players set @p[tag=Doomfist,scores={Timer=30..}] Timer 0
execute as @p[tag=!DoomfistMeteor,tag=!DoomfistCharge,tag=Doomfist,scores={Ability5CD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Hand Cannon","italic":false,"color":"gold"}]'}}}}] as @p[tag=Doomfist,scores={COS=1..}] at @s run function datapack:doomfist_functions/weapon1cos

execute as @e[type=area_effect_cloud,tag=handcannonshot,tag=!facinghandcannonshot] at @s run tp @s ~ ~ ~ facing entity @p[tag=Doomfist]
tag @e[type=area_effect_cloud,tag=handcannonshot,tag=!facinghandcannonshot] add facinghandcannonshot
execute as @e[type=area_effect_cloud,tag=handcannonshot] at @s run tp @s ^ ^ ^-2
execute as @e[type=area_effect_cloud,tag=handcannonshot] at @s run particle minecraft:dust 1 1 1 0.3 ~ ~1 ~ 0 0 0 0 10
execute at @e[type=area_effect_cloud,tag=handcannonshot] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomfist,tag=!InLabyrinth] at @s run function datapack:doomfist_functions/handcannondamage

# Rocket Punch
scoreboard players add @p[tag=Doomfist,scores={Ability1CD=..79}] Ability1CD 1
execute at @p[gamemode=!spectator,tag=!DoomfistMeteor,tag=Doomfist,scores={Ability1CD=80..}] run execute at @p[tag=Doomfist,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Hand Cannon","italic":false,"color":"gold"}]'}}}}] run tag @p[tag=Doomfist] add DoomfistCharge

scoreboard players add @p[tag=Doomfist,scores={Shift=0}] ShiftOff 1
scoreboard players reset @p[tag=Doomfist,scores={ShiftOff=3..}] Shift
scoreboard players reset @p[tag=Doomfist,scores={Shift=1..}] ShiftOff

scoreboard players add @p[tag=DoomfistCharge,tag=Doomfist,gamemode=!spectator,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Hand Cannon","italic":false,"color":"gold"}]'}}}}] ShiftOn 1
scoreboard players reset @p[tag=Doomfist,scores={ShiftOff=3..}] ShiftOn
execute at @p[tag=Doomfist,scores={ShiftOn=1}] run playsound minecraft:entity.creeper.primed neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute at @p[tag=Doomfist,scores={ShiftOn=1..39}] run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.4 1 0.4 0 10
execute at @p[tag=Doomfist,scores={ShiftOn=1..}] run particle minecraft:firework ^-0.5 ^1 ^1 0.2 0.2 0.2 0.1 1
execute at @p[tag=Doomfist,scores={ShiftOn=40}] run playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute at @p[tag=Doomfist,scores={ShiftOn=40}] run particle minecraft:flash ~ ~ ~
execute at @p[tag=Doomfist,scores={ShiftOn=40..}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.4 1 0.4 0 10
execute at @p[tag=Doomfist,tag=DoomfistPunching] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] at @p[tag=Doomfist,scores={ShiftOn=40..}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 0 1
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] at @p[tag=Doomfist,scores={ShiftOn=20..39}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 1 1
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] at @p[tag=Doomfist,scores={ShiftOn=..19}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 2 1

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=40..}] at @s run scoreboard players set @s RaycastTimer 0
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=40..}] at @s positioned ~ ~1.5 ~ run function datapack:doomfist_functions/doomfistpassive6

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=20..39}] at @s run scoreboard players set @s RaycastTimer2 0
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=20..39}] at @s positioned ~ ~1.5 ~ run function datapack:doomfist_functions/doomfistpassive7

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=..19}] at @s run scoreboard players set @s RaycastTimer3 0
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=..19}] at @s positioned ~ ~1.5 ~ run function datapack:doomfist_functions/doomfistpassive8

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=1..}] at @s run tag @s add DoomfistPunching
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=40..}] at @s run tag @s add DoomfistMax
execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=1..}] at @s run tag @s remove DoomfistCharge

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=1..}] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=rocketpunch] run function datapack:doomfist_functions/rocketpunchend2

execute as @p[tag=Doomfist,scores={ShiftOff=2..}] as @p[tag=Doomfist,scores={ShiftOn=1..}] at @s run scoreboard players set @s Ability1CD 0
scoreboard players reset @p[tag=Doomfist,scores={ShiftOff=2..}] ShiftOn
execute as @p[tag=Doomfist,tag=DoomfistPunching] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=rocketpunch,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2.5
execute as @e[type=minecraft:area_effect_cloud,tag=rocketpunch] at @s if entity @p[tag=Doomfist,distance=..3] run function datapack:doomfist_functions/rocketpunchend

execute at @p[tag=Doomfist,tag=DoomfistPunching] as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomfist,tag=!InLabyrinth] at @s run function datapack:doomfist_functions/rocketpunchdamage

# Rising Uppercut
scoreboard players add @p[tag=Doomfist,scores={Ability2CD=..119}] Ability2CD 1
execute as @p[tag=!DoomfistMeteor,tag=!DoomfistCharge,tag=Doomfist,scores={COS=1..}] as @p[tag=Doomfist,scores={Ability2CD=120..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Doomfist\'s Mobility","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:doomfist_functions/weapon2cos

# Seismic Slam
scoreboard players add @p[tag=Doomfist,scores={Ability3CD=..119}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=!DoomfistMeteor,tag=!DoomfistCharge,tag=Doomfist,scores={Shift=1..}] as @p[tag=Doomfist,scores={Ability3CD=120..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Doomfist\'s Mobility","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:doomfist_functions/weapon2shift
execute as @p[tag=Doomfist] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=seismicslam] eyes run tp @s ^ ^ ^1.5
execute at @e[type=area_effect_cloud,tag=seismicslam] if entity @p[tag=Doomfist,distance=..3] as @e[distance=..6,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Doomfist,tag=!InLabyrinth] at @s run function datapack:doomfist_functions/slamdamage
execute as @e[type=area_effect_cloud,tag=seismicslam] at @s if entity @p[tag=Doomfist,distance=..3] run function datapack:doomfist_functions/slamparticles

# Meteor Strike
scoreboard players add @p[tag=Doomfist,scores={Ability4CD=..799}] Ability4CD 1
execute as @p[tag=!DoomfistCharge,tag=Doomfist,scores={COS=1..}] as @p[tag=Doomfist,scores={Ability4CD=800..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Meteor Strike\",\"italic\":false,\"color\":\"dark_red\"}]"},Unbreakable:1}}}] at @s run function datapack:doomfist_functions/weapon3cos

effect give @p[tag=Doomfist,scores={Timer2=1..19}] slowness 1 9 true
execute as @p[tag=Doomfist,scores={Timer2=20}] at @s run function datapack:doomfist_functions/meteorstart

execute as @p[tag=Doomfist,scores={Timer2=20..}] as @p[tag=Doomfist,tag=DoomfistMeteor,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Meteor Strike\",\"italic\":false,\"color\":\"dark_red\"}]"},Unbreakable:1}}}] at @s run function datapack:doomfist_functions/meteorclick

scoreboard players add @p[tag=Doomfist,tag=DoomfistMeteor] Timer2 1
execute as @p[tag=Doomfist,tag=DoomfistMeteor,scores={Timer2=100..}] at @s run function datapack:doomfist_functions/meteorclick

scoreboard players reset @p[tag=Doomfist,scores={ShiftOff=3..}] ShiftOff
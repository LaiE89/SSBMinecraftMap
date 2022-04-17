# Ability CDs
title @p[tag=Ekko] actionbar ["",{"text":"Timewinder:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ekko]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Parallel Convergence:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ekko]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Phase Dive:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Ekko]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Chronobreak:","color":"dark_blue"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Ekko]","objective":"Ability4CD"},"color":"white"}]

# Timewinder
scoreboard players add @p[tag=Ekko,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Ekko,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ekko\'s Lightsaber","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Ekko,scores={COS=1..}] at @s run function datapack:ekko_functions/weapon1cos

execute as @e[type=armor_stand,tag=Winder,tag=!facingEkko,scores={Timer=..40}] at @s run tp @s ~ ~ ~ facing entity @p[tag=Ekko]
tag @e[type=armor_stand,tag=Winder,tag=!facingEkko,scores={Timer=..40}] add facingEkko
execute as @e[type=armor_stand,tag=Winder,scores={Timer=..5}] at @s run tp @s ^ ^ ^-1.5
execute as @e[type=armor_stand,tag=Winder,scores={Timer=6..40}] at @s run tp @s ^ ^ ^-0.25
execute as @e[type=armor_stand,tag=Winder,scores={Timer=6..}] at @s run particle minecraft:dust 0 1 1 1 ~ ~1.4 ~ 0.6 0 0.6 0.05 50

execute as @e[type=armor_stand,tag=Winder,scores={Timer=..5}] at @s if entity @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth] run scoreboard players set @s Timer 6
execute at @e[type=armor_stand,tag=Winder,scores={Timer=..40}] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoTimeWinderHit] at @s run function datapack:ekko_functions/winder

execute if entity @e[type=armor_stand,tag=Winder,scores={Timer=41}] run tag @e[tag=EkkoTimeWinderHit] remove EkkoTimeWinderHit

execute at @e[type=armor_stand,tag=Winder,scores={Timer=41..}] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoTimeWinderHit2] at @s run function datapack:ekko_functions/winder2

execute at @p[tag=Ekko] run execute as @e[type=minecraft:armor_stand,tag=Winder,scores={Timer=41..}] at @s facing entity @p[tag=Ekko] feet run teleport @s ^ ^ ^2
execute as @p[tag=Ekko] at @s if entity @e[type=armor_stand,tag=Winder,scores={Timer=41..},distance=..2] run function datapack:ekko_functions/winderreturn

scoreboard players add @e[type=armor_stand,tag=Winder] Timer 1
execute if entity @e[type=armor_stand,tag=Winder,scores={Timer=60..}] run tag @e[tag=EkkoTimeWinderHit2] remove EkkoTimeWinderHit2
kill @e[type=armor_stand,tag=Winder,scores={Timer=60..}]

# Passive
execute as @e[scores={EkkoResonance=1}] at @s run particle minecraft:dust 1 1 1 1 ~ ~0.2 ~ 0.5 0 0.5 0 5
execute as @e[scores={EkkoResonance=2}] at @s run particle minecraft:dust 0 1 1 1 ~ ~0.2 ~ 0.5 0 0.5 0 10

execute at @p[tag=Ekko,scores={Attack=1..}] run scoreboard players add @e[sort=nearest,limit=1,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD,nbt={HurtTime:10s}] EkkoResonance 1
execute as @e[tag=!Ekko,scores={EkkoResonance=3..}] at @s run function datapack:ekko_functions/passive

scoreboard players add @e[tag=EkkoPassiveCD] EkkoPassiveTimer 1
tag @e[tag=EkkoPassiveCD,scores={EkkoPassiveTimer=100..}] remove EkkoPassiveCD
scoreboard players reset @e[scores={EkkoPassiveTimer=100..}] EkkoPassiveTimer

# Phase Dive
scoreboard players add @p[tag=Ekko,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Ekko,scores={Ability2CD=100..}] as @p[scores={Shift=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ekko\'s Lightsaber","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ekko_functions/weapon1shift

execute as @p[tag=Ekko] at @s if entity @e[type=minecraft:area_effect_cloud,tag=ekkodive] run particle minecraft:enchanted_hit ~ ~ ~ 1 0.5 1 0 50
execute as @p[tag=Ekko] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=ekkodive] feet run tp @s ^ ^ ^2
execute at @e[type=minecraft:area_effect_cloud,tag=ekkodive] if entity @p[tag=Ekko,distance=..3] run tag @p[tag=Ekko] add EkkoDiving
execute as @e[type=minecraft:area_effect_cloud,tag=ekkodive] at @s if entity @p[tag=Ekko,distance=..3] run kill @s

execute at @p[tag=Ekko,tag=EkkoDiving] run particle minecraft:soul_fire_flame ^-0.5 ^1.3 ^0.5 0.1 0.1 0.1 0 10
scoreboard players add @p[tag=Ekko,tag=EkkoDiving] Timer 1
execute as @p[gamemode=!spectator,tag=EkkoDiving,tag=Ekko,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ekko\'s Lightsaber","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ekko_functions/phasediving
tag @p[tag=Ekko,scores={Timer=40..}] remove EkkoDiving
scoreboard players reset @p[tag=Ekko,scores={Timer=40..}] Timer

# Parallel Convergence
scoreboard players add @p[tag=Ekko,scores={Ability3CD=..299}] Ability3CD 1
execute as @p[tag=Ekko,scores={Ability3CD=300},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ekko\'s Z-Drive","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Ekko,scores={COS=1..}] at @s run function datapack:ekko_functions/weapon2cos

scoreboard players add @e[type=armor_stand,tag=convergence] Timer 1
execute at @e[tag=convergence,type=armor_stand,scores={Timer=25..}] run particle minecraft:flash ~ ~ ~ 0 0 0 0 10
execute at @e[tag=convergence,type=armor_stand,scores={Timer=25..}] run effect give @e[distance=..7,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ekko,tag=!InLabyrinth] minecraft:slowness 1 1 true
execute at @e[tag=convergence,type=armor_stand,scores={Timer=25..}] as @p[tag=Ekko,distance=..7] at @s run function datapack:ekko_functions/convergence

kill @e[type=minecraft:armor_stand,tag=convergence,scores={Timer=65..}]

# Chronobreak
scoreboard players add @p[tag=Ekko,scores={Ability4CD=..499}] Ability4CD 1
execute at @p[gamemode=!spectator,tag=Ekko,scores={Ability4CD=500..}] unless entity @e[type=armor_stand,tag=chronobreak] run summon armor_stand ~ ~ ~ {Tags:["chronobreak"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1,display:{color:8900331}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,display:{color:8900331}}},{id:"minecraft:light_blue_concrete_powder",Damage:3,Count:1b}]}
execute as @p[gamemode=!spectator,tag=Ekko,scores={Ability4CD=500..}] as @p[tag=Ekko,scores={Shift=1..}] as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ekko\'s Z-Drive","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ekko_functions/weapon2shift

scoreboard players add @p[tag=Ekko,scores={Ability4CD=500..}] Timer2 1
execute as @p[tag=Ekko,scores={Ability4CD=500..}] as @p[tag=Ekko,scores={Timer2=15}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ChronobreakPath"],Radius:0.5,Duration:50,Particle:"dust 0 1 1 1"}
execute as @e[type=minecraft:area_effect_cloud,tag=ChronobreakPath] at @s store result score @s Timer run data get entity @s Age
execute as @e[type=armor_stand,tag=chronobreak] at @s run tp @s @e[type=minecraft:area_effect_cloud,scores={Timer=49},limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=chronobreak] at @s unless entity @p[gamemode=!spectator,tag=Ekko] run kill @s

scoreboard players reset @p[tag=Ekko,scores={Timer2=15..}] Timer2
# Guts Passive
effect give @s[scores={kits.health=..10}] minecraft:strength 1 0 true

# Abilities CD
title @s[scores={kits.timer3=..0}] actionbar ["",{"text":"Cleave: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Handcannon: ","color":"red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability2CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"Arrows: ","color":"gold"},{"score":{"name":"@s[tag=Guts]","objective":"kits.timer4"},"color":"gold"},{"text":"/5","color":"gold"}]
title @s[scores={kits.timer3=1..}] actionbar ["",{"text":"Cleave: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Handcannon: ","color":"red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability2CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"Reloading Time: ","color":"gold"},{"score":{"name":"@s[tag=Guts]","objective":"kits.timer3"},"color":"gold"},{"text":"/20","color":"gold"}]

# Cleave
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,tag=!GutsPivotSwing,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability1CD=100..},predicate=kits:items/guts/dragonslayer] at @s run function kits:guts/weapon1shift
execute as @s[gamemode=!spectator,tag=GutsPivotSwing,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability1CD=100..},predicate=kits:items/guts/dragonslayer] at @s run function kits:guts/pivotswing

execute as @e[type=area_effect_cloud,tag=DragonslayerSwing] at @s run function kits:guts/dragonslayerparticles

execute as @e[tag=GutsBleeding] at @s run function kits:guts/bleeddamage 

# Berserker Armor
execute as @s[gamemode=!spectator,tag=!GutsBerserker,scores={kits.criterion.shift=1..},predicate=kits:items/guts/handcannon] at @s run function kits:guts/weapon2shift
execute as @s[tag=GutsBerserker,tag=Guts] run function kits:guts/berserkerarmordamage

# Handcannon
scoreboard players add @s[scores={kits.ability2CD=..199}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability2CD=200},predicate=kits:items/guts/handcannon] at @s run function kits:guts/weapon2cos

# Pivot Swing
scoreboard players add @s[tag=GutsPivotSwing] kits.timer 1
tag @s[tag=GutsPivotSwing,scores={kits.timer=20..}] remove GutsPivotSwing
scoreboard players reset @s[scores={kits.timer=20..}] kits.timer

# Crossbow
execute as @s[scores={kits.criterion.crossbow=1..},predicate=kits:items/guts/crossbow] at @s positioned ~ ~1.5 ~ run function kits:guts/crossbowuse
execute as @s[scores={kits.criterion.shift=1..},predicate=kits:items/guts/crossbow] at @s[scores={kits.timer4=..4}] run function kits:guts/crossbowreload
scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1

execute if entity @s[scores={kits.criterion.shiftOff=2..}] run scoreboard players set @s[scores={kits.criterion.shiftOff=2..}] kits.timer3 0
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff

# Dragonslayer passive
execute as @s[scores={kits.criterion.swordNetherite=1..}] at @s run function kits:guts/dragonslayerhit

# Fairy Dust passive
execute as @s[tag=GutsBerserker,scores={kits.criterion.kill=1..}] at @s run function kits:guts/prevent_armor_move/removearmor

# Preventing removing Berserker Armor
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.head minecraft:player_head[custom_name="Berserker Armor"] run function kits:guts/prevent_armor_move/helmet
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.chest minecraft:leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:guts/prevent_armor_move/chestplate
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.legs minecraft:netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:guts/prevent_armor_move/leggings
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.feet minecraft:netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:guts/prevent_armor_move/boots

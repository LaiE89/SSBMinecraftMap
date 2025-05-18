# Abilities CD
title @s[scores={kits.timer3=..0}] actionbar ["",{"text":"Smash: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Cleave: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Handcannon: ","color":"red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"Arrows: ","color":"gold"},{"score":{"name":"@s[tag=Guts]","objective":"kits.timer4"},"color":"gold"},{"text":"/5","color":"gold"}]
title @s[scores={kits.timer3=1..}] actionbar ["",{"text":"Smash: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Cleave: ","color":"dark_red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Handcannon: ","color":"red"},{"score":{"name":"@s[tag=Guts]","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"Reloading Time: ","color":"gold"},{"score":{"name":"@s[tag=Guts]","objective":"kits.timer3"},"color":"gold"},{"text":"/20","color":"gold"}]

# Smash
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=100..},predicate=kits:items/guts/dragonslayer] unless entity @e[type=area_effect_cloud,tag=GutsDragonslayerCleave] at @s run function kits:char/guts/weapon1cos
execute as @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] at @s run function kits:char/guts/smash/main

# Cleave
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=100..},predicate=kits:items/guts/dragonslayer] unless entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] at @s run function kits:char/guts/weapon1shift
execute as @e[type=area_effect_cloud,tag=GutsDragonslayerCleave] at @s run function kits:char/guts/cleave/main

# Berserker Armor
execute as @s[gamemode=!spectator,tag=!GutsBerserker,scores={kits.criterion.shift=1..},predicate=kits:items/guts/handcannon] at @s run function kits:char/guts/weapon2shift
execute as @s[tag=GutsBerserker,tag=Guts] run function kits:char/guts/berserkerarmor/damage

# Handcannon
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability3CD=200..},predicate=kits:items/guts/handcannon] unless entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] at @s run function kits:char/guts/weapon2cos

# Pivot Swing
scoreboard players add @s[tag=GutsPivotSwing] kits.timer 1
tag @s[tag=GutsPivotSwing,scores={kits.timer=20..}] remove GutsPivotSwing
scoreboard players reset @s[scores={kits.timer=20..}] kits.timer

# Crossbow
execute as @s[scores={kits.criterion.crossbow=1..},predicate=kits:items/guts/crossbow] at @s positioned ~ ~1.5 ~ run function kits:char/guts/crossbow/use
execute as @s[scores={kits.criterion.shift=1..},predicate=kits:items/guts/crossbow] at @s[scores={kits.timer4=..4}] run function kits:char/guts/crossbow/reload
scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
execute if entity @s[scores={kits.criterion.shiftOff=2..}] run scoreboard players set @s[scores={kits.criterion.shiftOff=2..}] kits.timer3 0
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff

# Dragonslayer passive
execute as @s[scores={kits.criterion.attack=1..},predicate=kits:items/guts/dragonslayer] at @s run function kits:char/guts/dragonslayerhit

# Fairy Dust passive
execute as @s[tag=GutsBerserker,scores={kits.criterion.kill=1..}] at @s run function kits:char/guts/berserkerarmor/removearmor

# Preventing removing Berserker Armor
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.head minecraft:player_head[custom_name="Berserker Armor"] run function kits:char/guts/berserkerarmor/helmet
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.chest minecraft:leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:char/guts/berserkerarmor/chestplate
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.legs minecraft:netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:char/guts/berserkerarmor/leggings
execute as @s[tag=GutsBerserker,tag=Guts] at @s unless items entity @s armor.feet minecraft:netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}] run function kits:char/guts/berserkerarmor/boots

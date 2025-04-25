# Action Bar
title @s[tag=!ChosenUndeadTired,scores={kits.timer5=0}] actionbar [{"text":"Stamina: ","color":"gold","bold":false},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Sunlight Spear","color":"yellow","bold":true}]
title @s[tag=!ChosenUndeadTired,scores={kits.timer5=1}] actionbar [{"text":"Stamina: ","color":"gold","bold":false},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Wrath of the Gods","color":"dark_purple","bold":true}]
title @s[tag=!ChosenUndeadTired,scores={kits.timer5=2}] actionbar [{"text":"Stamina: ","color":"gold","bold":false},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Tranquil Walk of Peace","color":"dark_red","bold":true}]

title @s[tag=ChosenUndeadTired,scores={kits.timer5=0}] actionbar [{"text":"TIRED: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Sunlight Spear","color":"yellow","bold":true}]
title @s[tag=ChosenUndeadTired,scores={kits.timer5=1}] actionbar [{"text":"TIRED: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Wrath of the Gods","color":"dark_purple","bold":true}]
title @s[tag=ChosenUndeadTired,scores={kits.timer5=2}] actionbar [{"text":"TIRED: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"kits.timer"},"color":"gold","bold":false},{"text":"/100","color":"gold","bold":false},{"text":" || ","color":"white","bold":false},{"text":"FP: ","color":"aqua","bold":false},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua","bold":false},{"text":"/100","color":"aqua","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Flasks: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red","bold":false},{"text":"/5","color":"red","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Tranquil Walk of Peace","color":"dark_red","bold":true}]

# Stamina
tag @s[tag=ChosenUndeadTired,scores={kits.timer=99..}] remove ChosenUndeadTired
tag @s[tag=!ChosenUndeadTired,scores={kits.timer=..0}] add ChosenUndeadTired
scoreboard players add @s[tag=!ChosenUndeadResting,scores={kits.timer=..99}] kits.timer 1
scoreboard players add @s[tag=ChosenUndeadResting] kits.timer2 1
tag @s[tag=ChosenUndeadResting,scores={kits.timer2=10..}] remove ChosenUndeadResting
scoreboard players reset @s[scores={kits.timer2=10..}] kits.timer2

# wasd detection
execute at @s run function kits:generic/inputs/wasd/main

# Roll
scoreboard players add @s[scores={kits.ability1CD=..9}] kits.ability1CD 1
execute as @s[tag=!ChosenUndeadTired,tag=!ChosenUndeadSunlightSpear,scores={kits.ability1CD=10..},predicate=kits:items/chosenundead/claymore] at @s[gamemode=!spectator,scores={kits.criterion.COS=1..}] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] run function kits:char/chosenundead/roll/roll
execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,limit=1,sort=nearest] eyes run function kits:char/chosenundead/roll/rolling

# Stamp 
scoreboard players add @s[scores={kits.ability2CD=..9}] kits.ability2CD 1
execute as @s[predicate=kits:items/chosenundead/claymore,gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s[tag=!ChosenUndeadStamp,scores={kits.ability2CD=10..}] if score @s kits.timer4 matches 10.. unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] rotated ~ 90 run function kits:char/chosenundead/stamp/stamp
execute if entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] as @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] at @s run function kits:char/chosenundead/stamp/slashanimation
execute if entity @e[tag=ChosenUndeadStampSlashed] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] run tag @e[tag=ChosenUndeadStampSlashed] remove ChosenUndeadStampSlashed 

# Estus
execute if score @s kits.criterion.kill matches 1.. at @s run function kits:char/chosenundead/flask/flaskreplenish
scoreboard players add @s[scores={kits.ability3CD=..9}] kits.ability3CD 1
execute as @s[predicate=kits:items/chosenundead/flask,scores={kits.criterion.shift=1..}] at @s[scores={kits.ability3CD=10..}] run function kits:char/chosenundead/flask/flaskswitch

# Miracles
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=10..},predicate=kits:items/chosenundead/talisman] at @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] run function kits:char/chosenundead/miracles/switch

scoreboard players add @s[scores={kits.ability5CD=..19}] kits.ability5CD 1

execute as @s[tag=!ChosenUndeadSunlightSpear,tag=!ChosenUndeadStamp,scores={kits.ability5CD=20..},predicate=kits:items/chosenundead/talisman] at @s[scores={kits.criterion.COS=1..}] if score @s kits.timer5 matches 0 if score @s kits.timer4 matches 25.. unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] run function kits:char/chosenundead/miracles/sunlightspear
execute if entity @s[tag=ChosenUndeadSunlightSpear] at @s run function kits:char/chosenundead/miracles/sunlightspearanimation
execute if entity @e[type=area_effect_cloud,tag=ChosenUndeadSpear,tag=!ChosenUndeadSpearCharge] as @e[type=area_effect_cloud,tag=ChosenUndeadSpear,tag=!ChosenUndeadSpearCharge] at @s run function kits:char/chosenundead/miracles/sunlightspearthrown

execute as @s[tag=!ChosenUndeadSunlightSpear,tag=!ChosenUndeadStamp,scores={kits.ability5CD=20..},predicate=kits:items/chosenundead/talisman] at @s[scores={kits.criterion.COS=1..}] if score @s kits.timer5 matches 1 if score @s kits.timer4 matches 50.. unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] run function kits:char/chosenundead/miracles/wrathofthegods
execute if entity @e[type=area_effect_cloud,tag=ChosenUndeadWrathOfTheGods] as @e[type=area_effect_cloud,tag=ChosenUndeadWrathOfTheGods] at @s run function kits:char/chosenundead/miracles/wrath_of_the_gods/run

execute as @s[tag=!ChosenUndeadSunlightSpear,tag=!ChosenUndeadStamp,scores={kits.ability5CD=20..},predicate=kits:items/chosenundead/talisman] at @s[scores={kits.criterion.COS=1..}] if score @s kits.timer5 matches 2 if score @s kits.timer4 matches 75.. unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll] unless entity @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] run function kits:char/chosenundead/miracles/walkofpeace
execute if entity @s[tag=ChosenUndeadTranquilWalk] at @s run function kits:char/chosenundead/miracles/walkofpeaceeffect

# Attack
execute as @s[scores={kits.criterion.attack=1..}] at @s run function kits:char/chosenundead/attack

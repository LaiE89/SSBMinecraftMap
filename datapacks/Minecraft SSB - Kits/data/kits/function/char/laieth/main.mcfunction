# Ability CDs
title @s[scores={kits.timer3=0}] actionbar ["",{"text":"Card: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"gold"},{"text":"/100","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=1}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Seal of Orichalcos","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=2}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Solemn Strike","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=3}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Dark Hole","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=4}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Mirror Force","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=5}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Draining Shield","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]
title @s[scores={kits.timer3=6}] actionbar ["",{"text":"Card: ","color":"gold"},{"text":"Waboku","color":"gold"},{"text":" || ","color":"white"},{"text":"Possession:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Ritual:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/1500","color":"white"}]

# Highlighting Weapon Wheel
execute at @s anchored eyes run function kits:char/laieth/weaponwheelfacing

# Weapon Wheel
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] Shift
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff

scoreboard players add @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/laieth/laieth_weapon] kits.criterion.shiftOn 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn

## Weapon Wheel
execute as @s[scores={kits.criterion.shiftOn=1}] at @s anchored eyes run function kits:char/laieth/weaponwheel
execute at @s[scores={kits.criterion.shiftOn=1..}] as @e[type=item_display,tag=LaiethWeapons] at @s run tp @s ~ ~ ~ facing entity @p[tag=Laieth]
execute as @s[scores={kits.criterion.shiftOff=3..}] at @s run kill @e[type=item_display,tag=LaiethWeapons]

scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

# Sword of Sitrouille
scoreboard players add @s[scores={kits.criterion.attack=1..},predicate=kits:items/laieth/sword] kits.timer 1
execute as @s[scores={kits.timer=3..}] at @s run function kits:char/laieth/swordhit
scoreboard players reset @s[scores={kits.timer=3..}] kits.timer

# Yugioh Cards
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=99}] at @s run execute store result score @s kits.timer3 run random value 1..6
execute as @s[tag=!LaiethPossessing,scores={kits.ability1CD=100..},predicate=kits:items/laieth/cards] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/laieth/yugiohuse

# Orichalcos
scoreboard players add @e[type=area_effect_cloud,tag=LaiethOrichalcos] kits.timer 1
execute as @e[type=area_effect_cloud,tag=LaiethOrichalcos,scores={kits.timer=10..}] at @s run function kits:char/laieth/cards/orichalcosparticles

# Solemn Strike
execute as @s[scores={kits.timer7=1..}] at @s run function kits:char/laieth/lightning/main
execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s if score @s kits.specific.laiethStun matches 1.. run function kits:char/laieth/cards/solemnstrikestun

# Traps
execute as @s[scores={kits.criterion.damage=1..}] at @s run function kits:char/laieth/cards/activatetraps

# Possession
scoreboard players add @s[scores={kits.ability2CD=..299}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=300..},predicate=kits:items/laieth/possession] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/laieth/possessionuse
execute as @s[tag=LaiethPossessing] at @s run function kits:char/laieth/possessionmain

# Teleport
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=300..},predicate=kits:items/laieth/teleport] at @s run execute at @s[scores={kits.criterion.COS=1..}] run function kits:char/laieth/teleportuse
execute as @e[type=area_effect_cloud,tag=LaiethBolt] at @s run function kits:char/laieth/teleportbolt

# Ritual
scoreboard players add @s[scores={kits.ability4CD=..1499}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=1500..},predicate=kits:items/laieth/ritual] at @s as @s[scores={kits.criterion.COS=1..}] run function kits:char/laieth/ritualuse
execute as @e[type=area_effect_cloud,tag=LaiethRitualStand] at @s run function kits:char/laieth/ritualmain

execute as @s[scores={kits.criterion.death=1..}] run tag @e[tag=LaiethPossessed] remove LaiethPossessed
execute as @s[scores={kits.criterion.death=1..}] run tag @e[tag=LaiethGettingRitualed] remove LaiethGettingRitualed

# ability display
title @s actionbar [{"text":"Cursed Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"}]

# cursed energy
scoreboard players add @s kits.ability2CD 1
execute if score @s kits.ability2CD matches 10.. run scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute if score @s kits.ability2CD matches 10.. run scoreboard players set @s kits.ability2CD 0
execute if score @s kits.criterion.death matches 1.. run function kits:char/gojo/passives/death

# cooldowns
scoreboard players add @s[scores={kits.ability3CD=..29}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..29}] kits.ability4CD 1
scoreboard players add @s[scores={kits.ability5CD=..19}] kits.ability5CD 1
scoreboard players add @s[scores={kits.ability6CD=..199}] kits.ability6CD 1

# using conditions
execute if entity @s[predicate=kits:items/gojo/inherited] at @s run function kits:char/gojo/inherited/use
execute if entity @s[predicate=kits:items/gojo/special] at @s run function kits:char/gojo/special/use

# assigns tasks to entities
execute as @e[type=area_effect_cloud] at @s run function kits:char/gojo/assign_tasks/to_aecs
execute if score @s kits.ability1CD matches 20..50 at @s run function kits:char/gojo/passives/rct/on
execute if score @s kits.ability1CD matches 50..100 at @s run function kits:char/gojo/passives/infinity/on
execute if score @s kits.criterion.attack matches 1.. at @s run function kits:char/gojo/passives/attack

# kits.ability1CD = cursed energy
# kits.ability2CD = cursed energy rate
# kits.ability3CD = red delay
# kits.ability4CD = blue delay
# kits.ability5CD = teleport delay
# kits.ability6CD = domain delay

# kits.timer2 = gojo.energy.lost
# kits.timer3 = gojo.energy.lostMultiplier
# kits.timer4 = gojo.raycast.step
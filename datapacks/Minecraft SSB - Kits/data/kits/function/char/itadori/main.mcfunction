# Ability Display
title @s[tag=!Sukuna] actionbar [{"text":"Cursed Energy: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Rage: ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/100","color":"white"}]
title @s[tag=Sukuna] actionbar [{"text":"Cursed Energy: ","color":"red","bold":false},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white","bold":false},{"text":"/100","color":"white","bold":false},{"text":" || ","color":"white","bold":false},{"text":"Boredom: ","color":"dark_red","bold":false},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/100","color":"white"}]

# Cooldowns
scoreboard players add @s[scores={kits.timer2=..3}] kits.timer2 1
scoreboard players add @s[scores={kits.ability2CD=..9}] kits.ability2CD 1
scoreboard players add @s[scores={kits.ability3CD=..9}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
scoreboard players add @s[scores={kits.ability5CD=..19}] kits.ability5CD 1

# Using Conditions
execute if entity @s[tag=!Sukuna,scores={kits.criterion.damage=1..}] run scoreboard players add @s kits.timer 10
execute if entity @s[tag=!Sukuna,scores={kits.criterion.damage=1..}] run scoreboard players set @s[scores={kits.timer=101..}] kits.timer 100
execute if entity @s[scores={kits.criterion.death=1..}] at @s run function kits:char/itadori/itadori/swap
execute if entity @s[tag=Sukuna] at @s run function kits:char/itadori/sukuna/boredom
execute if entity @s[tag=!Sukuna,tag=!ItadoriRage,scores={kits.timer=100..}] at @s run function kits:char/itadori/itadori/rage
execute if entity @s[tag=!Sukuna,predicate=kits:items/itadori/itadori,gamemode=!spectator] at @s run function kits:char/itadori/itadori/use
execute if entity @s[tag=Sukuna,predicate=kits:items/itadori/itadori,gamemode=!spectator] at @s run function kits:char/itadori/sukuna/use

# Assigns Tasks to Entities
execute as @e[type=area_effect_cloud] at @s run function kits:char/itadori/assign_tasks/to_aecs
execute if entity @s[tag=ItadoriBlackflash] at @s run function kits:char/itadori/itadori/black_flash/main
execute if score @s[scores={kits.ability1CD=..99}] kits.timer2 matches 4.. at @s run function kits:char/itadori/energyregen

# kits.ability1CD = cursed energy
# kits.ability2CD = delay: blackflash
# kits.ability3CD = delay: statcheck
# kits.ability4CD = delay: slice
# kits.ability5CD = delay: domain
# kits.ability6CD = pyro energy
# kits.timer = Rage / Boredom
# kits.timer2 = energy regen rate
# kits.timer3 = blackflash duration

title @s actionbar ["",{"text":"Throw Sword:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Evade:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"R050 Spear:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"A140 Gravity:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/500","color":"white"}]

execute as @s[scores={kits.criterion.attack=1..}] run function kits:char/2b/throwswordregain

# Throw Sword
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @e[type=armor_stand,tag=2bsword] at @s run function kits:char/2b/throwsword
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/2b/sword] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/2b/weapon1cos

# Evade
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/2b/sword] as @s[scores={kits.ability2CD=100..}] at @s run function kits:char/2b/weapon1shift
execute as @s[tag=2BEvasion] at @s run function kits:char/2b/evade
execute if entity @e[type=minecraft:armor_stand,tag=2bhologram] run function kits:char/2b/evadebeforeteleport

# Spear
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/2b/pod] as @s[scores={kits.ability3CD=200..}] at @s run function kits:char/2b/weapon2cos
execute as @e[type=area_effect_cloud,tag=2bspear] at @s run function kits:char/2b/speartravel

# Gravity
scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/2b/pod] as @s[scores={kits.ability4CD=500..}] at @s run function kits:char/2b/weapon2shift
execute if entity @e[type=area_effect_cloud,tag=2bgravityprojectile] as @e[type=area_effect_cloud,tag=2bgravityprojectile] at @s run function kits:char/2b/gravityprojectile
execute if entity @e[type=area_effect_cloud,tag=2bgravityactivated] as @e[type=area_effect_cloud,tag=2bgravityactivated] at @s run function kits:char/2b/gravitypull
execute if entity @s[scores={kits.ability4CD=60..80}] run effect clear @e[tag=2BinGravity] levitation
execute if entity @s[scores={kits.ability4CD=60..80}] run tag @e[tag=2BinGravity] remove 2BinGravity

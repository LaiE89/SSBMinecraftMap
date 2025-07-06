# Ability CDs
title @s actionbar ["",{"text":"Crippling Strike:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Decimate:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Apprehend:","color":"yellow"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Noxian Guillotine:","color":"dark_red"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/500","color":"white"}]

# Passive
execute at @s[scores={kits.criterion.attack=1..}] run execute as @e[tag=!Darius,distance=..8,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function kits:char/darius/applystacks
effect give @s[tag=DariusRage] minecraft:strength 1 0 true
effect give @s[tag=DariusRage] minecraft:speed 1 1 true
execute at @s[tag=DariusRage] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 0 2 force

execute as @e[tag=DariusNoxianMight] at @s run function kits:char/darius/noxianmight

scoreboard players add @s[tag=DariusRage] kits.timer 1
tag @s[scores={kits.timer=150..}] remove DariusRage
scoreboard players reset @s[scores={kits.timer=150..}] kits.timer

# Decimate
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/darius/axe] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/darius/weapon1shift
execute at @s rotated ~ 0 run tp @e[type=area_effect_cloud,tag=DariusDecimate] ^ ^ ^0.5
execute as @e[type=area_effect_cloud,tag=DariusDecimate] at @s run function kits:char/darius/decimate

# Apprehend
scoreboard players add @s[scores={kits.ability2CD=..149}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.ability2CD=150..},predicate=kits:items/darius/skills] as @s[scores={kits.criterion.COS=1..}] at @s rotated ~ 0 run function kits:char/darius/weapon2cos

# Crippling Strike
scoreboard players add @s[scores={kits.ability3CD=..99}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=100..},predicate=kits:items/darius/axe] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/darius/weapon1cos

# Noxian Guillotine
scoreboard players reset @s[scores={kits.criterion.kill=1..}] kits.timer

scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=500..},predicate=kits:items/darius/skills] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:char/darius/weapon2shift
execute if entity @s[tag=DariusNoxianGuillotine,scores={kits.criterion.kill=1..}] run function kits:char/darius/guillotinereset

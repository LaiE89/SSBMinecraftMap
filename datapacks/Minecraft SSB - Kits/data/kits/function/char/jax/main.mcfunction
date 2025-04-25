# Ability CDs
title @s actionbar ["",{"text":"Leap Strike:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Empower:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/40","color":"white"},{"text":" || ","color":"white"},{"text":"Counter Strike:","color":"light_purple"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Grandmaster's Might:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/500","color":"white"}]

# Counterstrike
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=200..},predicate=kits:items/jax/unit] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/jax/weapon2cos

execute as @s[tag=JaxCounterstrike] at @s run effect give @e[distance=..6,tag=!Jax] minecraft:weakness 1 9 true

execute at @s[tag=JaxCounterstrike] run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~2.5 ~ 0.6 0 0.6 0 70 force
execute at @s[tag=JaxCounterstrike] run particle flame ~ ~2.5 ~ 0.7 0 0.7 0 3 force

scoreboard players add @s[tag=JaxCounterstrike] kits.timer 1

execute at @s[tag=JaxCounterstrike,scores={kits.timer=40..}] as @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Jax,tag=!InLabyrinth] at @s run function kits:char/jax/counterstrikedamage
execute as @s[tag=JaxCounterstrike,scores={kits.timer=40..}] at @s run function kits:char/jax/counterstrike

scoreboard players reset @s[scores={kits.timer=40..},tag=Jax] kits.timer

# Grandmaster's Might
scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=500..},predicate=kits:items/jax/unit] as @s[gamemode=!spectator,tag=Jax,scores={kits.criterion.shift=1..}] at @s run function kits:char/jax/weapon2shift

# Leapstrike
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=100..},predicate=kits:items/jax/lamp] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:char/jax/weapon1shift

execute at @s run execute if entity @e[tag=JaxLeapstrikeTo] at @s facing entity @e[tag=JaxLeapstrikeTo] eyes run tp @s ^ ^1 ^1.25
execute as @e[tag=JaxLeapstrikeTo] at @s if entity @p[tag=Jax,distance=..4] run execute at @s run function kits:char/jax/leapstrikedamage

# Empower
scoreboard players add @s[scores={kits.ability1CD=..39}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=40..},tag=!JaxEmpowered] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/jax/lamp] at @s run function kits:char/jax/weapon1cos

scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.timer3 1

execute at @s[tag=JaxEmpowered] run particle flame ^-0.4 ^1 ^1 0.1 0.1 0.1 0 5 force
execute at @s[scores={kits.criterion.attack=1..},tag=JaxEmpowered] as @e[limit=1,sort=nearest,nbt={HurtTime:10s},type=!#kits:non_entity,tag=!Invincible,tag=!Jax,tag=!InLabyrinth] at @s run function kits:char/jax/empowereddamage

scoreboard players add @s[tag=JaxEmpowered] kits.timer2 1
scoreboard players set @s[tag=JaxEmpowered,scores={kits.timer2=60..}] kits.ability1CD 0
tag @s[tag=JaxEmpowered,scores={kits.timer2=60..}] remove JaxEmpowered
scoreboard players reset @s[scores={kits.timer2=60..}] kits.timer2

# Passive
execute at @s[scores={kits.timer3=3..}] as @e[limit=1,sort=nearest,nbt={HurtTime:10s},type=!#kits:non_entity,tag=!Invincible,tag=!Jax,tag=!InLabyrinth] at @s run function kits:char/jax/3hitpassive
scoreboard players reset @s[scores={kits.timer3=3..}] kits.timer3

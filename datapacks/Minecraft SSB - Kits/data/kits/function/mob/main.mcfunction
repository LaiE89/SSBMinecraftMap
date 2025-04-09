# Ability CDs
title @s[tag=!Mob100Percent,scores={kits.timer3=..99}] actionbar ["",{"text":"Psychic Shove:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Telekinesis:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Energy Absorption:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Psychic Barrier:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability4CD"},"color":"white"},{"text":"/70","color":"white"},{"text":" || ","color":"white"},{"text":"Percentage: ","color":"aqua"},{"score":{"name":"@s[tag=Mob]","objective":"kits.timer3"},"color":"aqua"},{"text":"/100","color":"aqua"}]
title @s[tag=Mob100Percent,scores={kits.timer3=..99}] actionbar ["",{"text":"Psychic Shove:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Telekinesis:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Psychic Lift:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s[tag=Mob]","objective":"kits.ability4CD"},"color":"white"},{"text":"/70","color":"white"},{"text":" || ","color":"white"},{"text":"100 PERCENT: ","color":"aqua"},{"score":{"name":"@s[tag=Mob]","objective":"kits.timer"},"color":"aqua"},{"text":"/200","color":"aqua"}]

# 100% passive
execute as @s[tag=!Mob100Percent,scores={kits.timer3=..99}] run scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.timer3 20
execute as @s[tag=!Mob100Percent,scores={kits.timer3=..99}] run scoreboard players add @s[scores={kits.criterion.death=1..}] kits.timer3 30
execute as @s[tag=!Mob100Percent,scores={kits.timer3=..99}] run scoreboard players add @s[scores={kits.criterion.absorbDmg=1..}] kits.timer3 20

tag @s[scores={kits.timer3=100..}] add Mob100Percent
execute as @s[scores={kits.timer3=100..}] at @s run function kits:mob/mobreaching100

scoreboard players add @s[tag=Mob100Percent] kits.timer 1
execute as @s[tag=Mob100Percent,scores={kits.timer=200..}] at @s run function kits:mob/finish100

execute at @s[tag=Mob100Percent] run particle entity_effect{color:[0.502,0.502,0.502,1.00]} ~ ~0.75 ~ 0 0 0 10 2 force

# Psychic Shove
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},tag=!Mob100Percent] as @s[scores={kits.ability1CD=100..},predicate=kits:items/mob/offensive] at @s run execute as @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] at @s run function kits:mob/weapon1shift

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},tag=Mob100Percent] as @s[scores={kits.ability1CD=100..},predicate=kits:items/mob/offensive] at @s run execute as @e[distance=..10,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] at @s run function kits:mob/weapon1shift100

# Telekinesis
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..},tag=!Mob100Percent] as @s[scores={kits.ability2CD=100..},predicate=kits:items/mob/offensive] at @s run function kits:mob/weapon1cos

execute at @s[scores={kits.criterion.COS=1..},tag=Mob100Percent] as @s[scores={kits.ability2CD=100..},predicate=kits:items/mob/offensive] at @s run function kits:mob/weapon1cos100

execute as @e[type=armor_stand,tag=telekinesis,tag=!facingMob] at @s run tp @s ~ ~ ~ facing entity @p[tag=Mob]
tag @e[type=armor_stand,tag=telekinesis,tag=!facingMob] add facingMob
execute as @e[type=armor_stand,tag=telekinesis] at @s run tp @s ^ ^0.7 ^-0.5
execute as @e[type=armor_stand,tag=telekinesis] at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1.4 ~ 0.3 0.3 0.3 0 20 force
execute at @e[type=armor_stand,tag=telekinesis] as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] at @s run function kits:mob/telekinesis
scoreboard players add @e[type=armor_stand,tag=telekinesis] kits.timer 1
kill @e[type=armor_stand,tag=telekinesis,scores={kits.timer=20..}]

# Absorb
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},tag=!Mob100Percent] as @s[scores={kits.ability3CD=200..},predicate=kits:items/mob/defensive] at @s run function kits:mob/weapon2shift

execute as @s[scores={kits.criterion.shift=1..},gamemode=!spectator,tag=Mob100Percent] as @s[scores={kits.ability3CD=200..},predicate=kits:items/mob/defensive] at @s run function kits:mob/weapon2shift100

execute at @s[tag=MobAbsorb] run particle enchant ~ ~1 ~ 0.4 1 0.4 10 25 force

execute at @s[tag=MobAbsorb] as @e[tag=projectile,tag=!cosmetics,tag=!telekinesis,distance=..4] at @s run function kits:mob/absorb

scoreboard players add @s[tag=MobAbsorb] kits.timer2 1
tag @s[tag=MobAbsorb,scores={kits.timer2=40..}] remove MobAbsorb
scoreboard players reset @s[scores={kits.timer2=40..}] kits.timer2

# Shield
scoreboard players add @s[scores={kits.ability4CD=..69}] kits.ability4CD 1
execute as @s[scores={kits.criterion.COS=1..},tag=!Mob100Percent] as @s[scores={kits.ability4CD=70..},predicate=kits:items/mob/defensive] at @s run function kits:mob/weapon2cos

execute as @s[scores={kits.criterion.COS=1..},tag=Mob100Percent] as @s[scores={kits.ability4CD=70..},predicate=kits:items/mob/defensive] at @s run function kits:mob/weapon2cos100

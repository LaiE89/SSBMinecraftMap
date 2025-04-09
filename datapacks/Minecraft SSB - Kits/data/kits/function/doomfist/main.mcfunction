# Ability CDs
title @s actionbar ["",{"text":"Rocket Punch:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/120","color":"white"},{"text":" || ","color":"white"},{"text":"Rising Uppercut:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/120","color":"white"},{"text":" || ","color":"white"},{"text":"Seismic Slam:","color":"red"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/120","color":"white"},{"text":" || ","color":"white"},{"text":"Meteor Strike","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/800","color":"white"},{"text":" || ","color":"white"},{"text":"Ammo: ","color":"light_purple"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"light_purple"},{"text":"/4","color":"light_purple"}]

# Handcannon
scoreboard players add @s[scores={kits.ability5CD=..3}] kits.timer 1
scoreboard players add @s[scores={kits.timer=50}] kits.ability5CD 1
scoreboard players set @s[scores={kits.timer=50..}] kits.timer 0
execute as @s[tag=!DoomfistMeteor,tag=!DoomfistCharge,scores={kits.ability5CD=1..},predicate=kits:items/doomfist/handcannon] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:doomfist/weapon1cos

execute as @e[type=area_effect_cloud,tag=handcannonshot,tag=!facinghandcannonshot] at @s run tp @s ~ ~ ~ facing entity @p[tag=Doomfist]
tag @e[type=area_effect_cloud,tag=handcannonshot,tag=!facinghandcannonshot] add facinghandcannonshot
execute as @e[type=area_effect_cloud,tag=handcannonshot] at @s run function kits:doomfist/handcannonprojectile

# Rocket Punch
scoreboard players add @s[scores={kits.ability1CD=..119}] kits.ability1CD 1
execute at @s[gamemode=!spectator,tag=!DoomfistMeteor,scores={kits.ability1CD=120..}] run execute at @s[scores={kits.criterion.shift=1..},predicate=kits:items/doomfist/handcannon] run tag @s add DoomfistCharge

scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1

scoreboard players add @s[tag=DoomfistCharge,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/doomfist/handcannon] kits.criterion.shiftOn 1
#scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn
execute at @s[scores={kits.criterion.shiftOn=1}] run playsound minecraft:entity.creeper.primed neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute at @s[scores={kits.criterion.shiftOn=1..39}] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 10 force
execute at @s[scores={kits.criterion.shiftOn=1..}] run particle firework ^-0.5 ^1 ^1 0.2 0.2 0.2 0.1 1 force
execute at @s[scores={kits.criterion.shiftOn=40}] run playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute at @s[scores={kits.criterion.shiftOn=40}] run particle flash ~ ~ ~ 0 0 0 0 1 force
execute at @s[scores={kits.criterion.shiftOn=40..}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 10 force
execute at @s[tag=DoomfistPunching] run particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @s[scores={kits.criterion.shiftOff=2..}] at @s[scores={kits.criterion.shiftOn=40..}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 0 1
execute as @s[scores={kits.criterion.shiftOff=2..}] at @s[scores={kits.criterion.shiftOn=20..39}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 1 1
execute as @s[scores={kits.criterion.shiftOff=2..}] at @s[scores={kits.criterion.shiftOn=..19}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 2 1

execute as @s[scores={kits.criterion.shiftOn=80..}] at @s run function kits:doomfist/forcepunch

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=40..}] at @s run scoreboard players set @s kits.raycastTick 0
execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=40..}] at @s positioned ~ ~1.5 ~ run function kits:doomfist/doomfistpassive6

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=20..39}] at @s run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=20..39}] at @s positioned ~ ~1.5 ~ run function kits:doomfist/doomfistpassive7

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=..19}] at @s run scoreboard players set @s kits.raycastTick3 0
execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=..19}] at @s positioned ~ ~1.5 ~ run function kits:doomfist/doomfistpassive8

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=1..}] at @s run tag @s add DoomfistPunching
execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=40..}] at @s run tag @s add DoomfistMax
execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=1..}] at @s run tag @s remove DoomfistCharge

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=1..}] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=rocketpunch] run function kits:doomfist/rocketpunchend2

execute as @s[scores={kits.criterion.shiftOff=2..}] as @s[scores={kits.criterion.shiftOn=1..}] at @s run scoreboard players set @s kits.ability1CD 0

scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOn
execute as @s[tag=DoomfistPunching] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=rocketpunch,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2.5
execute as @e[type=minecraft:area_effect_cloud,tag=rocketpunch] at @s if entity @p[tag=Doomfist,distance=..3] run function kits:doomfist/rocketpunchend

execute at @s[tag=DoomfistPunching] as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run function kits:doomfist/rocketpunchdamage

# Rising Uppercut
scoreboard players add @s[scores={kits.ability2CD=..119}] kits.ability2CD 1
execute as @s[tag=!DoomfistMeteor,tag=!DoomfistCharge,scores={kits.criterion.COS=1..}] as @s[scores={kits.ability2CD=120..},predicate=kits:items/doomfist/mobility] at @s run function kits:doomfist/weapon2cos

# Seismic Slam
scoreboard players add @s[scores={kits.ability3CD=..119}] kits.ability3CD 1
execute as @s[gamemode=!spectator,tag=!DoomfistMeteor,tag=!DoomfistCharge,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability3CD=120..},predicate=kits:items/doomfist/mobility] at @s run function kits:doomfist/weapon2shift
execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=seismicslam] eyes run tp @s ^ ^0.5 ^1.5
execute at @e[type=area_effect_cloud,tag=seismicslam] if entity @p[tag=Doomfist,distance=..3] as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run function kits:doomfist/slamdamage
execute as @e[type=area_effect_cloud,tag=seismicslam] at @s if entity @p[tag=Doomfist,distance=..3] run function kits:doomfist/slamparticles

# Meteor Strike
scoreboard players add @s[scores={kits.ability4CD=..799}] kits.ability4CD 1
execute as @s[tag=!DoomfistCharge,tag=Doomfist,scores={kits.criterion.COS=1..}] as @s[scores={kits.ability4CD=800..},predicate=kits:items/doomfist/meteor] at @s run function kits:doomfist/weapon3cos

effect give @s[scores={kits.timer2=1..19}] slowness 1 9 true
execute as @s[scores={kits.timer2=20}] at @s run function kits:doomfist/meteorstart

execute as @s[scores={kits.timer2=40..}] as @s[tag=DoomfistMeteor,scores={kits.criterion.COS=1..},predicate=kits:items/doomfist/meteor] at @s run function kits:doomfist/meteorclick

scoreboard players add @s[tag=DoomfistMeteor] kits.timer2 1
execute as @s[tag=DoomfistMeteor,scores={kits.timer2=100..}] at @s run function kits:doomfist/meteorclick

scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

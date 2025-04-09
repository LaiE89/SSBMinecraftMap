# Ability CDs
title @s actionbar ["",{"text":"Yoyo:","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"PK Fire:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"PK Thunder:","color":"aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"PSI Lifeup:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"PSI Flash:","color":"dark_green"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"}},{"text":"/150","color":"white"}]

# Hold shift stuff
scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1

# SMAAAASH!!
execute as @s[gamemode=!spectator,tag=!NessInThunder,scores={kits.criterion.attack=1..},tag=!NessPKFlash,predicate=kits:items/ness/bat] at @s run function kits:ness/smashrng

# Yoyo
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,tag=!NessInThunder,scores={kits.criterion.COS=1..},tag=!NessPKFlash,tag=!NessGuard] as @s[scores={kits.ability1CD=100..},predicate=kits:items/ness/bat] at @s run function kits:ness/weapon1cos

execute as @e[type=armor_stand,tag=NessYoyo] at @s run function kits:ness/yoyo

# Guard
execute as @s[gamemode=!spectator,tag=Ness,tag=!NessInThunder,scores={kits.criterion.shift=1..},tag=!NessPKFlash] as @s[predicate=kits:items/ness/bat] at @s run function kits:ness/weapon1shift
execute as @s[tag=NessGuard,scores={kits.criterion.shiftOff=2..}] at @s run function kits:ness/guardend

# PK Fire
scoreboard players add @s[scores={kits.ability2CD=..49}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..},tag=!NessInThunder,tag=!NessPKFlash,tag=!NessGuard] as @s[scores={kits.ability2CD=50..},predicate=kits:items/ness/pk] at @s run function kits:ness/weapon2cos

execute as @e[type=area_effect_cloud,tag=pkfire,tag=!facingpkfire] at @s run tp @s ~ ~ ~ facing entity @p[tag=Ness]
execute as @e[type=area_effect_cloud,tag=pkfire] at @s run function kits:ness/pkfireprojectile

execute at @e[type=area_effect_cloud,tag=pkfired] run function kits:ness/pkfire


# PK Thunder
scoreboard players add @s[scores={kits.ability3CD=..149}] kits.ability3CD 1
execute as @s[gamemode=!spectator,tag=Ness,scores={kits.criterion.shift=1..},tag=!NessInThunder,tag=!NessPKFlash,tag=!NessGuard] as @s[scores={kits.ability3CD=150..},predicate=kits:items/ness/pk] at @s run function kits:ness/weapon2shift

execute as @e[type=minecraft:interaction,tag=pkthunderinteraction] at @s run function kits:ness/pkthunderinteraction

execute at @s[tag=NessInThunder] run particle soul_fire_flame ~ ~1.5 ~ 0.15 0.15 0.15 0 10 force

execute as @s[tag=NessInThunder,scores={kits.timer=10..}] run effect give @s[scores={kits.criterion.shift=1..}] minecraft:levitation 1 9 true
effect clear @s[tag=NessInThunder,scores={kits.criterion.shiftOff=2..}] minecraft:levitation
execute at @s[tag=NessInThunder] as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run function kits:ness/pkthunderdamage

execute as @s[tag=NessInThunder,scores={kits.timer=20..}] at @s if entity @e[type=armor_stand,tag=pkthunderness,distance=..2] run function kits:ness/pkrocket

execute as @s[tag=NessPKRocket] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=pkrocketplace,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
execute at @s[tag=NessPKRocket] as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run function kits:ness/pkrocketdamage
execute at @s[tag=NessPKRocket] run particle dust{color:[0.000,1.000,1.000],scale:2} ~ ~1 ~ 0.5 1 0.5 0 10 force
execute at @s[tag=NessPKRocket] run particle poof ~ ~1 ~ 0.4 0.4 0.4 0 10 force

execute as @s[tag=NessPKRocket] at @s if entity @e[type=minecraft:area_effect_cloud,tag=pkrocketplace,distance=..3] run function kits:ness/pkrocketend

scoreboard players add @s[tag=NessInThunder] kits.timer 1
execute as @s[tag=NessInThunder,scores={kits.timer=100..}] at @s run function kits:ness/pkthunderend

execute as @s[tag=NessInThunder] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:light_blue_glazed_terracotta"}]}] run function kits:ness/inpkthunder

# PSI Flash
scoreboard players add @s[scores={kits.ability4CD=..149}] kits.ability4CD 1
execute as @s[gamemode=!spectator,tag=Ness,scores={kits.criterion.shift=1..},tag=!NessInThunder,tag=!NessPKFlash,tag=!NessGuard] as @s[scores={kits.ability4CD=150..},predicate=kits:items/ness/psi] at @s run function kits:ness/weapon3shift

effect give @s[tag=NessPKFlash] minecraft:slowness 2 9 true
effect give @s[tag=NessPKFlash] minecraft:weakness 2 9 true
execute at @s[tag=NessPKFlash] run particle cloud ~ ~0.5 ~ 0.4 1 0.4 0 2 force

execute as @e[type=armor_stand,tag=PKFlashBomb] at @s run function kits:ness/psiflash

execute if entity @s[tag=NessPKFlash,scores={kits.criterion.shiftOff=2..}] as @e[type=armor_stand,tag=PKFlashBomb] at @s run function kits:ness/psiflashexplode

execute if entity @e[tag=NessCrying] run scoreboard players add @s kits.timer3 1
execute as @e[tag=NessCrying] at @s run function kits:ness/crying

# End hold shift stuff
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff

# PSI Lifeup
scoreboard players add @s[scores={kits.ability5CD=..99}] kits.ability5CD 1
execute as @s[scores={kits.criterion.COS=1..},tag=!NessInThunder,tag=!NessPKFlash,tag=!NessGuard] as @s[scores={kits.ability5CD=100..},predicate=kits:items/ness/psi] at @s run function kits:ness/weapon3cos

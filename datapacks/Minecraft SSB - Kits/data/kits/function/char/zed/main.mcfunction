# Ability CDs
title @s actionbar ["",{"text":"Razor Shuriken:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Shadow Slash:","color":"dark_gray"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Living Shadow:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Death Mark:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/500","color":"white"}]

# Passive
execute at @s if entity @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run function kits:char/zed/passive/getdividedhealth
execute as @s[scores={kits.criterion.attack=1..}] if score @s kits.health4 <= @s kits.health3 as @e[limit=1,sort=nearest,tag=!Zed,tag=!InLabyrinth,tag=!Invincible,nbt={HurtTime:10s}] at @s run function kits:char/zed/passive/damage

# Shurikens
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.criterion.COS=1..},predicate=kits:items/zed/shurikens] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/zed/weapon1cos
execute as @e[type=area_effect_cloud,tag=zedshuriken] at @s run function kits:char/zed/shuriken/main

# Shadow Slash
scoreboard players add @s[scores={kits.ability2CD=..49}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/zed/shurikens] as @s[scores={kits.ability2CD=50..}] at @s run function kits:char/zed/weapon1shift

# Living Shadow
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.criterion.COS=1..},predicate=kits:items/zed/shadow] as @s[scores={kits.ability3CD=300..}] at @s run function kits:char/zed/weapon2cos

execute at @s[gamemode=!spectator,tag=!ZedNoSwitch,scores={kits.criterion.shift=1..},predicate=kits:items/zed/shadow] run function kits:char/zed/weapon2shift
tp @e[type=area_effect_cloud,tag=ZedShadow2] @s
execute at @e[type=armor_stand,tag=ZedShadow] if entity @e[type=area_effect_cloud,tag=ZedShadow2,distance=..2] run kill @e[type=area_effect_cloud,tag=ZedShadow2]

# Death Mark
scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[scores={kits.criterion.COS=1..},predicate=kits:items/zed/mark] at @s as @s[scores={kits.ability4CD=500..}] run function kits:char/zed/weapon3cos

execute if entity @e[tag=ZedDeathmarked] as @e[tag=ZedDeathmarked] at @s run function kits:char/zed/deathmark/deathmarked

execute at @s[gamemode=!spectator,tag=!ZedNoSwitch2,scores={kits.criterion.shift=1..},predicate=kits:items/zed/mark] run function kits:char/zed/weapon3shift
tp @e[type=area_effect_cloud,tag=ZedUltShadow2] @s
execute at @e[type=armor_stand,tag=ZedUltShadow] run execute if entity @e[type=area_effect_cloud,tag=ZedUltShadow2,distance=..2] run kill @e[type=area_effect_cloud,tag=ZedUltShadow2]

scoreboard players add @e[type=armor_stand,tag=ZedShadow] kits.timer2 1
kill @e[type=armor_stand,tag=ZedShadow,scores={kits.timer2=150..}]
scoreboard players add @e[type=armor_stand,tag=ZedUltShadow] kits.timer2 1
kill @e[type=armor_stand,tag=ZedUltShadow,scores={kits.timer2=150..}]

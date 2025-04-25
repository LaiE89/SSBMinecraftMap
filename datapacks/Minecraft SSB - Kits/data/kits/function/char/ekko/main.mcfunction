# Ability CDs
title @s actionbar ["",{"text":"Timewinder:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Parallel Convergence:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Phase Dive:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Chronobreak:","color":"dark_blue"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]

# Timewinder
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=100..},predicate=kits:items/ekko/bat] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/ekko/weapon1cos
execute as @e[type=armor_stand,tag=EkkoTimeWinder] at @s run function kits:char/ekko/winder/projectile

# Passive
execute at @s if entity @e[distance=..30,scores={kits.specific.ekkoResonance=1..}] as @e[distance=..30,scores={kits.specific.ekkoResonance=1..}] at @s run function kits:char/ekko/passive/resonance
execute at @s[scores={kits.criterion.attack=1..}] run scoreboard players add @e[sort=nearest,limit=1,tag=!Ekko,tag=!InLabyrinth,tag=!Invincible,tag=!EkkoPassiveCD,nbt={HurtTime:10s}] kits.specific.ekkoResonance 1
execute if entity @e[tag=EkkoPassiveCD] as @e[tag=EkkoPassiveCD] at @s run function kits:char/ekko/passive/cooldown

# Phase Dive
execute at @s run function kits:generic/inputs/wasd/main
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.ability2CD=100..}] as @s[scores={kits.criterion.shift=1},predicate=kits:items/ekko/bat] at @s run function kits:char/ekko/weapon1shift
execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,limit=1,sort=nearest] eyes run function kits:char/ekko/phasedive/rolling
execute at @s[tag=EkkoDiving] run function kits:char/ekko/phasedive/phasediving

# Parallel Convergence
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=300},predicate=kits:items/ekko/zdrive] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/ekko/weapon2cos
execute as @e[type=area_effect_cloud,tag=EkkoConvergence] at @s run function kits:char/ekko/convergence/assign

# Chronobreak
scoreboard players add @s[scores={kits.ability4CD=..599}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.ability4CD=600..}] as @s[scores={kits.criterion.shift=1..}] as @s[predicate=kits:items/ekko/zdrive] at @s run function kits:char/ekko/weapon2shift
execute as @s[gamemode=!spectator,scores={kits.ability4CD=600..},tag=!EkkoChronobreakTeleporting] at @s run function kits:char/ekko/chronobreak/main
execute if entity @s[tag=EkkoChronobreakTeleporting] as @e[type=area_effect_cloud,tag=EkkoChronobreakImage] at @s run function kits:char/ekko/chronobreak/tp_path

execute as @e[type=area_effect_cloud,tag=Ekko_VFX_ExpandingSphere] at @s run function kits:char/ekko/expanding_sphere/run

# Ability CDs
title @s actionbar ["",{"text":"Timewinder:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Parallel Convergence:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Phase Dive:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Chronobreak:","color":"dark_blue"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]

# Timewinder
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=100..},predicate=kits:items/ekko/bat] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:ekko/weapon1cos
execute as @e[type=armor_stand,tag=Winder] at @s run function kits:ekko/winderprojectile

# Passive
execute as @e[scores={kits.specific.ekkoResonance=1}] at @s run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~0.2 ~ 0.5 0 0.5 0 5 force
execute as @e[scores={kits.specific.ekkoResonance=2}] at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.2 ~ 0.5 0 0.5 0 10 force

execute at @s[scores={kits.criterion.attack=1..}] run scoreboard players add @e[sort=nearest,limit=1,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD,nbt={HurtTime:10s}] kits.specific.ekkoResonance 1
execute as @e[tag=!Ekko,scores={kits.specific.ekkoResonance=3..}] at @s run function kits:ekko/passive

scoreboard players add @e[tag=EkkoPassiveCD] kits.specific.ekkoPassiveTick 1
tag @e[tag=EkkoPassiveCD,scores={kits.specific.ekkoPassiveTick=100..}] remove EkkoPassiveCD
scoreboard players reset @e[scores={kits.specific.ekkoPassiveTick=100..}] kits.specific.ekkoPassiveTick

# Phase Dive
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.ability2CD=100..}] as @s[scores={kits.criterion.shift=1},predicate=kits:items/ekko/bat] at @s run function kits:ekko/weapon1shift

execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=ekkodive] run particle enchanted_hit ~ ~ ~ 1 0.5 1 0 50 force
execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=ekkodive] feet run tp @s ^ ^ ^2
execute at @e[type=minecraft:area_effect_cloud,tag=ekkodive] if entity @p[tag=Ekko,distance=..3] run tag @s add EkkoDiving
execute as @e[type=minecraft:area_effect_cloud,tag=ekkodive] at @s if entity @p[tag=Ekko,distance=..3] run kill @s

execute at @s[tag=EkkoDiving] run particle soul_fire_flame ^-0.5 ^1.3 ^0.5 0.1 0.1 0.1 0 10 force
scoreboard players add @s[tag=EkkoDiving] kits.timer 1
execute as @s[gamemode=!spectator,tag=EkkoDiving,scores={kits.criterion.shift=1..},predicate=kits:items/ekko/bat] at @s run function kits:ekko/phasediving
tag @s[scores={kits.timer=40..}] remove EkkoDiving
scoreboard players reset @s[scores={kits.timer=40..}] kits.timer

# Parallel Convergence
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=300},predicate=kits:items/ekko/zdrive] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:ekko/weapon2cos

execute as @e[type=area_effect_cloud,tag=convergencestand] at @s run function kits:ekko/convergencelaunching
execute as @e[type=area_effect_cloud,tag=ekkoconvergenceprojectile] at @s run function kits:ekko/convergenceprojectile
execute as @e[type=area_effect_cloud,tag=convergenceactivated] at @s run function kits:ekko/convergencefield

# Chronobreak
scoreboard players add @s[scores={kits.ability4CD=..599}] kits.ability4CD 1
execute at @s[gamemode=!spectator,scores={kits.ability4CD=600..}] unless entity @e[type=area_effect_cloud,tag=chronobreak] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:2000,Tags:["chronobreak"]}
execute as @s[gamemode=!spectator,scores={kits.ability4CD=600..}] as @s[scores={kits.criterion.shift=1..}] as @s[predicate=kits:items/ekko/zdrive] at @s run function kits:ekko/weapon2shift

scoreboard players add @s[scores={kits.ability4CD=600..}] kits.timer2 1
execute as @s[scores={kits.ability4CD=600..}] as @s[scores={kits.timer2=15}] at @s run function kits:ekko/chronobreaksummon
execute as @e[type=area_effect_cloud,tag=chronobreak] at @s run function kits:ekko/chronobreakimage

scoreboard players reset @s[scores={kits.timer2=15..}] kits.timer2

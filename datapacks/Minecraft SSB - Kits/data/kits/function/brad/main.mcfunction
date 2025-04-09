# Combo Dial
title @s[tag=!BradBusterPunches,tag=!BradMachineGunFist] actionbar ["",{"text":"Combo Dial: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"kits.timer6"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer7"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer8"},"color":"white"}]
title @s[tag=BradBusterPunches] actionbar ["",{"text":"BUSTER PUNCHES","color":"gold","bold":true}]
title @s[tag=BradMachineGunFist] actionbar ["",{"text":"MACHINE GUN FIST","color":"gold","bold":true}]
execute if entity @e[type=area_effect_cloud,tag=Bradheadbuttplace] run title @s actionbar ["",{"text":"CHARGING HEADBUTT","color":"gold","bold":true}]
title @s[tag=BradCry] actionbar ["",{"text":"CRY","color":"gold","bold":true}]
title @s[tag=BradHorsestance] actionbar ["",{"text":"HORSE STANCE","color":"gold","bold":true}]
title @s[tag=BradJoy] actionbar ["",{"text":"JOY","color":"gold","bold":true}]

# Basic Abilities

scoreboard players add @s[scores={kits.ability1CD=..29}] kits.ability1CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=30..},predicate=kits:items/brad/wristbands] at @s run function kits:brad/weapon1cos

scoreboard players add @s[scores={kits.ability2CD=..29}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=30..},predicate=kits:items/brad/wristbands] at @s run function kits:brad/weapon1shift


# Brad Move 1: 1 on every move - Buster Punches
execute as @s[scores={kits.timer6=1}] as @s[scores={kits.timer7=1}] as @s[scores={kits.timer8=1}] at @s run tag @s add BradBusterPunches

scoreboard players add @s[tag=BradBusterPunches] kits.timer 1
effect give @s[tag=BradBusterPunches] minecraft:strength 1 1 true
execute at @s[tag=BradBusterPunches,scores={kits.criterion.attack=1..}] as @e[distance=..6,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth,nbt={HurtTime:10s}] at @s run function kits:brad/busterpunches
tag @s[tag=BradBusterPunches,scores={kits.timer=60..}] remove BradBusterPunches
scoreboard players reset @s[scores={kits.timer=60..}] kits.timer


# Brad Move 2: 3 on punch - Machine Gun Fist
execute as @s[scores={kits.timer6=3}] at @s run tag @s add BradMachineGunFist

scoreboard players add @s[gamemode=!spectator,tag=BradMachineGunFist] kits.timer2 1
execute as @s[gamemode=!spectator,tag=BradMachineGunFist] at @s run function kits:brad/machinegunfist
tag @s[tag=BradMachineGunFist,scores={kits.timer2=40..}] remove BradMachineGunFist
scoreboard players reset @s[scores={kits.timer2=40..}] kits.timer2


# Brad Move 3: 1 on zipper + 2 on push - Fireball
execute as @s[scores={kits.timer8=2}] as @s[scores={kits.timer7=1}] at @s run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["BradsFireball","projectile"]}
execute as @e[type=area_effect_cloud,tag=BradsFireball] at @s run function kits:brad/fireballprojectile


# Brad Move 4: 1 on Push + 2 on Zipper - Headbutt
execute as @s[scores={kits.timer8=1}] as @s[scores={kits.timer7=2}] at @s run function kits:brad/headbutt

execute as @s at @s facing entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace,limit=1,sort=nearest] eyes run tp @s ^ ^0.1 ^0.8
execute if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace] at @s run particle minecraft:poof ~ ~1 ~ 0.4 0.4 0.4 0 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace] at @s as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run function kits:brad/headbuttdamage

execute as @s at @s if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace,distance=..2] run function kits:brad/headbuttend


# Brad Move 5: 1 on Punch + 2 on Zipper - Cry
execute as @s[scores={kits.timer6=1}] as @s[scores={kits.timer7=2}] at @s run tag @s add BradCry

scoreboard players add @s[tag=BradCry] kits.timer3 1
execute at @s[tag=BradCry] run particle falling_water ^-0.2 ^1.6 ^0.4 0 0 0 0 1 force
execute at @s[tag=BradCry] run particle falling_water ^0.2 ^1.6 ^0.4 0 0 0 0 1 force
effect clear @s[tag=BradCry,scores={kits.timer3=1}]
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:fire_resistance 3 9 true
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:speed 3 1 true
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:regeneration 3 1 true
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:night_vision 3 0 true
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:saturation 3 9 true
effect give @s[tag=BradCry,scores={kits.timer3=1}] minecraft:water_breathing 3 9 true
tag @s[tag=BradCry,scores={kits.timer3=70..}] remove BradCry
scoreboard players reset @s[scores={kits.timer3=70..}] kits.timer3


# Brad Move 6: 1 on Punch + 2 on Push - Scream
execute as @s[scores={kits.timer6=1}] as @s[scores={kits.timer8=2}] at @s run playsound minecraft:entity.witch.death neutral @a[distance=..40] ~ ~ ~ 10 0 1
execute as @s[scores={kits.timer6=1}] as @s[scores={kits.timer8=2}] at @s as @e[distance=..40,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run function kits:brad/scream


# Brad Move 7: 2 on Punch + 1 on Zipper - Surprise Attack
execute as @s[scores={kits.timer6=2}] as @s[scores={kits.timer7=1}] at @s as @e[distance=..8,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run function kits:brad/surpriseattack


# Brad Move 8: 2 on Punch + 1 on Push - Horse Stance
execute as @s[scores={kits.timer6=2}] as @s[scores={kits.timer8=1}] at @s run tag @s add BradHorsestance

scoreboard players add @s[tag=BradHorsestance] kits.timer4 1
execute at @s[tag=BradHorsestance] run particle cloud ~ ~ ~ 0 1 0 0.2 10 force
effect give @s[tag=BradHorsestance,scores={kits.timer4=1}] minecraft:resistance 3 1 true
effect give @s[tag=BradHorsestance,scores={kits.timer4=1}] minecraft:slowness 3 2 true
effect give @s[tag=BradHorsestance,scores={kits.timer4=1}] minecraft:absorption 3 1 true
effect clear @s[tag=BradHorsestance,scores={kits.timer4=60..}]
tag @s[tag=BradHorsestance,scores={kits.timer4=60..}] remove BradHorsestance
scoreboard players reset @s[scores={kits.timer4=60..}] kits.timer4


# Brad Move 9: 3 on Zipper - Diesel F Bomb
execute as @s[scores={kits.timer7=3..}] at @s run function kits:brad/fbomb
execute as @e[type=armor_stand,tag=BradFBomb] at @s unless block ~ ~-0.36 ~ #kits:passable run function kits:brad/fbombexplode
execute as @e[type=area_effect_cloud,tag=BradFBombFire] at @s run function kits:brad/fbombfield


# Brad Move 10: 3 on push - Joy
execute as @s[scores={kits.timer8=3..}] at @s run tag @s add BradJoy
execute as @s[scores={kits.timer8=3..}] at @s run playsound minecraft:entity.mooshroom.convert neutral @a[distance=..40] ~ ~ ~ 3 0.5 1

scoreboard players add @s[tag=BradJoy] kits.timer5 1
execute at @s[tag=BradJoy] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 0.4 1 0.4 0 50 force
effect give @s[tag=BradJoy,scores={kits.timer5=1}] minecraft:instant_health
effect give @s[tag=BradJoy,scores={kits.timer5=1}] minecraft:speed 3 6 true
effect give @s[tag=BradJoy,scores={kits.timer5=1}] minecraft:nausea 8 0 true
effect give @s[tag=BradJoy,scores={kits.timer5=1}] minecraft:strength 3 0 true

tag @s[tag=BradJoy,scores={kits.timer5=60..}] remove BradJoy
scoreboard players reset @e[scores={kits.timer5=60..}] kits.timer5

scoreboard players set @s[scores={kits.timer9=3..}] kits.timer8 0
scoreboard players set @s[scores={kits.timer9=3..}] kits.timer7 0
scoreboard players set @s[scores={kits.timer9=3..}] kits.timer6 0
scoreboard players set @s[scores={kits.timer9=3..}] kits.timer9 0

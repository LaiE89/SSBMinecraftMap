# Ability CDs
title @s[scores={kits.timer3=21..}] actionbar ["",{"text":"Weapons: ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/30","color":"white"},{"text":" || ","color":"white"},{"text":"Necroplasm: ","color":"green"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"green"},{"text":"/100","color":"green"}]
title @s[scores={kits.timer3=..20}] actionbar ["",{"text":"Weapons: ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/30","color":"white"},{"text":" || ","color":"white"},{"text":"Necroplasm: ","color":"green"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"red"},{"text":"/100","color":"red"}]

# AK47
scoreboard players add @s[scores={kits.ability1CD=..29}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=30..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/spawn/ak47] at @s run function kits:spawn/weapon1cos

scoreboard players add @s[tag=SpawnShootingAK] kits.timer 1

execute at @s[tag=SpawnShootingAK,scores={kits.timer=1}] run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["AKBullet","projectile"]}
execute at @s[tag=SpawnShootingAK,scores={kits.timer=1}] run particle cloud ^ ^1 ^0.5 0 0 0 0.5 10 force
execute at @s[tag=SpawnShootingAK,scores={kits.timer=1}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute at @s[tag=SpawnShootingAK,scores={kits.timer=4}] run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["AKBullet","projectile"]}
execute at @s[tag=SpawnShootingAK,scores={kits.timer=4}] run particle cloud ^ ^1 ^0.5 0 0 0 0.5 10 force
execute at @s[tag=SpawnShootingAK,scores={kits.timer=4}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute at @s[tag=SpawnShootingAK,scores={kits.timer=7}] run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["AKBullet","AKFinalBullet","projectile"]}
execute at @s[tag=SpawnShootingAK,scores={kits.timer=7}] run particle cloud ^ ^1 ^0.5 0 0 0 0.5 10 force
execute at @s[tag=SpawnShootingAK,scores={kits.timer=7}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute as @e[type=area_effect_cloud,tag=AKBullet] at @s run function kits:spawn/bullet
tag @s[tag=SpawnShootingAK,scores={kits.timer=8..}] remove SpawnShootingAK
scoreboard players reset @s[scores={kits.timer=8..}] kits.timer

# Chains
execute as @s[gamemode=!spectator,scores={kits.ability1CD=30..}] as @s[scores={kits.criterion.shift=1..},predicate=kits:items/spawn/ak47] at @s run function kits:spawn/weapon1shift
execute as @e[type=area_effect_cloud,tag=SpawnChains] at @s run function kits:spawn/chain

# Necroplasm Passive
execute if entity @s[scores={kits.criterion.carrot=1..}] run function kits:spawn/necroplasmeat
execute as @s[gamemode=!spectator,scores={kits.timer3=..99},nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] at @s if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] run function kits:spawn/necroplasmregen
execute as @s[gamemode=!spectator,scores={kits.timer3=..99},nbt={active_effects:[{id:"minecraft:regeneration"}]}] at @s if entity @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] run function kits:spawn/necroplasmregen2
execute at @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run particle totem_of_undying ~ ~0.5 ~ 0.4 1 0.4 0 10 force
effect give @s[scores={kits.timer3=..20}] minecraft:wither 1 9 true

# Heal
scoreboard players add @s[scores={kits.ability2CD=..29}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=30..}] as @s[scores={kits.timer3=20..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/spawn/utility] at @s run function kits:spawn/weapon2cos

# Teleport
scoreboard players add @s[scores={kits.ability3CD=..29}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=30..}] as @s[scores={kits.timer3=30..}] as @s[scores={kits.criterion.shift=1..},predicate=kits:items/spawn/utility] at @s run function kits:spawn/weapon2shift

# Lifesteal Bolts
scoreboard players add @s[scores={kits.ability4CD=..29}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=30..}] as @s[scores={kits.timer3=40..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/spawn/offensive] at @s run function kits:spawn/weapon3cos

scoreboard players add @s[tag=SpawnBolts] kits.timer2 1
execute at @s[tag=SpawnBolts,scores={kits.timer2=1}] run particle dust{color:[0.000,1.000,0.000],scale:2} ^0.5 ^1 ^0.5 0.1 0.1 0.1 0 50 force
execute at @s[tag=SpawnBolts,scores={kits.timer2=1}] run summon area_effect_cloud ^0.5 ^1 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["lifestealbolt","lifestealbolt1","projectile"]}
execute at @s[tag=SpawnBolts,scores={kits.timer2=1}] run playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 3 1.5 1

execute at @s[tag=SpawnBolts,scores={kits.timer2=9}] run particle dust{color:[0.000,1.000,0.000],scale:2} ^-0.5 ^1 ^0.5 0.1 0.1 0.1 0 50 force
execute at @s[tag=SpawnBolts,scores={kits.timer2=9}] run summon area_effect_cloud ^-0.5 ^1 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["lifestealbolt","lifestealbolt2","projectile"]}
execute at @s[tag=SpawnBolts,scores={kits.timer2=9}] run playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 3 1.5 1

execute as @e[type=area_effect_cloud,tag=lifestealbolt] at @s run function kits:spawn/lifestealbolt

tag @s[tag=SpawnBolts,scores={kits.timer2=10..}] remove SpawnBolts
scoreboard players reset @s[scores={kits.timer2=10..}] kits.timer2

# Burn
scoreboard players add @s[scores={kits.ability5CD=..29}] kits.ability5CD 1
execute as @s[gamemode=!spectator,scores={kits.ability5CD=30..}] as @s[scores={kits.timer3=50..}] as @s[scores={kits.criterion.shift=1..},predicate=kits:items/spawn/offensive] at @s run function kits:spawn/weapon3shift

execute as @e[tag=SpawnBurning] at @s run function kits:spawn/burndamage

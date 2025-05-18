scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=interaction,tag=EdwardWallInteraction] run scoreboard players set @s kits.raycastTick 4444
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:5,Tags:["EdwardExplosionLocation"]}
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] at @s run function kits:char/edward/deconstructexplosion
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run function kits:char/edward/deconstructdebris
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run execute at @s rotated ~ 0 run function kits:char/edward/circleparticles2
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run execute at @s run playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run function kits:char/edward/transmuteweaponback
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run scoreboard players set @s kits.ability3CD 0


execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,sort=nearest,limit=1] at @s run particle dust{color:[1.000,0.200,0.000],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0 200 force
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,sort=nearest,limit=1] at @s run effect give @s minecraft:wither 5 4 true
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,sort=nearest,limit=1] at @s run effect give @s minecraft:darkness 3 0 true
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run execute at @s rotated ~ 0 run function kits:char/edward/circleparticles2
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run execute at @s run playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run function kits:char/edward/transmuteweaponback
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run scoreboard players set @s kits.ability3CD 0

execute as @s[scores={kits.raycastTick=4444}] positioned ~ ~ ~ run function kits:char/edward/wallexplode
execute as @s[scores={kits.raycastTick=..15}] positioned ^ ^ ^0.5 run function kits:char/edward/deconstruct

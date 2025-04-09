scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=interaction,tag=EdwardWallInteraction] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run particle item{item:"stone"} ~ ~ ~ 0 0 0 0.1 50 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run playsound minecraft:item.trident.return neutral @a[distance=..20] ~ ~ ~ 10 1.5 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-0.5 run function kits:edward/wallpunchparticles2
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tag @s add EdwardCastingWall
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^1.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["EdwardWallProjectileOrigin"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run data modify entity @e[type=minecraft:area_effect_cloud,tag=EdwardWallProjectileOrigin,limit=1,sort=nearest] Rotation set from entity @p[tag=Edward] Rotation
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run schedule function kits:edward/wallprojectile 10t append

execute as @s[scores={kits.raycastTick=..14}] positioned ^ ^ ^0.5 run function kits:edward/wallpunchparticles

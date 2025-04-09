scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:80,Tags:["sansbones2"]}
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run playsound minecraft:item.trident.hit neutral @a[distance=..30] ~ ~ ~ 2 0.25 1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run playsound minecraft:entity.skeleton.step neutral @a[distance=..30] ~ ~ ~ 2 0.35 1
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability2CD 0

execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^0.5 run function kits:sans/sanspassive3

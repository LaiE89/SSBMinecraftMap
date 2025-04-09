scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kaneki,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 4444
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 4444
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 4444

execute positioned ~ ~-0.5 ~ run function kits:kaneki/kaguneparticles2
execute as @s[scores={kits.raycastTick=2222..2300}] positioned ^ ^ ^ as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Kaneki,tag=!InLabyrinth] at @s run function kits:kaneki/kagunedamage

execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run playsound minecraft:entity.player.hurt neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:200,Tags:["KanekiKagune"]}

execute as @s[scores={kits.raycastTick=4444}] positioned ^ ^ ^-0.5 run playsound minecraft:entity.player.hurt neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @s[scores={kits.raycastTick=4444}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:200,Tags:["KanekiKagune"]}

execute as @s[scores={kits.raycastTick=16}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=16}] positioned ^ ^ ^ run function kits:kaneki/kagunedown

execute as @s[scores={kits.raycastTick=..15}] positioned ^ ^ ^0.5 run function kits:kaneki/kanekipassive5


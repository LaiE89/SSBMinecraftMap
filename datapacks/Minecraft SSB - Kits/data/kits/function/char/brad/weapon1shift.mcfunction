playsound minecraft:entity.shulker.shoot neutral @a[distance=..10] ~ ~ ~ 2 0.5 1
particle explosion ^ ^0.3 ^1 0 0 0 0 1 force
summon area_effect_cloud ~ ~ ~ {Tags:["BradPunch2"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
execute as @e[distance=..4,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @e[distance=..4,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run damage @s 4 bypass:player_attack by @e[type=area_effect_cloud,tag=BradPunch2,limit=1,sort=nearest] from @p[tag=Brad]
kill @e[type=area_effect_cloud,tag=BradPunch2]
scoreboard players add @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] kits.timer8 1
scoreboard players add @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] kits.timer9 1
scoreboard players set @s kits.ability2CD 0

playsound minecraft:entity.shulker.shoot neutral @a[distance=..10] ~ ~ ~ 2 1.2 1
particle cloud ^ ^1 ^1 0 0 0 0.5 10 force
execute as @e[distance=..4,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.7 50 force
execute as @e[distance=..4,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run damage @s 4 bypass:player_attack by @p[tag=Brad] from @s
scoreboard players add @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] kits.timer7 1
scoreboard players add @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] kits.timer9 1
scoreboard players set @s kits.ability1CD 0

tag @s add RoseradeSeeded
scoreboard players set @p[tag=Cynthia] kits.timer6 20
scoreboard players set @p[tag=Cynthia] kits.timer7 0
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..30] ~ ~ ~ 10 0.75 1
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0 20 force
execute as @e[type=armor_stand,tag=RoseradeSeeds] at @s run function kits:char/cynthia/roserade/leechseedbreak

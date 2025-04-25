scoreboard players set @s kits.raycastTick 0
scoreboard players set @s kits.timer3 10
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..40] ~ ~ ~ 3 1.5 1
execute at @s positioned ~ ~1.5 ~ run function kits:char/2b/2bpassive3

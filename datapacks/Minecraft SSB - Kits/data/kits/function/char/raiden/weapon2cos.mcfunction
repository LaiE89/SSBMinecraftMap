execute at @s rotated ~ 0 run function kits:char/raiden/skyhighparticles
playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 5 0 1
execute at @s positioned ^ ^ ^2 as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/skyhighlaunch

scoreboard players set @s kits.ability3CD 0	

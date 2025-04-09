particle minecraft:sweep_attack ^ ^1.25 ^1 0 0 0 0 1 force
execute positioned ~ ~1.25 ~ run function kits:doomslayer/slash_crescent/play {"concavity":"400","thickness":"7","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"dust{color:[1.500,0.000,0.000],scale:1}"}
playsound minecraft:item.mace.smash_ground_heavy neutral @a[distance=..30] ~ ~ ~ 2 2 1
playsound minecraft:entity.player.attack.strong neutral @a[distance=..30] ~ ~ ~ 2 0 1
execute as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:doomslayer/bloodpunch/damage
scoreboard players set @s kits.ability7CD 0

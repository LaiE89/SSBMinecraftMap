particle sneeze ^ ^1 ^0.5 0.2 0.2 0.2 0 20 force
execute as @e[distance=..10,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:char/doomslayer/bfgdamage
scoreboard players add @s kits.timer 1
execute as @s[scores={kits.timer=50..}] at @s run function kits:char/doomslayer/bfgexplosion

tp @s[tag=!castedDoomslayerBfg] ~ ~ ~ facing entity @p[tag=Doomslayer]
tp @s[tag=castedDoomslayerBfg] ^ ^ ^-0.5
tag @s[tag=!castedDoomslayerBfg] add castedDoomslayerBfg

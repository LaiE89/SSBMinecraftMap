damage @s 0.3 bypass:player_attack_no_kb by @p[tag=Doomslayer]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 2 force
particle smoke ~ ~1 ~ 0 0 0 0.35 5 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 2 1.0 1
scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 2
#tag @s add DoomslayerShotgunned
#function kits:char/doomslayer/shotgunkb

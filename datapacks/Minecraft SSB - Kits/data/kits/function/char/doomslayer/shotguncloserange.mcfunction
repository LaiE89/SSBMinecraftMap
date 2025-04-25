damage @s 1 bypass:player_attack by @p[tag=Doomslayer]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 10 force
particle smoke ~ ~1 ~ 0 0 0 0.35 10 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 2 0.5 1
scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 3
#tag @s add DoomslayerShotgunned
#function kits:char/doomslayer/shotgunkb

damage @s 5 bypass:player_attack by @e[type=armor_stand,tag=2bsword,limit=1,sort=nearest] from @p[tag=2B]
execute as @p[tag=2B] run function kits:char/2b/throwswordregain
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 2 1
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 10

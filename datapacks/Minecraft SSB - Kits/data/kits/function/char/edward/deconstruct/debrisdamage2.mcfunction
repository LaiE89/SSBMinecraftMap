damage @s 3 bypass:player_attack by @e[type=minecraft:armor_stand,tag=EdwardDebris,limit=1,sort=nearest] from @p[tag=Edward]
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.15 50 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:block.gilded_blackstone.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:entity.player.big_fall neutral @a[distance=..20] ~ ~ ~ 10 0 1
kill @e[type=minecraft:armor_stand,tag=EdwardDebris,limit=1,sort=nearest]

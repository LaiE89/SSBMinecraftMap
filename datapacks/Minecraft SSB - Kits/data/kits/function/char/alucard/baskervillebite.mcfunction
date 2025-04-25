damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=AlucardBaskerville,limit=1,sort=nearest] from @p[tag=Alucard]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 30 force
playsound minecraft:entity.phantom.bite neutral @a[distance=..20] ~ ~ ~ 3 0.5 1
function kits:char/alucard/summonsoul
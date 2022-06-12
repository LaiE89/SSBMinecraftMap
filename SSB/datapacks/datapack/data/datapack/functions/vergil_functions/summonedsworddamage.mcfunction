function datapack:damage1
particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 30
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.4 0.4 0 30
playsound minecraft:entity.drowned.shoot neutral @a[distance=..20] ~ ~ ~ 3 2 1
kill @e[type=armor_stand,tag=summonedswords,limit=1,sort=nearest]
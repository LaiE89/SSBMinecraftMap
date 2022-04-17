effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:weakness 2 0 true
function datapack:damage1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.5 0.4 0 50
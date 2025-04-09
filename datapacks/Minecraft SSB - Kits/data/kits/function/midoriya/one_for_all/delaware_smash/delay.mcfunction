playsound minecraft:entity.creeper.primed neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
particle flash ^ ^1 ^1 0 0 0 0 1 force
effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:weakness 1 9 true
tag @s add MidoriyaCharging
schedule function kits:midoriya/one_for_all/delaware_smash/delaymidoriyause 22t append

playsound minecraft:item.crossbow.quick_charge_3 neutral @a[distance=..20] ~ ~ ~ 10 0 1
effect clear @e[tag=DenjiChained,limit=1] wither
effect clear @e[tag=DenjiChained,limit=1] slowness
scoreboard players set @s Timer3 39
tag @e[tag=DenjiChained,limit=1] add DenjiChainedGrab
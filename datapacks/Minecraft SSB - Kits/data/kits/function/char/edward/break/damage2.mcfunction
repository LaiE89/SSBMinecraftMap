tag @p[tag=Edward] remove EdwardBreak
scoreboard players reset @p[tag=Edward] kits.timer2
effect give @s minecraft:weakness 2 0 true
effect give @s minecraft:slowness 2 3 true
playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..20] ~ ~ ~ 3 1.75 1
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.15 50 force

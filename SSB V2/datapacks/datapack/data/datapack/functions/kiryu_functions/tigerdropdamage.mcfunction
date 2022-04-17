execute at @p[tag=Kiryu] run particle minecraft:sweep_attack ^ ^1.5 ^0.5
particle minecraft:crit ~ ~1.2 ~ 0.4 1 0.4 0.3 100
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 10 2 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 10 1.5 1
function datapack:damage1
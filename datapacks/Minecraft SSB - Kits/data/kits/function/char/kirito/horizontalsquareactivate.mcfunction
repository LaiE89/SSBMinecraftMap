playsound minecraft:entity.breeze.deflect neutral @a[distance=..30] ~ ~ ~ 5 0.5 
playsound minecraft:item.shield.break neutral @a[distance=..30] ~ ~ ~ 2 0.75 1
effect give @s minecraft:regeneration 1 3 true
execute as @e[distance=..15,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/kirito/horizontalsquaredamage
function kits:char/kirito/horizontalsquareend
tag @s add LaiethDrainingShield
execute as @s rotated ~ 0 positioned ^ ^2 ^3 run function kits:char/laieth/cards/drainingshieldparticles 
playsound minecraft:block.dispenser.dispense neutral @a[distance=..30] ~ ~ ~ 5 0.75 1

execute positioned ^ ^1.35 ^6 run effect give @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] slowness 1 2 true
execute positioned ^ ^1.35 ^6 run effect give @e[distance=..6,type=!#kits:non_entity,type=!minecraft:player,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] minecraft:weakness 1 1 true
execute positioned ^ ^1.35 ^6 run tp @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] @s
particle item{item:"flint"} ^ ^0.7 ^2 1 0 1 0 50 force
particle item{item:"flint"} ^ ^0.7 ^4 1 0 1 0 50 force
particle item{item:"flint"} ^ ^0.7 ^6 1 0 1 0 50 force
particle item{item:"flint"} ^ ^0.7 ^8 1 0 1 0 50 force
particle item{item:"flint"} ^ ^0.7 ^10 1 0 1 0 50 force
particle item{item:"flint"} ^ ^0.7 ^12 1 0 1 0 50 force
particle cloud ^ ^0.7 ^2 1 0 1 0 10 force
particle cloud ^ ^0.7 ^4 1 0 1 0 10 force
particle cloud ^ ^0.7 ^6 1 0 1 0 10 force
particle cloud ^ ^0.7 ^8 1 0 1 0 10 force
particle cloud ^ ^0.7 ^10 1 0 1 0 10 force
particle cloud ^ ^0.7 ^12 1 0 1 0 10 force

playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 0 1
scoreboard players set @s kits.ability2CD 0

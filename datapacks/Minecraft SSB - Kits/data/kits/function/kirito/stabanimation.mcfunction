scoreboard players add @s kits.raycastTick3 1
function kits:kirito/sliceparticles4
playsound minecraft:entity.witch.throw neutral @a[distance=..15] ~ ~ ~ 10 0.5 1
execute positioned ~ ~ ~ as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,tag=!KiritoStabbed] at @s run function kits:kirito/stabdamage
execute as @s[scores={kits.raycastTick3=..14}] positioned ^ ^ ^0.5 run function kits:kirito/stabanimation

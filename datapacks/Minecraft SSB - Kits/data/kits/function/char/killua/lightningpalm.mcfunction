scoreboard players reset @s kits.timer2 
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30]
execute as @e[distance=..10,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run function kits:char/killua/lightningpalmdamage
scoreboard players set @s kits.raycastTick2 0
execute at @s positioned ~ ~ ~ rotated ~ 0 run function kits:char/killua/killuapassive4
tag @s remove KilluaLightningPalm
tag @e[tag=KilluaKnockback] remove KilluaKnockback

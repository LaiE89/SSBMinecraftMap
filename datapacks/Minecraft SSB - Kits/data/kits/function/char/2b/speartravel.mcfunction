particle minecraft:firework ~ ~1.25 ~ 0 0.5 0 0 50
playsound minecraft:item.axe.scrape neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute as @e[distance=..1.5,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth] at @s run function kits:char/2b/speardamage
execute if entity @s[tag=2bspearforward] run tp @s ^ ^ ^1
execute if entity @s[tag=2bspearbackward] run tp @s ^ ^ ^-1

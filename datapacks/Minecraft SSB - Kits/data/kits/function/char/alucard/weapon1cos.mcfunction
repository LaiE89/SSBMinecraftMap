function kits:char/alucard/jackal_bullet/launch
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability1CD 0
scoreboard players remove @s kits.timer3 1
execute if score @s kits.timer3 matches ..0 run scoreboard players reset @s kits.timer4
execute if score @s kits.timer3 matches ..0 run effect give @s minecraft:mining_fatigue 2 9 true
execute if score @s kits.timer3 matches ..0 run tag @s add AlucardReloading
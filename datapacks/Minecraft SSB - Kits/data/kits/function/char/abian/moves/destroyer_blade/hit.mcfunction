## Execute at Enemies Hit by Destroyer Blade
# Damage
damage @s 6 minecraft:player_attack by @e[type=area_effect_cloud,tag=AbianDestroyerBlade,limit=1,sort=nearest] from @p[tag=Abian]

# Knockback
scoreboard players set @s kits.specific.abiankits.raycastTick 0
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=AbianDestroyerBlade] run function kits:char/abian/moves/destroyer_blade/kb

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 2 force
playsound entity.spider.step neutral @a[distance=..20] ~ ~ ~ 1 1.5 1
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.25 1 0.25

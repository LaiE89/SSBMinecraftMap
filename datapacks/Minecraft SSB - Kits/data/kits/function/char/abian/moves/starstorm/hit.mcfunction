## Execute at Enemies Hit by Starstorm
# Damage
damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=AbianStarstorm,limit=1,sort=nearest] from @p[tag=Abian]

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/normal
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/normal

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 10 force

# Teleports downwards
effect clear @s levitation
scoreboard players set @s kits.specific.abiankits.raycastTick 0
function kits:char/abian/moves/starstorm/fall

## Execute at Enemies Hit by Death Mark
# Combo stun
scoreboard players set @s kits.specific.abianComboStun 15

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/strong
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/strong

# Status effects
effect give @s slow_falling 1 0 true
effect give @s slowness 1 4 true

# Mark
scoreboard players set @s kits.specific.abianMarked 100

# Particles
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle large_smoke ~ ~1 ~ 0 0 0 0.5 5 force

# SFX
playsound block.conduit.deactivate neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound entity.blaze.hurt neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
playsound entity.wither.ambient neutral @a[distance=..20] ~ ~ ~ 0.25 0.75 1

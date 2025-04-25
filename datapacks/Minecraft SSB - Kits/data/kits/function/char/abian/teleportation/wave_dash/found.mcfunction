## When User Faces an Enemy While Using Wave Dash
# FX
execute positioned as @s rotated ~ 90 positioned ~ ~0.5 ~ run function kits:char/abian/vfx/particles/ripple/type1
execute positioned as @s rotated ~180 0 positioned ~ ~-0.1 ~ run function kits:char/abian/vfx/particles/afterimages/run
playsound entity.illusioner.prepare_mirror neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# Teleports to targeted enemy
execute if entity @e[type=!#kits:non_entity,distance=..2,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible,nbt={active_effects:[{id:"minecraft:levitation"}]}] run effect give @s levitation 2 0 true
scoreboard players set @s kits.raycastTick2 0
execute positioned as @e[type=!#kits:non_entity,distance=..2,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/teleportation/wave_dash/teleport
scoreboard players set @s kits.specific.abiankits.raycastTick 2222

# Resets scores
scoreboard players set @s kits.ability5CD 0

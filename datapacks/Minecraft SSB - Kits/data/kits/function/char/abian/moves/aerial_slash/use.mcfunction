## When Aerial Slash is Used
# Collision
execute rotated ~ 0 positioned ^ ^ ^1 as @e[type=!#kits:non_entity,distance=..3,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/aerial_slash/hit

# VFX
scoreboard players add @s kits.timer6 1
execute if score @s kits.timer6 matches 1 rotated ~ 0 positioned ^-0.125 ^1 ^ run function kits:char/abian/vfx/particles/slash/type1
execute if score @s kits.timer6 matches 2 rotated ~ 0 positioned ^ ^1.125 ^ run function kits:char/abian/vfx/particles/slash/type2
execute if score @s kits.timer6 matches 3.. rotated ~ 0 positioned ^ ^1.125 ^ run function kits:char/abian/vfx/particles/slash/type3
scoreboard players set @s[scores={kits.timer6=4..}] kits.timer6 0

# SFX
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 1.5 2 1

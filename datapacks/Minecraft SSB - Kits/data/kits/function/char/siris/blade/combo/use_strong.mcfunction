## When Bonus Combo is Used
# Damage
execute as @e[type=!#kits:non_entity,distance=..3,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/siris/blade/combo/hit
execute if entity @s[tag=SirisDarkfire] run function kits:char/siris/shield/gem/hit_strong

# FX
execute unless entity @s[tag=SirisDarkfire] rotated ~90 ~45 run function kits:char/siris/vfx/particles/slash/type2
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Resets combo
scoreboard players reset @s kits.ability5CD

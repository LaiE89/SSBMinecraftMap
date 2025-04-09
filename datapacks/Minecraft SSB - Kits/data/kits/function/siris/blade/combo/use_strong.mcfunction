## When Bonus Combo is Used
# Damage
execute as @e[distance=..3,tag=!Siris,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:siris/blade/combo/hit
execute if entity @s[tag=kits.specific.sirisDarkfire] run function kits:siris/shield/gem/hit_strong

# FX
execute unless entity @s[tag=kits.specific.sirisDarkfire] rotated ~90 ~45 run function kits:siris/vfx/particles/slash/type2
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Resets combo
scoreboard players reset @s kits.ability5CD

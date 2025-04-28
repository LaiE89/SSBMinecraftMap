# When force Attack is Used
execute if entity @s[tag=SirisDarkfire] run function kits:char/siris/shield/gem/hit_normal
execute unless entity @s[tag=SirisDarkfire] rotated ~90 ~45 run function kits:char/siris/vfx/particles/slash/type1

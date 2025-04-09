# When force Attack is Used
execute if entity @s[tag=kits.specific.sirisDarkfire] run function kits:siris/shield/gem/hit_normal
execute unless entity @s[tag=kits.specific.sirisDarkfire] rotated ~90 ~45 run function kits:siris/vfx/particles/slash/type1

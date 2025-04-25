tp @s ~ ~ ~ ~25 ~
data modify entity @s Pos set from entity @p[tag=Vergil] Pos
execute rotated ~ ~ positioned ^ ^1 ^3 run function kits:char/vergil/spiralswordsparticles
execute rotated ~180 ~ positioned ^ ^1 ^3 run function kits:char/vergil/spiralswordsparticles
execute rotated ~90 ~ positioned ^ ^1 ^3 run function kits:char/vergil/spiralswordsparticles
execute rotated ~-90 ~ positioned ^ ^1 ^3 run function kits:char/vergil/spiralswordsparticles

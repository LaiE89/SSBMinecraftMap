## Execute at purple during move phase
# movement
tp @s ^ ^ ^1

# collision
execute as @e[type=!#kits:non_entity,distance=..5,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/gojo/inherited/purple/hit

# fx
execute positioned ~ ~1 ~ run function kits:char/gojo/vfx/radial_forked_lightning/play {"rootsMin":"0","rootsMax":"1","branchesMin":"3","branchesMax":"6","branchLengthMin":"5","branchLengthMax":"10","particle":"dragon_breath"}
execute positioned ~ ~1 ~ run function kits:char/gojo/vfx/particles/purple
playsound entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 0.25 0.5 0.25
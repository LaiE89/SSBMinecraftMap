## When Strong Black Flash is Used
# Effects
execute as @e[distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run function kits:char/itadori/itadori/black_flash/hit

# VFX
particle flash ~ ~ ~ 0 0 0 0 2 force
playsound entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 1 1 1

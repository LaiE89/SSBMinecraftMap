## If Thrown Item Despawns or Collides With Entity or Block
# Execute at entity hit by thrown item
execute as @e[distance=..1.5,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/jacket/throw/hit2

# Particles
particle crit ~ ~1 ~ 0 0 0 1 15 force

# Kills thrown item
kill @e[limit=1,sort=nearest,tag=JacketThrowVisual,type=armor_stand]
kill @s

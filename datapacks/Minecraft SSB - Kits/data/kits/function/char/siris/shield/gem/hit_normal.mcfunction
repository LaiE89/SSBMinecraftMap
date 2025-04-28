# force Darkfire Hit
scoreboard players add @e[type=!#kits:non_entity,distance=..2,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] kits.specific.sirisDarkfire 40
execute rotated ~90 ~45 run function kits:char/siris/vfx/particles/slash/type3
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 2 0 1

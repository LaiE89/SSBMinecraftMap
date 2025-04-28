# Strong Darkfire Hit
scoreboard players add @e[type=!#kits:non_entity,distance=..3,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] kits.specific.sirisDarkfire 80
execute rotated ~90 ~45 run function kits:char/siris/vfx/particles/slash/type4
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 2 0 1

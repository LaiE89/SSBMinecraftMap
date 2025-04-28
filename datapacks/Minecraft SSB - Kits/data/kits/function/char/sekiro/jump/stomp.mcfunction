execute rotated ~ 70 run function kits:char/sekiro/jump/particles
execute as @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/jump/damage
playsound minecraft:entity.player.big_fall neutral @a[distance=..20] ~ ~ ~ 3 0 1
playsound minecraft:item.mace.smash_air neutral @a[distance=..20] ~ ~1 ~ 3 0.9 1
schedule clear kits:char/sekiro/jump/stoplevitation
effect give @s minecraft:levitation 1 29 true
schedule function kits:char/sekiro/jump/stoplevitation 5t replace
function kits:char/sekiro/jump/end
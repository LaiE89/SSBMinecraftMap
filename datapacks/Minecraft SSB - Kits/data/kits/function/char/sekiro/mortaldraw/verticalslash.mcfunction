playsound minecraft:entity.breeze.shoot neutral @a[distance=..30] ~ ~ ~ 5 0.5 1
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 5 0 1
particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
execute positioned ^ ^2 ^2 run function kits:char/sekiro/slash_crescent/play {"concavity":"400","thickness":"7","accuracy":"50","yaw":"90","pitch":"50","distance":"5","particle":"dust{color:[1.500,0.000,0.000],scale:1.5}"}
execute positioned ^ ^2 ^2 run function kits:char/sekiro/slash_crescent/play {"concavity":"400","thickness":"4","accuracy":"50","yaw":"90","pitch":"50","distance":"5","particle":"squid_ink"}

function kits:char/sekiro/spiritemblems/cost {Emblems:3}
execute positioned ^ ^1.5 ^4 as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/mortaldraw/damage

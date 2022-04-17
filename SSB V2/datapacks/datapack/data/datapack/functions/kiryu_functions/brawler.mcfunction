scoreboard players reset @s Timer3
playsound minecraft:block.gravel.fall neutral @a[distance=..12] ~ ~ ~ 3 2 1
particle minecraft:sweep_attack ^ ^1.5 ^1.5
summon area_effect_cloud ^ ^ ^0.5 {Tags:["KiryuSalt","projectile"],Duration:20}
summon area_effect_cloud ^0.01 ^0.01 ^0.5 {Tags:["KiryuSalt","projectile"],Duration:20}
summon area_effect_cloud ^-0.01 ^-0.01 ^0.5 {Tags:["KiryuSalt","projectile"],Duration:20}
particle minecraft:dust 0 0 2 2 ~ ~1 ~ 0.4 0.6 0.4 0 50
effect clear @s strength
tag @s add KiryuBrawler
summon area_effect_cloud ^ ^ ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^ ^0.01 ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^ ^0.03 ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^0.02 ^0.02 ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^-0.02 ^0.04 ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^0.03 ^ ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
summon area_effect_cloud ^-0.03 ^ ^0.5 {Tags:["handcannonshot","projectile"],Duration:10}
playsound minecraft:entity.generic.hurt neutral @a[distance=..10] ~ ~ ~ 1 0 1
particle minecraft:crit ^0.4 ^1 ^1 0.2 0.2 0.2 0 5
scoreboard players remove @s Ability5CD 1

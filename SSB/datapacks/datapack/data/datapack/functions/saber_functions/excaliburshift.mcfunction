summon area_effect_cloud ^ ^ ^1.5 {Tags:["SaberExcalibur","projectile"],Duration:50}
summon area_effect_cloud ^-0.5 ^ ^1.5 {Tags:["SaberExcalibur","projectile"],Duration:50}
summon area_effect_cloud ^0.5 ^ ^1.5 {Tags:["SaberExcalibur","projectile"],Duration:50}
particle minecraft:flash ~ ~1 ~ 0 0 0 0 20
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100
particle minecraft:dust 0 1 1 5 ~ ~ ~ 0 5 0 0 100
playsound minecraft:item.trident.thunder neutral @a[distance=..100] ~ ~ ~ 2 1.5 1
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..100] ~ ~ ~ 2 0 1
tag @s remove SaberExcalibur
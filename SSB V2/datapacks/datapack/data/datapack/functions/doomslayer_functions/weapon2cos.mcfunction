summon area_effect_cloud ^ ^ ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
summon area_effect_cloud ^ ^0.05 ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
summon area_effect_cloud ^-0.025 ^-0.05 ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
summon area_effect_cloud ^0.05 ^0.025 ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
summon area_effect_cloud ^-0.05 ^0.025 ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
summon area_effect_cloud ^0.025 ^-0.05 ^0.5 {Tags:["supershotgun","projectile"],Duration:10}
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 10 0.6 1
particle minecraft:flame ^ ^1.5 ^2 0.5 0.5 0.5 0.5 20
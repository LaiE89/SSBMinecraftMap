summon area_effect_cloud ^-0.15 ^ ^1 {Tags:["jackalbullet","projectile"],Duration:6}
summon area_effect_cloud ^0.15 ^ ^1 {Tags:["jackalbullet","projectile"],Duration:6}
summon area_effect_cloud ^ ^ ^1 {Tags:["jackalbullet","projectile"],Duration:6}
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
scoreboard players set @s Ability1CD 0
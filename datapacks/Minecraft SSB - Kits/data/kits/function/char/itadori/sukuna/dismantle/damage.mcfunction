execute store result score @p[tag=Sukuna] kits.timer4 run random value 1..3
execute if score @p[tag=Sukuna] kits.timer4 matches 1 at @s facing entity @p[tag=Sukuna] eyes rotated ~ 0 positioned ^-1.75 ^2.75 ^0.25 run function kits:char/itadori/vfx/particles/dismantle
execute if score @p[tag=Sukuna] kits.timer4 matches 2 at @s facing entity @p[tag=Sukuna] eyes rotated ~180 0 positioned ^-1.75 ^2.75 ^-0.25 run function kits:char/itadori/vfx/particles/dismantle
execute if score @p[tag=Sukuna] kits.timer4 matches 3 at @s facing entity @p[tag=Sukuna] eyes rotated ~40 90 positioned ^-1.5 ^1.5 ^-1.25 run function kits:char/itadori/vfx/particles/dismantle
damage @s 0.1 bypass:player_attack_no_impact by @p[tag=Sukuna]
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 2 1
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 3 0 1
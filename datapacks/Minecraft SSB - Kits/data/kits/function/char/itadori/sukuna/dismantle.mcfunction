execute store result score @s kits.timer4 run random value 1..3
execute if score @s kits.timer4 matches 1 as @e[distance=..6,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity,limit=1,sort=nearest] at @s facing entity @p[tag=Sukuna] eyes rotated ~ 0 positioned ^-1.75 ^2.75 ^0.25 run function kits:char/itadori/vfx/particles/dismantle
execute if score @s kits.timer4 matches 2 as @e[distance=..6,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity,limit=1,sort=nearest] at @s facing entity @p[tag=Sukuna] eyes rotated ~180 0 positioned ^-1.75 ^2.75 ^-0.25 run function kits:char/itadori/vfx/particles/dismantle
execute if score @s kits.timer4 matches 3 as @e[distance=..6,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity,limit=1,sort=nearest] at @s facing entity @p[tag=Sukuna] eyes rotated ~40 90 positioned ^-1.5 ^1.5 ^-1.25 run function kits:char/itadori/vfx/particles/dismantle
damage @e[distance=..6,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity,limit=1,sort=nearest] 3 bypass:player_attack by @p[tag=Sukuna]
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 2 1
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 3 0 1

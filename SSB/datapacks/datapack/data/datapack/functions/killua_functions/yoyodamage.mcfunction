function datapack:damage1
tag @s add KilluaYoyoKnockback
scoreboard players add @p[tag=Killua,tag=!KilluaGodspeed] Timer4 5
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 1 1
scoreboard players set @e[type=armor_stand,tag=KilluaYoyo] Timer 50

execute if entity @p[tag=Killua,tag=KilluaGodspeed] run playsound minecraft:entity.bee.hurt neutral @a[distance=..30] ~ ~ ~ 2 0.5 1
execute if entity @p[tag=Killua,tag=KilluaGodspeed] run effect give @s minecraft:poison 1 2 true
execute if entity @p[tag=Killua,tag=KilluaGodspeed] run effect give @s minecraft:blindness 1 0 true
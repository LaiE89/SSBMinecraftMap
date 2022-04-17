function datapack:damage1
tag @s add NessYoyoKB
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 2 1
scoreboard players set @e[type=armor_stand,tag=NessYoyo] Timer 21
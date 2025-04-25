execute as @s[tag=KiryuBrawler,tag=!KiryuRush,tag=!KiryuBeast] run function kits:char/kiryu/rush
execute as @s[tag=KiryuRush,tag=!KiryuBrawler,tag=!KiryuBeast] run function kits:char/kiryu/beast
execute as @s[tag=KiryuBeast,tag=!KiryuBrawler,tag=!KiryuRush] run function kits:char/kiryu/brawler

tag @s[tag=KiryuBrawler,tag=KiryuRush,tag=!KiryuBeast] remove KiryuBrawler
tag @s[tag=KiryuRush,tag=KiryuBeast,tag=!KiryuBrawler] remove KiryuRush
tag @s[tag=KiryuBeast,tag=KiryuBrawler,tag=!KiryuRush] remove KiryuBeast

playsound minecraft:entity.elder_guardian.death neutral @a[distance=..10] ~ ~ ~ 3 2 1
scoreboard players set @s kits.ability2CD 0

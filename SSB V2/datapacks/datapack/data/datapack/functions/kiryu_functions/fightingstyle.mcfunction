execute as @s[tag=KiryuBrawler,tag=!KiryuRush,tag=!KiryuBeast] run function datapack:kiryu_functions/rush
execute as @s[tag=KiryuRush,tag=!KiryuBrawler,tag=!KiryuBeast] run function datapack:kiryu_functions/beast
execute as @s[tag=KiryuBeast,tag=!KiryuBrawler,tag=!KiryuRush] run function datapack:kiryu_functions/brawler

tag @s[tag=KiryuBrawler,tag=KiryuRush,tag=!KiryuBeast] remove KiryuBrawler
tag @s[tag=KiryuRush,tag=KiryuBeast,tag=!KiryuBrawler] remove KiryuRush
tag @s[tag=KiryuBeast,tag=KiryuBrawler,tag=!KiryuRush] remove KiryuBeast

playsound minecraft:entity.elder_guardian.death neutral @a[distance=..10] ~ ~ ~ 3 2 1
scoreboard players set @s Ability2CD 0
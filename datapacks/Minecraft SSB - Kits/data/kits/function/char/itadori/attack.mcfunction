# Every Time User Attacks in Black Flash State
execute if score @s[tag=ItadoriBlackflash] kits.timer3 matches ..3 run function kits:char/itadori/itadori/black_flash/strong
execute unless score @s[tag=ItadoriBlackflash] kits.timer3 matches ..3 run function kits:char/itadori/itadori/black_flash/normal
execute at @s[tag=ItadoriRage,tag=ItadoriBlackflash] rotated ~ 90 run function kits:char/itadori/vfx/particles/aurarage
execute if entity @s[tag=Sukuna] run function kits:char/itadori/sukuna/dismantle/main
scoreboard players add @s[tag=!Sukuna] kits.timer 10
scoreboard players set @s[tag=!Sukuna,scores={kits.timer=101..}] kits.timer 100
scoreboard players set @s[tag=Sukuna] kits.timer 0
tag @s remove ItadoriBlackflash
scoreboard players reset @s kits.timer3

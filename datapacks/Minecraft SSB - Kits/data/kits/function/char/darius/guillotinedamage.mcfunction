playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 5 0 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..30] ~ ~ ~ 5 2 1
execute as @s[tag=!DariusNoxianMight] at @s run damage @s 6 bypass:player_attack by @p[tag=Darius]
execute as @s[tag=DariusNoxianMight] at @s run damage @s 12 bypass:player_attack by @p[tag=Darius]
execute as @s[tag=!DariusNoxianMight] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1.3 ~ 0.75 1 0.75 0 100 force
execute as @s[tag=DariusNoxianMight] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1.3 ~ 0.75 1 0.75 0 500 force
tag @p[tag=Darius] add DariusNoxianGuillotine
schedule function kits:char/darius/guillotineschedule 2t replace
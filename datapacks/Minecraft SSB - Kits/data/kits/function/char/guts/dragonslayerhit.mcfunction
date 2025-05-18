playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..10] ~ ~ ~ 0.75 0.5 0.75
execute at @s run particle minecraft:sweep_attack ^ ^1.2 ^1.5
execute if entity @s[tag=GutsBerserker] run damage @s 1 bypass:player_attack_true_damage_no_kb by @s
execute if entity @s[tag=GutsBerserker] run particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.4 30 force
execute if entity @s[tag=GutsBerserker] run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 3 0.75 1
playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 1 0.9 1

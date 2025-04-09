scoreboard players add @s kits.timer5 1
execute if score @s kits.timer5 matches 40.. run damage @s 2 bypass:player_attack_true_damage_no_kb by @s
execute if score @s kits.timer5 matches 40.. positioned as @s run particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 5 force
scoreboard players reset @s[scores={kits.timer5=40..}] kits.timer5

# Execute at Enemies Hit by Shuhu's Gift
damage @s 15 player_attack
particle item{item:"nether_wart_block"} 0 0 0.5 10 0 0 0.5 10 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1

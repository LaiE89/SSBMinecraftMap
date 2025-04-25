# Execute at Enemies Hit by Forest of Swords
damage @s 5 player_attack
particle item{item:"nether_wart_block"} 0 0 0.5 5 0 0 0.5 5 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1

# Execute at Enemies Hit by Moon on Glacial River
damage @s 5 player_attack
particle item{item:"nether_wart_block"} 0 0 0.5 3 0 0 0.5 3 force
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5

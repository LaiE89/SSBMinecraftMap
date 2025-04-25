tp @e[type=block_display,tag=KiryuBike] @s
execute at @s unless block ~ ~-0.36 ~ #kits:passable run function kits:char/kiryu/bikebreak
execute if entity @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run function kits:char/kiryu/bikebreak

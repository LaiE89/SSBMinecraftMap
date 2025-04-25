damage @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Alucard,tag=!AlucardBaskerville,tag=!AlucardJackalBullet,tag=!InLabyrinth] 2 bypass:player_attack by @s from @p[tag=Alucard]
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0 30 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..15]
function kits:char/alucard/summonsoul
kill @s

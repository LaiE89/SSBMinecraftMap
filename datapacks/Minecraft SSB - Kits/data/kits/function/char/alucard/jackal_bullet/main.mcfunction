# note: kits.raycastTick = 4 corresponds to one block, as 4 * 0.25 = 1
## Executed Every Tick
# bounces when the object reaches the wall
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~ ~ 0.05 0.05 0.05 0 10 force
particle flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s kits.raycastTick 8
execute if score @s kits.raycastTick matches ..8 run function kits:char/alucard/jackal_bullet/trigger
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Alucard,tag=!AlucardBaskerville,tag=!AlucardJackalBullet,tag=!InLabyrinth] run function kits:char/alucard/jackalbulletdamage
tp @s ^ ^ ^2
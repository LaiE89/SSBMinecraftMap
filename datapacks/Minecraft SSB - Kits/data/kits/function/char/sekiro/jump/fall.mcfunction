execute store result score @s kits.timer5 run data get entity @s Motion[1] 1
execute if data entity @s {OnGround:1b} run return run function kits:char/sekiro/jump/end
execute if score @s kits.timer5 matches ..-1 if entity @e[distance=..1.5,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] run function kits:char/sekiro/jump/stomp
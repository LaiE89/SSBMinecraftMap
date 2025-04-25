# Execute at Entity Hit by Shotgun Bullet
execute if entity @e[scores={kits.timer=..2},distance=..3,limit=1,sort=nearest,tag=JacketShotgunBullet,type=area_effect_cloud] run function kits:char/jacket/shotgun/hit_strong
execute if entity @e[scores={kits.timer=3..},distance=..3,limit=1,sort=nearest,tag=JacketShotgunBullet,type=area_effect_cloud] run function kits:char/jacket/shotgun/hit_weak

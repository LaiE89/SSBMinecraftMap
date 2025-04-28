## Execute at Enemies Hit by Super
# Damage
damage @s 1.5 bypass:player_attack_no_kb by @p[tag=Siris]

# FX
execute as @e[type=area_effect_cloud,tag=SirisSuperDamage,limit=1,sort=nearest] at @s run function kits:char/siris/vfx/animations/slashes/score_tree/root
particle item{item:"nether_wart_block"} 0 0 0.25 1 0 0 0.25 1 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..30] ~ ~ ~ 0.5 0.5 0.5

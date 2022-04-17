particle minecraft:sweep_attack ^ ^1.5 ^1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20]
scoreboard players set @e[limit=1,sort=nearest,tag=projectile,tag=!GenjiDeflectProjectile,tag=!GenjiShurikens,distance=..5] Timer 1
tp @e[limit=1,sort=nearest,tag=projectile,tag=!GenjiShurikens,tag=!GenjiDeflectProjectile,distance=..5] ^ ^ ^3.5
tag @e[limit=1,sort=nearest,tag=projectile,tag=!GenjiShurikens,tag=!GenjiDeflectProjectile,distance=..5] add GenjiDeflectProjectile
## Execute at enemies hit by blue
# damage
damage @s 0.2 bypass:player_attack_no_kb by @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoBlue] from @p[tag=Gojo]

# attraction
scoreboard players set @p[tag=Gojo] kits.raycastTick2 4
execute positioned ~ ~1 ~ facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoBlue] feet run function kits:char/gojo/inherited/blue/attract
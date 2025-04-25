## Execute at enemies hit by red
# damage
damage @s 15 bypass:player_attack by @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoRed] from @p[tag=Gojo]

# knockback
scoreboard players set @p[tag=Gojo] kits.raycastTick2 20
execute positioned ~ ~1 ~ facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoRedKbMarker] feet rotated ~ 0 run function kits:char/gojo/inherited/red/kb
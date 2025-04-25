## Execute at Enemies Hit by Terra Blade
# Damage
damage @s 1 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=AbianTerraBlade,limit=1,sort=nearest] from @p[tag=Abian]

# Combo stun
scoreboard players set @s kits.specific.abianComboStun 10

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 3 force
playsound entity.evoker.cast_spell neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 0.5
playsound entity.spider.step neutral @a[distance=..20] ~ ~ ~ 0.1 1 0.1

playsound minecraft:entity.zoglin.attack neutral @a[distance=..50] ~ ~ ~ 3 0 1
damage @s 9 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=AlucardSpikes,limit=1,sort=nearest] from @p[tag=Alucard]
effect give @s minecraft:slowness 1 3 true
function kits:char/alucard/summonsoul

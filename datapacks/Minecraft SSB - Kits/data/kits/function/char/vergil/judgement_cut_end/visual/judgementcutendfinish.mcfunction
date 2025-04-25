playsound minecraft:block.glass.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:block.glass.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:block.glass.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:entity.warden.attack_impact neutral @a[distance=..30] ~ ~ ~ 1 0 1
#playsound minecraft:entity.warden.sonic_charge neutral @a[distance=..30] ~ ~ ~ 10 2 1
particle flash ~ ~1 ~ 0 0 0 0 10 force
particle firework ~ ~1 ~ 0 0 0 1.5 100 force
execute as @e[type=minecraft:area_effect_cloud,tag=judgementcutendvisual] at @s run function kits:char/vergil/judgement_cut_end/visual/judgementcutendfinishparticles
execute at @e[tag=VergilEnded] run particle item{item:"redstone_block"} 0 0 0.5 50 0 0 0.5 50 force
execute as @e[tag=VergilEnded] at @s run damage @s 20 bypass:player_attack_no_kb by @e[type=minecraft:area_effect_cloud,tag=judgementcutendvisual,limit=1,sort=nearest] from @p[tag=Vergil]
effect clear @e[tag=VergilEnded] minecraft:weakness
effect clear @e[tag=VergilEnded] minecraft:levitation
tag @e[tag=VergilEnded] remove VergilEnded
kill @e[type=area_effect_cloud,tag=judgementcutendvisual]
kill @e[type=area_effect_cloud,tag=judgementcutendvictimpos]
kill @s

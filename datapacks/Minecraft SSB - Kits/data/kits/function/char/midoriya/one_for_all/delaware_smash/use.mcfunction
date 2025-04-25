## When Delaware Smash is Used
# Launches shock wave
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["MidoriyaDelawareSmashShockwave","projectile"]}
execute if entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/delaware_smash/100/use
tp @e[limit=1,sort=nearest,tag=MidoriyaDelawareSmashShockwave,type=area_effect_cloud] @s

# Particles
particle explosion ^ ^1 ^1 0 0 0 0 1 force

# Sounds
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:item.trident.riptide_2 neutral @a[distance=..20] ~ ~ ~ 0.75 0 1

# Recoil
#tp @s ~ ~ ~ ~ ~-10
tp @s[scores={kits.timer=100}] ~ ~ ~ ~ ~-30

# Consumes 1 charge
scoreboard players remove @s kits.timer3 1

# Resets ability cooldown
scoreboard players set @s kits.ability3CD 0

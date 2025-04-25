## When Detroit Smash is Used
# Execute at enemy hit by detroit smash
execute as @e[nbt={HurtTime:10s},distance=..5,limit=1,sort=nearest,tag=!Midoriya] at @s run function kits:char/midoriya/one_for_all/detroit_smash/hit

# Knocks hit enemy back
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~ ~ rotated ~ 0 run function kits:char/midoriya/one_for_all/detroit_smash/kb

# Knocks hit enemy back once
tag @e[tag=MidoriyaDetroitSmashKB] remove MidoriyaDetroitSmashKB

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0 1

# Self-harm
damage @s 2 bypass:player_attack_true_damage_no_kb by @s
particle item{item:"redstone_block"} 0 0 0.25 10 0 0 0.25 10 force
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.1 1 1

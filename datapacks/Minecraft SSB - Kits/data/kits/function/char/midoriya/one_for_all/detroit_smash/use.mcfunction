## When Detroit Smash is Used
# Execute at enemy hit by detroit smash
execute as @e[nbt={HurtTime:10s},distance=..5,limit=1,sort=nearest] at @s run function kits:char/midoriya/one_for_all/detroit_smash/hit

# Knocks hit enemy back
scoreboard players set @s kits.raycastTick 0
execute rotated ~ 0 positioned ~ ~ ~ run function kits:char/midoriya/one_for_all/detroit_smash/kb

# Knocks hit enemy back once
tag @e[tag=MidoriyaDetroitSmashKB] remove MidoriyaDetroitSmashKB

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0 1

# Resets stored power
scoreboard players set @s kits.timer4 0

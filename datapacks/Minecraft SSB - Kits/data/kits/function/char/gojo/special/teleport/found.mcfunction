## If user is facing an enemy
# teleports to enemy
function kits:char/gojo/utilities/random_pos/start {"itt":"1","yaw":"90","pitch":"0","distMin":"5","distMax":"10","atPos":"tp @p[tag=Gojo] ~ ~ ~ facing entity @s"}
scoreboard players set @s kits.raycastTick 0

# sfx
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 0.5

# remove scores
scoreboard players remove @s kits.ability1CD 15
scoreboard players set @s kits.ability5CD 0
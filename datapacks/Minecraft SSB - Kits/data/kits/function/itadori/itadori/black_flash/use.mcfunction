## When Black Flash is Used
# Applies cursed energy to fist
tag @s add ItadoriBlackflash
scoreboard players set @s kits.timer3 0

# FX
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.5 10 force
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1

# Resets cooldowns
scoreboard players remove @s kits.ability1CD 10
scoreboard players set @s kits.ability2CD 0

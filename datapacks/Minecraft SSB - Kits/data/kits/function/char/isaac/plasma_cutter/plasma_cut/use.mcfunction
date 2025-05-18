## When Plasma Cut is Used
# Fires bolts of ionized plasma
execute positioned ~ ~1.5 ~ run function kits:char/isaac/plasma_cutter/plasma_cut/loop
scoreboard players set @s kits.raycastTick 0

# Sounds
playsound minecraft:entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..20] ~ ~ ~ 0.25 2 1

# Reset scores
scoreboard players remove @s kits.timer 1
scoreboard players set @s kits.ability1CD 0

# Reload
execute if entity @s[scores={kits.timer=..0}] as @s[scores={kits.timer2=1..}] run function kits:char/isaac/plasma_cutter/plasma_cut/reloadstart

## When Plasma Energy is Collected
# Restores 1 plasma energy
scoreboard players set @s[scores={kits.timer2=3..}] kits.timer 3
scoreboard players add @s[scores={kits.timer2=..2}] kits.timer2 1
execute if score @s[scores={kits.timer=..0}] kits.timer2 matches 1.. run function kits:char/isaac/plasma_cutter/plasma_cut/reloadstart

# Particles
particle crit ~ ~1 ~ 0 0 0 1 10 force

# Sound
playsound minecraft:item.armor.equip_netherite neutral @a[distance=..5] ~ ~ ~ 1 0 1

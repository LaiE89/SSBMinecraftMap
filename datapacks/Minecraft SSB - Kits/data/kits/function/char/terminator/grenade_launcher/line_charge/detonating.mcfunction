## When Line Charge Grenade is Detonating
# Line charge grenade starts detonating
execute if score @s kits.timer matches 15 run function kits:char/terminator/grenade_launcher/line_charge/detonate

# Grenade detonates if reaches ground
execute if score @s[nbt={OnGround:1b}] kits.timer matches 20..40 run scoreboard players set @s kits.timer 45

# Rotation
scoreboard players add @s kits.timer2 9
scoreboard players reset @s[scores={kits.timer2=360..}] kits.timer2
execute store result entity @s Pose.Head[0] float 1.0 run scoreboard players get @s kits.timer2

## Every Time Jacket Attacks
# Extra damage to stunned entities
execute as @e[nbt={HurtTime:10s},distance=..5,limit=1,sort=nearest,tag=JacketStun,tag=!Jacket] at @s run function kits:char/jacket/bat/passive/stun_damage

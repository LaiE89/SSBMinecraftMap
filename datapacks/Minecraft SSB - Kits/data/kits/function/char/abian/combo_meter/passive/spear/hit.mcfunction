## Execute at Enemies Hit by Spear of Longinus
# Damage
damage @s 9 minecraft:player_attack by @p[tag=Abian]

# Combo stun
scoreboard players set @s kits.specific.abianComboStun 10

# Replenishes energy
scoreboard players add @p[tag=Abian] kits.ability2CD 300
scoreboard players set @p[scores={kits.ability2CD=301..},tag=Abian] kits.ability2CD 300

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 20 force
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 0.75 0 0.75

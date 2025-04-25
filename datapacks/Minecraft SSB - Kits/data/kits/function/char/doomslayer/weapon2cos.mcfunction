## When Arbalest is Used
# Fires energy bolt
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1 ~ run function kits:char/doomslayer/ballista/shoot

# Sounds
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound minecraft:item.armor.equip_netherite neutral @a[distance=..20] ~ ~ ~ 1 0 1

execute if data entity @s {OnGround:0b} run function kits:char/doomslayer/ballista/kbtrigger

# Resets ability cooldown
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.ability2CD 0
scoreboard players set @s kits.ability1CD 20

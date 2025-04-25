# When Cleave and Dismantle is Used While Domain is Inactive
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1.5 ~ run function kits:char/itadori/sukuna/slice/calculate_range
scoreboard players remove @s kits.ability1CD 10

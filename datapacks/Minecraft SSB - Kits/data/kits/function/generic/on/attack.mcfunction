## Executes Actions When the Player Attacks
# specific actions
execute if entity @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] unless entity @e[type=area_effect_cloud,tag=Bradheadbuttplace] run function kits:char/brad/punch
execute if entity @s[tag=ChosenUndead] run function kits:char/chosenundead/usestamina {stamina: 20}
execute if entity @s[tag=Edward,tag=EdwardBreak] run function kits:char/edward/breakcast
execute if entity @s[tag=Itadori] run function kits:char/itadori/itadori/black_flash/attack
execute if entity @s[tag=Vergil,tag=VergilDash,tag=!VergilInvis] run function kits:char/vergil/trickactivate
execute if entity @s[tag=Kirito] run function kits:char/kirito/attack
execute if entity @s[tag=Dragonborn] run function kits:char/dragonborn/attack

# reset
advancement revoke @s only kits:attack
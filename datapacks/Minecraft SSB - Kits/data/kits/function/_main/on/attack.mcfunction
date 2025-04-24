## Executes Actions When the Player Attacks
# specific actions
execute if entity @s[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy] unless entity @e[type=area_effect_cloud,tag=Bradheadbuttplace] run function kits:brad/punch
execute if entity @s[tag=ChosenUndead] run function kits:chosenundead/usestamina {stamina: 20}
execute if entity @s[tag=Edward,tag=EdwardBreak] run function kits:edward/breakcast
execute if entity @s[tag=Itadori] run function kits:itadori/itadori/black_flash/attack
execute if entity @s[tag=Vergil,tag=VergilDash,tag=!VergilInvis] run function kits:vergil/trickactivate
execute if entity @s[tag=Kirito] run function kits:kirito/attack
execute if entity @s[tag=Dragonborn] run function kits:dragonborn/attack
execute if entity @s[tag=Sekiro] run function kits:sekiro/attack/attack

# reset
advancement revoke @s only kits:attack
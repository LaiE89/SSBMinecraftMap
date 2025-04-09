### When Using Modules
## Kinesis
# When holding down and releasing shift
execute if score @s kits.criterion.shiftOn matches 1.. run function kits:isaac/modules/kinesis/hold
execute if score @s kits.criterion.shiftOff matches 1.. run function kits:isaac/modules/kinesis/release

# Detects when shift is held and released
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players add @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOn 1
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff

## Stasis
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability6CD=10..}] as @s[scores={kits.timer4=1..}] run function kits:isaac/modules/stasis/use

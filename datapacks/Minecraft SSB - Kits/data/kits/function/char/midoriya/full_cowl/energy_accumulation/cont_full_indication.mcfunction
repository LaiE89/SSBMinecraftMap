## Fully Charged Continuous Indication
# Particles
particle dust{color:[0.000,1.000,0.502],scale:1} ^-0.5 ^0.8 ^ 0.2 0.2 0.2 0 6 force
particle dust{color:[1.000,0.200,0.349],scale:0.75} ^-0.5 ^0.8 ^ 0.2 0.2 0.2 0 2 force

# Makes action bar always display 100% when fully charged
execute if entity @s[scores={kits.timer4=101..}] run scoreboard players set @s kits.timer4 100

## Execute at User During Black Flash State
# Duration
scoreboard players add @s kits.timer3 1
tag @s[scores={kits.timer3=100..}] remove ItadoriBlackflash

# VFX
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 0.05 1 force
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.25 0.25 0.25 0 3 force

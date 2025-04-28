execute if score @s kits.timer3 matches 0 run function kits:char/ekko/chronobreak/record_chkpt
execute if score @s kits.timer3 matches 0 run function kits:char/ekko/chronobreak/image
scoreboard players add @s kits.timer3 1
scoreboard players set @s[scores={kits.timer3=6..}] kits.timer3 0
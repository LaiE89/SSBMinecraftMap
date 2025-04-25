scoreboard players add @p[tag=Cynthia] kits.timer6 1
execute if entity @p[tag=Cynthia,scores={kits.timer6=30..}] run function kits:char/cynthia/roserade/leechseeddrain
execute if entity @p[tag=Cynthia,scores={kits.timer7=3..}] run function kits:char/cynthia/roserade/leechseedend

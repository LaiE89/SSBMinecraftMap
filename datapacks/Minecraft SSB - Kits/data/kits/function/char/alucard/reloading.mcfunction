scoreboard players add @s kits.timer4 1
execute if score @s[predicate=kits:items/alucard/jackal,gamemode=!spectator] kits.timer4 matches 30.. run function kits:char/alucard/reloaded

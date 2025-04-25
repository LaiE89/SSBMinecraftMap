# Number of iterations
scoreboard players remove @s kits.raycastTick2 1

# Number of recursions
scoreboard players operation @s kits.raycastTick = @p[tag=Noctis] kits.timer2

function kits:char/noctis/projectile/raycast

execute if score @s kits.raycastTick2 matches -1..0 run kill @s

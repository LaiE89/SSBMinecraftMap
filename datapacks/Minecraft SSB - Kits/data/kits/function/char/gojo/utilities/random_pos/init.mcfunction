## Initializes random spawn position
# init direction and max distance, then find
$execute store result entity @s Rotation[0] float 1 run random value $(yawNeg)..$(yaw)
$execute store result entity @s Rotation[1] float 1 run random value $(pitchNeg)..$(pitch)
$execute store result score @s kits.raycastTick run random value $(distMin)..$(distMax)
execute rotated as @s run function kits:char/gojo/utilities/random_pos/find

# recursive call
scoreboard players remove %gojo.randomPos.itt kits.timer 1
execute if score %gojo.randomPos.itt kits.timer matches 1.. run function kits:char/gojo/utilities/random_pos/init with storage kits:kits gojo.randomPos

# end of recursion
kill @s
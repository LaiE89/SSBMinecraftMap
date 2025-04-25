# example call: function kits:generic/functions/homing {"snappingSpeed":"1","target":"@p","speed":"0.5"}
## Homing Function
$execute anchored eyes facing entity $(target) eyes positioned ^ ^ ^$(snappingSpeed) rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^$(speed) ~ ~

## How it Works:
# 1. draw a vector pointing toward the target.
# 2. draw a vector representing the missile’s current facing direction.
# 3. add the two vectors.
# 4. reverse the summed vector.
# 5. rotate the missile based on the resulting vector.
# 6. repeat the process until the angle between the missile's direction and the target becomes more acute.
# note: increasing the ratio of the target vector to the facing vector results in faster snapping, as each adjustment produces a smaller angle.
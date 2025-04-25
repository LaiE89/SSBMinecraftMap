# each itt gets u 1 more digit of operation
# in = circleRadius
## Newton Raphson
# b = in/a
scoreboard players operation %vfxDomain.raphB kits.math = %vfxDomain.in kits.math
scoreboard players operation %vfxDomain.raphB kits.math /= %vfxDomain.raphA kits.math

# a = (a+b)/2
scoreboard players operation %vfxDomain.raphA kits.math += %vfxDomain.raphB kits.math
scoreboard players operation %vfxDomain.raphA kits.math /= %vfxDomain.2 kits.constant
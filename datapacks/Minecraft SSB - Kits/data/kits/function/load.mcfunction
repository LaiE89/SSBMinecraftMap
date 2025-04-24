## Kit System Setup
# general
team add Mobs
scoreboard objectives add kits.constant dummy
scoreboard objectives add kits.math dummy

scoreboard objectives add kits.x dummy
scoreboard objectives add kits.y dummy
scoreboard objectives add kits.z dummy
scoreboard objectives add kits.dx dummy
scoreboard objectives add kits.dy dummy
scoreboard objectives add kits.dz dummy

scoreboard objectives add kits.wasd dummy
scoreboard objectives add kits.wasd.w dummy
scoreboard objectives add kits.wasd.a dummy
scoreboard objectives add kits.wasd.s dummy
scoreboard objectives add kits.wasd.d dummy
scoreboard objectives add kits.wasd.x dummy
scoreboard objectives add kits.wasd.z dummy

scoreboard objectives add kits.id dummy

# tied to a built-in action
scoreboard objectives add kits.criterion.death deathCount

scoreboard objectives add kits.criterion.damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add kits.criterion.absorbDmg minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add kits.criterion.resistDmg minecraft.custom:minecraft.damage_resisted

scoreboard objectives add kits.criterion.attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add kits.criterion.block minecraft.custom:minecraft.damage_blocked_by_shield

scoreboard objectives add kits.criterion.chest minecraft.custom:minecraft.open_chest
scoreboard objectives add kits.criterion.carrot minecraft.used:minecraft.golden_carrot
scoreboard objectives add kits.criterion.pot minecraft.used:minecraft.potion

scoreboard objectives add kits.criterion.kill totalKillCount
scoreboard objectives add kits.criterion.killPlayer playerKillCount

scoreboard objectives add kits.criterion.COS minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kits.criterion.COSoff dummy
scoreboard objectives add kits.criterion.COSon dummy

scoreboard objectives add kits.criterion.run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add kits.criterion.shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add kits.criterion.shiftOff dummy
scoreboard objectives add kits.criterion.shiftOn dummy

scoreboard objectives add kits.criterion.bow minecraft.used:minecraft.bow
scoreboard objectives add kits.criterion.crossbow minecraft.used:minecraft.crossbow

scoreboard objectives add kits.criterion.swordIron minecraft.used:minecraft.iron_sword
scoreboard objectives add kits.criterion.swordNetherite minecraft.used:minecraft.netherite_sword

# helper scoreboards
scoreboard objectives add kits.ability1CD dummy
scoreboard objectives add kits.ability2CD dummy
scoreboard objectives add kits.ability3CD dummy
scoreboard objectives add kits.ability4CD dummy
scoreboard objectives add kits.ability5CD dummy
scoreboard objectives add kits.ability6CD dummy
scoreboard objectives add kits.ability7CD dummy

scoreboard objectives add kits.timer dummy
scoreboard objectives add kits.timer2 dummy
scoreboard objectives add kits.timer3 dummy
scoreboard objectives add kits.timer4 dummy
scoreboard objectives add kits.timer5 dummy
scoreboard objectives add kits.timer6 dummy
scoreboard objectives add kits.timer7 dummy
scoreboard objectives add kits.timer8 dummy
scoreboard objectives add kits.timer9 dummy

scoreboard objectives add kits.raycastTick dummy
scoreboard objectives add kits.raycastTick2 dummy
scoreboard objectives add kits.raycastTick3 dummy
scoreboard objectives add kits.raycastTick4 dummy
scoreboard objectives add kits.raycastTick5 dummy

scoreboard objectives add kits.health health
scoreboard objectives add kits.health2 dummy
scoreboard objectives add kits.health3 dummy
scoreboard objectives add kits.health4 dummy
scoreboard objectives add kits.health5 dummy

scoreboard objectives add kits.direction dummy

# kit specific scoreboards
scoreboard objectives add kits.specific.abianComboStun dummy
scoreboard objectives add kits.specific.abianMarked dummy
scoreboard objectives add kits.specific.abiankits.raycastTick dummy
scoreboard objectives add kits.specific.dariusBleedTime dummy
scoreboard objectives add kits.specific.dariusPassive dummy
scoreboard objectives add kits.specific.ekkoPassiveTick dummy
scoreboard objectives add kits.specific.ekkoResonance dummy
scoreboard objectives add kits.specific.gojokits.raycastTick dummy
scoreboard objectives add kits.specific.ireliaMarkTick dummy
scoreboard objectives add kits.specific.itadorikits.raycastTick dummy
scoreboard objectives add kits.specific.jacketStunTick dummy
scoreboard objectives add kits.specific.noctisBleed dummy
scoreboard objectives add kits.specific.noctisBleed2 dummy
scoreboard objectives add kits.specific.raidenCrescentTick dummy
scoreboard objectives add kits.specific.ryzeFluxTick dummy
scoreboard objectives add kits.specific.laiethStun dummy
scoreboard objectives add kits.specific.sekiroPosture dummy
scoreboard objectives add kits.specific.sekiroPostureTimer dummy
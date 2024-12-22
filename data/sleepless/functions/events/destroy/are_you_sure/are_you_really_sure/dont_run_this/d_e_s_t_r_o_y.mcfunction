# This function destructively removes all bed locations and kills all bed marker entities
# forcibly remove most blocks around markers
execute at @e[tag=sleepless.slept] run fill ~-4 ~ ~-4 ~4 ~8 ~4 air destroy
# explode at each marker
execute at @e[tag=sleepless.slept] run summon fireball ~ ~0.2 ~ {ExplosionPower:5,power:[0.0,-2.0,0.0],Item:{id:"minecraft:air",Count:1b}}
# kill each marker
execute as @e[tag=sleepless.slept] run kill @s
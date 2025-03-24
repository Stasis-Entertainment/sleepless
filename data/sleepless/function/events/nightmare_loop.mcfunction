#101 ticks, 5.05 seconds
# Functions similarly to the daycounter as a loop, and kills the player if they sleep in an unsafe bed
# decrement the timer
execute as @a if score @s sleepless.nightmare matches 1.. run scoreboard players remove @s sleepless.nightmare 1
# If they leave the bed, clear the timer
execute as @a at @s if score @s sleepless.nightmare matches 3.. unless block ~ ~ ~ #minecraft:beds run effect clear @s blindness
execute as @a at @s if score @s sleepless.nightmare matches 3.. unless block ~ ~ ~ #minecraft:beds run stopsound @s master sleepless:nightmare
execute as @a at @s if score @s sleepless.nightmare matches 3.. unless block ~ ~ ~ #minecraft:beds run title @s clear
execute as @a at @s if score @s sleepless.nightmare matches 3.. unless block ~ ~ ~ #minecraft:beds run scoreboard players reset @s sleepless.nightmare
# Give effects throughout the timer
execute as @a if score @s sleepless.nightmare matches 1.. run effect give @s blindness 1 15 true
execute as @a if score @s sleepless.nightmare matches 1.. run effect give @s hunger 5 2 true
# At timed intervals, show a jumpscare visual
execute as @a if score @s sleepless.nightmare matches 35 run title @s subtitle {"font":"sleepless:fade","text":"\uBC01"}
execute as @a if score @s sleepless.nightmare matches 34 run title @s title {"font":"sleepless:fade","text":"\uBC03"}
execute as @a if score @s sleepless.nightmare matches 28 run title @s title {"font":"sleepless:fade","text":"\uBC03"}
execute as @a if score @s sleepless.nightmare matches 15 run title @s times 0 3 0
execute as @a if score @s sleepless.nightmare matches 14 run title @s title {"font":"sleepless:fade","text":"\uBC04"}
execute as @a if score @s sleepless.nightmare matches 5 run title @s times 0 2 40
execute as @a if score @s sleepless.nightmare matches 5 run title @s subtitle {"font":"sleepless:fade","text":"\uBC02"}
execute as @a if score @s sleepless.nightmare matches 1 run title @s title {"font":"sleepless:fade","text":"\uBC05"}
# Kill non-creative players
execute as @a if score @s sleepless.nightmare matches 0 run function sleepless:events/nightmare_end
# Repeat this function until the timer cuts
execute as @a if score @s sleepless.nightmare matches 1.. run schedule function sleepless:events/nightmare_loop 1t
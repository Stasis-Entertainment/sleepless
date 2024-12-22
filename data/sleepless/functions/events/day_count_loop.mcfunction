# score_holder countEffect The variable used for the daycounter
# store what day it is
execute store result score days sleepless.value run time query day
# increment the counter effect
scoreboard players add countEffect sleepless.value 1
# gradually type out the letters and play the sound
execute if score countEffect sleepless.value matches 1 run title @a actionbar {"text":"D","color":"gray"}
execute if score countEffect sleepless.value matches 1 as @a at @s run playsound sleepless:click master @s ~ ~ ~ 1 1 1
execute if score countEffect sleepless.value matches 2 run title @a actionbar {"text":"Da","color":"gray"}
execute if score countEffect sleepless.value matches 2 as @a at @s run playsound sleepless:click master @s ~ ~ ~ 1 1 1
execute if score countEffect sleepless.value matches 3 run title @a actionbar {"text":"Day","color":"gray"}
execute if score countEffect sleepless.value matches 3 as @a at @s run playsound sleepless:click master @s ~ ~ ~ 1 1 1
execute if score countEffect sleepless.value matches 4 run title @a actionbar {"text":"Day ","color":"gray"}
execute if score countEffect sleepless.value matches 4 as @a at @s run playsound sleepless:click master @s ~ ~ ~ 1 1 1
execute if score countEffect sleepless.value matches 7 run title @a actionbar [{"text":"Day ","color":"gray"},{"score":{"name": "days","objective": "sleepless.value"},"color": "gray"}]
execute if score countEffect sleepless.value matches 7 as @a at @s run playsound sleepless:return master @s ~ ~ ~ 1 0.8 1
# repeat this function until the counter reaches above 6
execute if score countEffect sleepless.value matches 0..6 run schedule function sleepless:events/day_count_loop 8t
# on the final loop, start the room cuonter with the same effect
execute if score countEffect sleepless.value matches 7 if score roomCount sleepless.config matches 1 run scoreboard players set roomEffect sleepless.value 0
execute if score countEffect sleepless.value matches 7 if score roomCount sleepless.config matches 1 run schedule function sleepless:events/room_count_loop 10s
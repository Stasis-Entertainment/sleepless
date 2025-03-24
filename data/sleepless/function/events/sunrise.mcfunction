# Set all new beds as unsafe -- they know where it is now
execute at @e[tag=sleepless.newBed] if entity @p[distance=..16] run summon marker ~ ~ ~ {Tags:["sleepless.slept","smithed.strict"]}
kill @e[tag=sleepless.newBed]
# Count the number of rooms (bed markers)
scoreboard players set rooms sleepless.value 0
execute as @e[tag=sleepless.slept] run scoreboard players add rooms sleepless.value 1
# Decrement the delay effect
scoreboard players remove @a[scores={sleepless.awayDelay=1..}] sleepless.awayDelay 1
# Play the chime value
execute if score morningChime sleepless.config matches 1 as @a at @s run playsound sleepless:sunrise master @s ~ ~ ~ 1 1 1
# If room count is on but not day count, show only room count
execute unless score dayCount sleepless.config matches 1 if score roomCount sleepless.config matches 1 run scoreboard players set roomEffect sleepless.value 0
execute unless score dayCount sleepless.config matches 1 if score roomCount sleepless.config matches 1 run schedule function sleepless:events/room_count_loop 6s
# If day count is on, show it. It'll show room count after, if it's on
execute if score dayCount sleepless.config matches 1 run scoreboard players set countEffect sleepless.value 0
execute if score dayCount sleepless.config matches 1 run schedule function sleepless:events/day_count_loop 6s
# Reset the phase and ticks for the day
scoreboard players set dayphase sleepless.value 1
scoreboard players set dayticks sleepless.value 0
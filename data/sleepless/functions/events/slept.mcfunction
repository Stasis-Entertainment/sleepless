# If the player sleeps without a new bed, start a nightmare
execute unless entity @e[tag=sleepless.newBed,distance=..4] unless entity @s[tag=sleepless.away] if score nightmareEffect sleepless.config matches 1 run function sleepless:events/nightmare
execute at @s[tag=sleepless.away] run tp ~ ~ ~
# Reset the trigger
advancement revoke @s only sleepless:sleep
# Reset the sleeping count
#scoreboard players set sleepingCount sleepless.value 0
# Count if everyone is "sleeping"
#execute as @a at @s if entity @e[tag=sleepless.newBed,distance=..4] unless entity @e[tag=sleepless.slept,distance=..2] run scoreboard players add sleepingCount sleepless.value 1
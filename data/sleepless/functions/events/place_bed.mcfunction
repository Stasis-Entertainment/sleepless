# Remove other safe bed markers near this one
#kill @e[tag=sleepless.newBed,distance=..8]  # Removed this one because I felt it wasn't necessary--players should be able to sleep together in new rooms and it count both at once
# If it's safe, summon the marker
execute unless entity @e[tag=sleepless.slept,distance=..5] run summon marker ~ ~ ~ {Tags:["sleepless.newBed","smithed.strict"]}
# If it's not safe and warnings are enabled, warn the player
execute if score roomWarning sleepless.config matches 2 if entity @e[tag=sleepless.slept,distance=..4] run title @s actionbar {"translate":"sleepless.uneasy","color":"dark_gray"}
execute if score roomWarning sleepless.config matches 1..2 if entity @e[tag=sleepless.slept,distance=..4] run playsound sleepless:wary master @s ~ ~ ~ 1 1 1
# Reset the trigger
advancement revoke @s only sleepless:place_bed
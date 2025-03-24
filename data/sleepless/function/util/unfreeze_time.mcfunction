# Unfreeze day/night
gamerule doDaylightCycle true
# Restore the saved gamerules from scoreboards
execute if score doFireTick sleepless.value matches 1 run gamerule doFireTick true
execute if score doWeatherCycle sleepless.value matches 1 run gamerule doWeatherCycle true
# Clear the scores for later use
scoreboard players reset doFireTick sleepless.value
scoreboard players reset doWeatherCycle sleepless.value
# Set the random tick to default 3. Since this value can be anything, it's impossible for the datapack to save and restore it
gamerule randomTickSpeed 3
# Unfreeze the day with timecontrol mod
function sleepless:util/compat/tc_unfreeze
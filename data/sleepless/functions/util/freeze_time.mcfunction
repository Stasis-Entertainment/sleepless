# Freeze day or night
gamerule doDaylightCycle false
# Save current values
execute store result score doFireTick sleepless.value run gamerule doFireTick
execute store result score doWeatherCycle sleepless.value run gamerule doWeatherCycle
# Freeze fire
gamerule doFireTick false
# Freeze weather
gamerule doWeatherCycle false
# Freeze tick updates
gamerule randomTickSpeed 0
# Freeze time with timecontrol mod
function sleepless:util/compat/tc_freeze
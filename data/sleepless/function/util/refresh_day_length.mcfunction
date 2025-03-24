# Calculate the moments before surnise to accurately time the away effect

# It ends 1/48th of a day before time 0
# Save the length
scoreboard players operation sunriseDiff sleepless.value = dayLength sleepless.config
# Divide the length by 48
scoreboard players operation sunriseDiff sleepless.value /= 48 sleepless.value

# We find the "end" of the day by subtracting the above 48th from the total length
# Save the length
scoreboard players operation sunriseEnd sleepless.value = dayLength sleepless.config
# Subtract the 48th
scoreboard players operation sunriseEnd sleepless.value -= sunriseDiff sleepless.value

# The limit, or start of the away delay, is one minute, or 1200 ticks, before the "end" of the day
# Save the end of the day
scoreboard players operation sunriseLimit sleepless.value = sunriseEnd sleepless.value
# Subtract 1 minute (1200 ticks)
scoreboard players operation sunriseLimit sleepless.value -= 1200 sleepless.value

# We have to make sure that the current daytick doesn't exceed the day time, by dividing to find the factor and then multiplying the current daytime to tick
# This method is actually fairly inaccurate unless it's a multiple of 6000, but it's the closest I could comfortably get
# Save the length
scoreboard players operation daytickFactor sleepless.value = dayLength sleepless.config
# Divide the length by default value (1/4 of day length, see below)
scoreboard players operation daytickFactor sleepless.value /= 6000 sleepless.value
# Save the daytime
scoreboard players operation dayticks sleepless.value = daytime sleepless.value
# Multiply by the factor
scoreboard players operation dayticks sleepless.value *= daytickFactor sleepless.value
# Divide by 4 to make it a multiple of 24000 instead of 6000
scoreboard players operation dayticks sleepless.value /= 4 sleepless.value

# As a failsafe, the minimum day length is 6000. This might seem unusually high, but the shorter the day is, the more strain is put on the pack.
# The minimums for a day of 6000 is set by these. If it falls below these, it will automatically put them back to this point.
# This won't actually affect the in-game day length--if a pack sets day and night to 3000, the pack will run the "end" of the day every 2 days (6000)
# It is not recommended to change these values unless you know what you're doing.
execute unless score sunriseLimit sleepless.value matches 4675.. run scoreboard players set sunriseLimit sleepless.value 4675
execute unless score sunriseEnd sleepless.value matches 5875.. run scoreboard players set sunriseEnd sleepless.value 5875
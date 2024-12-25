# Add scoreboards
scoreboard objectives add sleepless.value dummy
scoreboard objectives add sleepless.config dummy
scoreboard objectives add sleepless.awayDelay dummy
scoreboard objectives add sleepless.timeAwake custom:time_since_rest
scoreboard objectives add sleepless.nightmare dummy

# Run first load if it isn't done already
execute unless score loaded sleepless.value matches 1 run function sleepless:main/init

# Set math constants
scoreboard players set 4 sleepless.value 4
scoreboard players set 10 sleepless.value 10
scoreboard players set 48 sleepless.value 48
scoreboard players set 1200 sleepless.value 1200
scoreboard players set 6000 sleepless.value 6000
scoreboard players set 24000 sleepless.value 24000

# Load config default if it failed to load correctly
function sleepless:config/default
function sleepless:util/refresh_day_length

# Begin scheduled functions
schedule function sleepless:main/tick 1t
schedule function sleepless:main/30s 2t
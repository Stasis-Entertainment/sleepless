# Set the delay score to what the config says
scoreboard players operation @s sleepless.awayDelay = awayDelay sleepless.config
# Clear the player's exhaustion as a failsafe
scoreboard players reset @s sleepless.timeAwake
# Tag this player as initialized
tag @s add sleepless.init
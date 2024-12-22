# Store the day time for math and variables
execute store result score daytime sleepless.value run time query daytime
# If the day just started, reset the ticks passed and reset the phase. Should fix /time set day
execute if score daytime sleepless.value matches 0..80 unless score dayphase sleepless.value matches 0..1 run scoreboard players set dayticks sleepless.value 0
execute if score daytime sleepless.value matches 0..80 unless score dayphase sleepless.value matches 0..1 run scoreboard players set dayphase sleepless.value 0
# Add day ticks passed if time freeze config is on and players are online
execute if score freezeTime sleepless.config matches 1 if score playersOnline sleepless.value matches 1 run scoreboard players add dayticks sleepless.value 1
# Add day ticks passed regardless if the freeze config is off
execute if score freezeTime sleepless.config matches 0 run scoreboard players add dayticks sleepless.value 1
# Store if there are any non-spectator players online
execute store success score playersOnline sleepless.value if entity @a[gamemode=!spectator]
# Freeze or unfreeze time according to the above variable and the config
execute if score freezeTime sleepless.config matches 1 if score playersOnline sleepless.value matches 1 run function sleepless:util/unfreeze_time
execute if score freezeTime sleepless.config matches 1 if score playersOnline sleepless.value matches 0 run function sleepless:util/freeze_time
# Reset the player count
#scoreboard players set playerCount sleepless.value 0
# Tick every player separately
execute as @a at @s run function sleepless:main/player_tick
# Run the sunrise function if it's the beginning of a day
execute if score daytime sleepless.value matches 0..80 unless score dayphase sleepless.value matches 1 run function sleepless:events/sunrise
# Loop this function
schedule function sleepless:main/tick 1t
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

# Away effect based on calculated day ending
execute as @a at @s unless dimension minecraft:the_end unless score @s[gamemode=!spectator] sleepless.awayDelay matches 1.. if score awayEffect sleepless.config matches 1 if score dayticks sleepless.value >= sunriseLimit sleepless.value unless score dayphase sleepless.value matches 5.. unless entity @e[tag=sleepless.newBed,distance=..8] run function sleepless:events/away_effect_start
execute if score dayticks sleepless.value >= sunriseLimit sleepless.value unless score dayphase sleepless.value matches 5.. run scoreboard players set dayphase sleepless.value 5
execute as @a at @s unless dimension minecraft:the_end unless score @s sleepless.awayDelay matches 1.. if score awayEffect sleepless.config matches 1 if score dayticks sleepless.value >= sunriseEnd sleepless.value unless score dayphase sleepless.value matches 6 as @s[tag=sleepless.away] run function sleepless:events/away_effect_end
execute if score dayticks sleepless.value >= sunriseEnd sleepless.value unless score dayphase sleepless.value matches 6 run scoreboard players set dayphase sleepless.value 6

#Clock messages if the player holds a clock in hotbar or offhand in the overworld
# sounds
execute as @a at @s if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
execute as @a at @s if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
execute as @a at @s if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4.. if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
# messages
execute as @a if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.late","color": "dark_gray"}
execute as @a if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.midnight","color": "dark_gray"}
execute as @a if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4.. if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.darkhour","color": "dark_gray"}
# day phase scoreboard
execute if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 run scoreboard players set dayphase sleepless.value 2
execute if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 run scoreboard players set dayphase sleepless.value 3
execute if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4.. run scoreboard players set dayphase sleepless.value 4

# Run the sunrise function if it's the beginning of a day
execute if score daytime sleepless.value matches 0..80 unless score dayphase sleepless.value matches 1 run function sleepless:events/sunrise
# Loop this function
schedule function sleepless:main/tick 1t
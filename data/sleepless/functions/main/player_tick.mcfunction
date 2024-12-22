# Save away players when they reach or place a bed
execute if entity @s[tag=sleepless.away] if entity @e[tag=sleepless.newBed,distance=..8] run function sleepless:events/away_effect_cancel
# Initialize new players
execute as @s[tag=!sleepless.init] at @s run function sleepless:main/playerinit
# Away effect based on calculated day ending
execute unless dimension minecraft:the_end unless score @s sleepless.awayDelay matches 1.. if score awayEffect sleepless.config matches 1 if score dayticks sleepless.value >= sunriseLimit sleepless.value unless score dayphase sleepless.value matches 5.. unless entity @e[tag=sleepless.newBed,distance=..8] run function sleepless:events/away_effect_start
execute if score dayticks sleepless.value >= sunriseLimit sleepless.value unless score dayphase sleepless.value matches 5.. run scoreboard players set dayphase sleepless.value 5
execute unless dimension minecraft:the_end unless score @s sleepless.awayDelay matches 1.. if score awayEffect sleepless.config matches 1 if score dayticks sleepless.value >= sunriseEnd sleepless.value unless score dayphase sleepless.value matches 6 as @e[tag=sleepless.away] run function sleepless:events/away_effect_end
execute if score dayticks sleepless.value >= sunriseEnd sleepless.value unless score dayphase sleepless.value matches 6 run scoreboard players set dayphase sleepless.value 6

#Clock messages if the player holds a clock in hotbar or offhand in the overworld
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4 if predicate sleepless:has_clock if dimension overworld run playsound sleepless:clock_strike hostile @s ~ ~ ~ 1 1 1
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.late","color": "dark_gray"}
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.midnight","color": "dark_gray"}
execute if score clockWarning sleepless.config matches 1 if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4 if predicate sleepless:has_clock if dimension overworld run title @s actionbar {"translate": "sleepless.darkhour","color": "dark_gray"}
execute if score daytime sleepless.value matches 12000..12080 unless score dayphase sleepless.value matches 2 run scoreboard players set dayphase sleepless.value 2
execute if score daytime sleepless.value matches 18000..18080 unless score dayphase sleepless.value matches 3 run scoreboard players set dayphase sleepless.value 3
execute if score daytime sleepless.value matches 22000..22080 unless score dayphase sleepless.value matches 4 run scoreboard players set dayphase sleepless.value 4
# Count up all players
#scoreboard players add playerCount sleepless.value 1
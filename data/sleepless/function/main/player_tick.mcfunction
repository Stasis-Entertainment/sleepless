# Save away players when they reach or place a bed
execute if entity @s[tag=sleepless.away] if entity @e[tag=sleepless.newBed,distance=..8] run function sleepless:events/away_effect_cancel
# ...or if they turn into a spectator
execute if entity @s[tag=sleepless.away,gamemode=spectator] run function sleepless:events/away_effect_cancel
# Initialize new players
execute as @s[tag=!sleepless.init] at @s run function sleepless:main/playerinit

# Count up all players
#scoreboard players add playerCount sleepless.value 1
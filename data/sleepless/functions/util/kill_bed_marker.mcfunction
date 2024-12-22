# Utility function for if a room was slept in with the pack disabled
kill @e[type=marker,tag=sleepless.slept,distance=..7]
tellraw @s {"text": "Marked the current room as unused.","color": "gray"}
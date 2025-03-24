# Utility function for if a room was slept in with the pack disabled
summon marker ~ ~ ~ {Tags:["sleepless.slept","smithed.strict"]}
tellraw @s {"text": "Marked the current room as already used.","color": "gray"}
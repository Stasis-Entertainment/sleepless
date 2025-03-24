# This function initiates the nightmare loop
# Set the timer for the nightmare (sleeping takes 101 ticks)
scoreboard players set @s sleepless.nightmare 101
# Play the sound for the nightmare
playsound sleepless:nightmare master @s ~ ~ ~ 1 1 1
# Set the fade times for the nightmare
title @s times 0 2 0
# Begin the nightmare loop
function sleepless:events/nightmare_loop
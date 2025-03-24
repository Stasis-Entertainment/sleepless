# If the player makes it to a bed or places a bed in a safe place, cancel active away effect
# stop the sound
stopsound @s master sleepless:away_effect
# remove the fade
title @s clear
# clear the tag
tag @s remove sleepless.away
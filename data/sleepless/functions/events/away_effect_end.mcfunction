# If the player doesn't make it to a safe bed by morning, they die
# save the current gamerules
execute store result score doImmediateRespawn sleepless.value run gamerule doImmediateRespawn
execute store result score showDeathMessages sleepless.value run gamerule showDeathMessages
# immediately respawn the player
gamerule doImmediateRespawn true
# hide death messages for our custom one
gamerule showDeathMessages false
# clear the tag so they don't die repeatedly for having it
tag @s remove sleepless.away
# kill the player
kill @s[gamemode=survival]
# stop their sounds
stopsound @s
# play a custom death sound
playsound sleepless:death master @s ~ ~ ~ 1 1 1
# clear the screen effect
title @s clear
# show the custom death message first for the dying player, then for everyone else if death messages are on
tellraw @s {"translate": "sleepless.death.you","color": "#660000","italic": true,"bold": true}
execute at @s if score showDeathMessages sleepless.value matches 1.. run tellraw @a[distance=4..] [{"selector": "@s","color": "#660000", "italic": true,"bold": true},{"text":" "},{"translate": "sleepless.death", "color": "#660000", "bold": true, "italic": true}]
# restore the saved gamerules
execute unless score doImmediateRespawn sleepless.value matches 1.. run gamerule doImmediateRespawn false
execute if score showDeathMessages sleepless.value matches 1.. run gamerule showDeathMessages true
# if the world is hardcore and the "dying" is survival or adventure, "destroy the world"
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score hardcore sleepless.config matches 1 run function sleepless:events/destroy/are_you_sure/are_you_really_sure/dont_run_this/d_e_s_t_r_o_y
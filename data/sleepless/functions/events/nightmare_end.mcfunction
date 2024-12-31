# If the player sleeps in an unsafe bed, they die
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
kill @s[gamemode=!creative,gamemode=!spectator]
# stop their sounds
stopsound @s
# play a custom death sound
execute at @s run playsound sleepless:death master @s ~ ~ ~ 1 1
# show the custom death message first for the dying player, then for everyone else if death messages are on
tellraw @s {"translate": "sleepless.death.nightmare.you","color": "#660000","italic": true,"bold": true}
execute at @s if score showDeathMessages sleepless.value matches 1.. run tellraw @a[distance=1..] [{"selector": "@s","color": "#660000", "italic": true,"bold": true},{"text": " ", "color": "#660000", "bold": true, "italic": true},{"translate": "sleepless.death.nightmare", "color": "#660000", "bold": true, "italic": true}]
# restore the saved gamerules
execute unless score doImmediateRespawn sleepless.value matches 1.. run gamerule doImmediateRespawn false
execute if score showDeathMessages sleepless.value matches 1.. run gamerule showDeathMessages true
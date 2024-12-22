# If safe beds are enabled, remove mobs
execute if score safeBeds sleepless.config matches 1 as @a at @s if entity @e[tag=sleepless.newBed,distance=..8] run function sleepless:events/remove_mob
# If exhaustion is enabled, apply effects
execute if score exhaustion sleepless.config matches 1 as @a run function sleepless:events/exhaustion
# Loop this function, 30 seconds
schedule function sleepless:main/30s 30s
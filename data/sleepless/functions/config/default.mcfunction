# If the config values are not set, this sets them to a default value
execute unless score awayEffect sleepless.config matches 0..1 run scoreboard players set awayEffect sleepless.config 1
execute unless score nightmareEffect sleepless.config matches 0..1 run scoreboard players set nightmareEffect sleepless.config 1
execute unless score dayCount sleepless.config matches 0..1 run scoreboard players set dayCount sleepless.config 1
execute unless score roomCount sleepless.config matches 0..1 run scoreboard players set roomCount sleepless.config 1
execute unless score clockWarning sleepless.config matches 0..1 run scoreboard players set clockWarning sleepless.config 1
execute unless score exhaustion sleepless.config matches 0..1 run scoreboard players set exhaustion sleepless.config 1
execute unless score freezeTime sleepless.config matches 0..1 run scoreboard players set freezeTime sleepless.config 1
execute unless score roomWarning sleepless.config matches 0..2 run scoreboard players set roomWarning sleepless.config 1
execute unless score hardcore sleepless.config matches 0..1 run scoreboard players set hardcore sleepless.config 0
execute unless score morningChime sleepless.config matches 0..1 run scoreboard players set morningChime sleepless.config 1
execute unless score safeBeds sleepless.config matches 0..1 run scoreboard players set safeBeds sleepless.config 1
execute unless score awayDelay sleepless.config matches 0.. run scoreboard players set awayDelay sleepless.config 3
execute unless score dayLength sleepless.config matches 6000.. run scoreboard players set dayLength sleepless.config 24000
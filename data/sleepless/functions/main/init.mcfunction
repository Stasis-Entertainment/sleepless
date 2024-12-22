#gamerule sendCommandFeedback false

# tag sleepless.slept Marker entity which appears after having slept in a bed, used to detect sleeping again and for detecting home
# tag sleepless.newBed The tag added to a bed that has just been placed to count it as safe
# tag sleepless.away Player tag indicating if the player is away from home and the sun is about to rise

# objective sleepless.value The objective used for primary variables in the pack
# objective sleepless.config The objective used for all config variables in the pack
# objective sleepless.timeAwake The time in ticks a player has spent without sleeping
# objective sleepless.awayDelay The number of days left before away death effect begins

# score_holder daytime Queried per tick to find the current time of day in ticks
# score_holder playerCount Queried per tick for the number of online players
# score_holder playersOnline Set to one if there are any non-spectator players in-game
# score_holder sleepingCount Counts the number of players who are sleeping properly
# score_holder awayEffect Config value for the death away from home effect
# score_holder clockWarning Config value for the clock chat messages
# score_holder dayCount Config value for the day counter announcement
# score_holder exhaustion Config value for the exhaustion effects
# score_holder freezeTime Config value for freezing time when no players are active

# Force initial defaults
function sleepless:config/force_default

# Mark the pack as loaded
scoreboard players set loaded sleepless.value 1
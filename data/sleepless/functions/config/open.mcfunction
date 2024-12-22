# The main config page
# Each value has two lines. One displays when it is enabled, the other when disabled.
# This creates the toggleable effect when clicked
# click plays on open, as well as any clicked option change
playsound sleepless:click master @s ~ ~ ~ 1 1 1
# title
tellraw @s [{"text": "\n\n\n\n\n\n\n\n","color": "blue","bold": true,"underlined": true},{"translate": "sleepless.config.title","color": "blue","bold": true,"underlined": true},{"text":"\n"}]
# away effect, primary pack function
execute if score awayEffect sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.away_effect.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.away_effect.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/away_effect/disable"}}]
execute if score awayEffect sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.away_effect.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.away_effect.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/away_effect/enable"}}]
# nightmare effect, secondary pack function
execute if score nightmareEffect sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.nightmare_effect.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.nightmare_effect.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/nightmare_effect/disable"}}]
execute if score nightmareEffect sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.nightmare_effect.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.nightmare_effect.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/nightmare_effect/enable"}}]
# announce room count
execute if score roomCount sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.room_counter.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.room_counter.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/room_count/disable"}}]
execute if score roomCount sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.room_counter.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.room_counter.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/room_count/enable"}}]
# announce day count
execute if score dayCount sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.day_counter.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.day_counter.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/day_count/disable"}}]
execute if score dayCount sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.day_counter.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.day_counter.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/day_count/enable"}}]
# display clock warnings
execute if score clockWarning sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.clock_warning.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.clock_warning.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/clock_warning/disable"}}]
execute if score clockWarning sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.clock_warning.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.clock_warning.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/clock_warning/enable"}}]
# do exhaustion effects
execute if score exhaustion sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.exhaustion.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.exhaustion.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/exhaustion/disable"}}]
execute if score exhaustion sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.exhaustion.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.exhaustion.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/exhaustion/enable"}}]
# warn players when placing an unsafe bed
execute if score roomWarning sleepless.config matches 2 run tellraw @s [{"translate": "sleepless.config.room_warning.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.room_warning.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/room_warning/disable"}}]
execute if score roomWarning sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.room_warning.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.room_warning.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.room_warning.sound_only","color": "#aaaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/room_warning/enable"}}]
execute if score roomWarning sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.room_warning.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.room_warning.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/room_warning/sound_only"}}]
# hardcore: destroy all players beds when someone misses a night
execute if score hardcore sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.hardcore.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.hardcore.tooltip","color": "#ffaaaa"}},"color": "#ffaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/hardcore/disable"}}]
execute if score hardcore sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.hardcore.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.hardcore.tooltip","color": "#ffaaaa"}},"color": "#ffaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/hardcore/enable"}}]
# morning chime sound effect
execute if score morningChime sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.morning_chime.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.morning_chime.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/morning_chime/disable"}}]
execute if score morningChime sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.morning_chime.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.morning_chime.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/morning_chime/enable"}}]
# safe beds remove monsters
execute if score safeBeds sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.safe_beds.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.safe_beds.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/safe_bed/disable"}}]
execute if score safeBeds sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.safe_beds.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.safe_beds.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/safe_bed/enable"}}]
# freeze time when no players online
execute if score freezeTime sleepless.config matches 1 run tellraw @s [{"translate": "sleepless.config.freeze_time.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.freeze_time.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.on","color": "#aaffaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/freeze_time/disable"}},{"text":"\n"}]
execute if score freezeTime sleepless.config matches 0 run tellraw @s [{"translate": "sleepless.config.freeze_time.label","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.freeze_time.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":false},{"translate": "sleepless.config.off","color": "#ffaaaa","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/freeze_time/enable"}},{"text":"\n"}]
# "reset" and "open day length"
tellraw @s [{"translate": "sleepless.config.reset","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.reset.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/force_default"}},{"text": "  |  ","color": "#aaaaff","underlined":false},{"translate": "sleepless.config.open_day_length","hoverEvent": {"action": "show_text","contents": {"translate": "sleepless.config.open_day_length.tooltip","color": "#aaaaff"}},"color": "#aaaaff","underlined":true,"clickEvent": {"action": "run_command","value": "/function sleepless:config/open_day_length"}}]
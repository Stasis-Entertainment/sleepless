# Kill the nearest new bed in 12 blocks. Large enough to prevent lingering markers, small enough not to remove beds that shouldn't be
kill @e[tag=sleepless.newBed,distance=..12,limit=1,sort=nearest]
# Reset this trigger advancement
advancement revoke @s only sleepless:picked_up_bed
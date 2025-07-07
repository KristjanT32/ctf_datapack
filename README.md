# CTF Datapack

This datapack adds the ability to add specific capture points in Minecraft to facilitate a game of Capture the Flag (Area).
The datapack allows the player to add invisible armor stands which the datapack will then regard as the point to capture. When
active, the datapack allows the player to "capture" a point on the map, by staying near it long enough. The system also allows
other players to capture a point if it has not been fully captured by the other team.

# How does it work?

Players are assumed to be in 2 teams - the team of the player is determined via the "team" scoreboard objective by either setting
it to 1 or 2.

When a player is near a capturable point (within 5 blocks), the progressbar will start filling - during this time, players from the
opposite team should try to get the other person farther away from the point to prevent the area from being captured.
When a player from the opposite team reaches the capturable area, the progressbar will first reset the progress of the previous team,
and then start filling up as the opposite team claims the area.

# Commands (functions)

- `/function capture:point/new` - creates a new point above the player
- `/function capture:point/remove` - removes a nearby capture point
- `/function capture:util/removeall` - removes all nearby capture points
- `/function capture:point/showname` - shows the name tag of a nearby capture point
- `/function capture:point/hidename` - hides the name tag of a nearby capture point
- `/function capture:util/showall` - shows all capture points' name tags
- `/function capture:util/hideall` - hides all capture points' name tags
- `/function capture:point/unclaim` - unclaims (uncaptures) a nearby capture point
- `/function capture:point/unclaimall` - unclaims all existing capture points

- `/function capture:util/start` - starts the game (enables the capture points)
- `/function capture:util/stop` - stops the game (disables the capture points)
- `/function capture:util/reset` - resets the game (disables the capture points and uncaptures them)

# Quick start guide

**1.** Create capture points on the map

- Visit each of the capturable areas on your map and run `/function capture:point/new` in the center of each area.

**2.** Hide name tags

- If you wish, you may hide all capture points' name tags via `/function capture:util/hideall`.

**3.** Start the game

- To enable the capture points (initially, they are disabled), run `/function capture:util/start`.

Done!

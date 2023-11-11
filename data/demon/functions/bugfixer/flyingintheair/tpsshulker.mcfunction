## This name doesn't make sense, just to dont change every single file
#fill ~ ~2 ~ ~ ~2 ~ oak_wood replace air
tp @e[type=shulker,tag=flyingbug,sort=nearest,limit=1] ~ ~2.2 ~

execute as @a[tag=flyingbug] at @s unless block ~ ~-0.5 ~ air run function demon:bugfixer/flyingintheair/removeshulker

execute as @a[tag=flyingbug] at @s unless block ~ ~-0.5 ~ air run tag @s remove flyingbug

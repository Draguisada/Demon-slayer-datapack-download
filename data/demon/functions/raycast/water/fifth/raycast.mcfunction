tag @e[tag=!fifthformwater,type=!#demon:nokill,distance=..1.71] add kill
particle minecraft:dripping_dripstone_water ~ ~-1.5 ~ 0.003 0 0.003 0.03 4 normal
data merge entity @e[type=!#demon:nokill,type=!player,distance=..1.7,limit=1,nbt=!{Silent:1b}] {Silent:1b}

#particles
particle minecraft:bubble ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]
particle minecraft:rain ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]
particle minecraft:dust 0 0.518 1 0.5 ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]
particle minecraft:dust 0 0.682 1 0.5 ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]
particle minecraft:dust 0 0.235 1 0.5 ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]
particle minecraft:dust 0 0.851 1 0.5 ~ ~ ~ 0.1 0 0.1 0 10 normal @a[distance=..30]

scoreboard players remove @s range 1

execute if score @s range matches ..1 run summon armor_stand ~ ~-.9 ~ {Tags:["waterfifthend"],Invisible:1b,NoGravity:1b}

execute if score @s range matches 1.. positioned ^ ^ ^.5 unless block ~ ~ ~ #demon:air run summon armor_stand ^ ^-0.5 ^-0.6 {Tags:["waterfifthend"],Invisible:1b,NoGravity:1b}
execute if score @s range matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #demon:air run function demon:raycast/water/fifth/raycast



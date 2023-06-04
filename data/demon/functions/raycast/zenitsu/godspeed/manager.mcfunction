function demon:raycast/zenitsu/godspeed/particle

tag @e[tag=!god,type=!#demon:nokill,distance=..2.5] add godspeed

scoreboard players remove @s range 1

execute if score @s range matches ..1 run summon armor_stand ~ ~-.9 ~ {Tags:["godend"],Invisible:1b,NoGravity:1b}

execute if score @s range matches 1.. positioned ^ ^ ^.5 unless block ~ ~ ~ #demon:air run summon armor_stand ^ ^-0.5 ^-0.6 {Tags:["godend"],Invisible:1b,NoGravity:1b}
execute if score @s range matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #demon:air run function demon:raycast/zenitsu/godspeed/manager



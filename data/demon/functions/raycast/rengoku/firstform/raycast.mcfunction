tag @e[tag=!firstformflame,type=!#demon:nokill,distance=..2] add killwaterfirst
particle flame ~ ~-1.5 ~ 0.003 0 0.003 0.03 4 normal

scoreboard players remove @s range 1

execute if score @s range matches ..1 run summon armor_stand ~ ~-.9 ~ {Tags:["flamefirstend"],Invisible:1b,NoGravity:1b}

execute if score @s range matches 1.. positioned ^ ^ ^.5 unless block ~ ~ ~ #demon:air run summon armor_stand ^ ^-0.5 ^-0.6 {Tags:["flamefirstend"],Invisible:1b,NoGravity:1b}
execute if score @s range matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #demon:air run function demon:raycast/rengoku/firstform/raycast


function demon:raycast/zenitsu/firstform/raycastparticleszenitsu

tag @e[tag=!zform,type=!#demon:nokill,distance=..2] add kill

particle end_rod ~ ~-1.5 ~ 0.003 0 0.003 0.03 4 normal

scoreboard players remove @s ds_range 1

execute if score @s ds_range matches 1 run summon armor_stand ~ ~-.9 ~ {Tags:["zenitsuendray"],Invisible:1b,NoGravity:1b}

execute if score @s ds_range matches 1.. positioned ^ ^ ^.5 unless block ~ ~ ~ #demon:air run summon armor_stand ^ ^-0.5 ^-0.6 {Tags:["zenitsuendray"],Invisible:1b,NoGravity:1b}
execute if score @s ds_range matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #demon:air run function demon:raycast/zenitsu/firstform/raycastzenitsu



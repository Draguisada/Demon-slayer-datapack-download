tag @e[tag=skyblue,type=armor_stand] add particlebluesky
execute as @e[tag=skyblue,type=armor_stand] at @s run playsound item.firecharge.use voice @a ~ ~ ~ 1 0.1
execute as @e[tag=skyblue,type=armor_stand] at @s run playsound item.firecharge.use voice @a ~ ~ ~ 1 0.5
execute as @e[tag=skyblue,type=armor_stand] at @s positioned ^ ^ ^-6 run function demon:particles/sun/bluesky/sky3
execute as @e[tag=skyblue,type=armor_stand] at @s positioned ^ ^ ^-6 run function demon:particles/sun/bluesky/sky4
execute as @a[tag=tp] run tp @s @s


scoreboard players set @a[tag=blueskydmg] hp_dmg 35
scoreboard players set @e[type=!player,tag=blueskydmg] hpr 35
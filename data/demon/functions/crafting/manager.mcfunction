schedule function demon:crafting/manager 10t

execute as @e[type=armor_stand,tag=maker] at @s run function demon:crafting/construction/nichirin/nichirinmaker
execute as @e[type=marker,tag=maker] at @s if block ~ ~1 ~ air run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=maker] at @s if block ~ ~ ~ air run setblock ~ ~1 ~ air destroy
execute as @e[type=marker,tag=maker] at @s if block ~ ~ ~ air if block ~ ~1 ~ air run kill @e[type=item,distance=..2]
execute as @e[type=marker,tag=maker] at @s if block ~ ~ ~ air if block ~ ~1 ~ air run kill @s


execute as @e[type=marker,tag=maker] at @s if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:nether_star"},{Slot:4b,id:"minecraft:nether_star"},{Slot:1b,id:"minecraft:netherite_ingot"},{Slot:3b,id:"minecraft:netherite_ingot"},{Slot:2b,id:"minecraft:netherite_sword"}]} run execute as @e[type=marker,tag=maker] at @s run function demon:crafting/construction/nichirin/made




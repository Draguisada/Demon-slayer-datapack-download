tag @s add rainbow
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.eleventh.chat","color":"gold"}]
effect give @s minecraft:invisibility 2 2 false

tellraw @a[tag=debug] {"text":"damage 0","color":"red"}

scoreboard players set @s detectclick 0
#Comestics!

schedule function demon:breathings/sun/rainbow/tp 2t append

scoreboard players set @s cooldownrainbow 100

scoreboard players set @s kagura 20

tellraw @a[tag=debug] "manager rainbow sun"

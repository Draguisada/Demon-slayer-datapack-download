scoreboard players set @s ds_kagura 20
tag @s add summer
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.fourth.chat","color":"gold"}]

tellraw @a[tag=debug] {"text":"damage 25","color":"red"}

execute as @s at @s positioned ^ ^ ^1.335 run tag @e[distance=..3,type=!#demon:nokill,tag=!summer] add killsummer

execute positioned ^ ^1.5 ^2.67 run function demon:particles/sun/summer/manager

summon armor_stand ~ ~ ~ {Tags:["summerparticles"],NoGravity:1b,Invisible:1b}

execute as @e[tag=summerparticles,type=armor_stand] at @s rotated as @a[tag=summer] run tp ~ ~ ~

scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound block.lava.pop voice @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/medium

tag @s add summerorigin

schedule function demon:breathings/sun/summer/kill 10t append
schedule function demon:breathings/sun/summer/particle2 5t append

tellraw @a[tag=debug] "manager summer sun sun"
tag @s remove summer


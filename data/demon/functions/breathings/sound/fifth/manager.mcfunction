tag @s add soundfifth
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sound.fifth.chat","color":"white"}]

scoreboard players set @s ds_soundfifth 150

effect give @s speed 8 0 true
effect give @s resistance 8 0 true
effect give @s strength 8 0 true


scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2

playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1
playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1
playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1
playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1
playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1
playsound entity.firework_rocket.blast voice @s ~ ~ ~ 10 1

playsound entity.firework_rocket.twinkle voice @s ~ ~ ~ 3 1
playsound entity.firework_rocket.twinkle voice @s ~ ~ ~ 3 1


execute as @s run function demon:breathings/manager/cooldowns/sslow

tellraw @a[tag=debug] "manager soundfifth"
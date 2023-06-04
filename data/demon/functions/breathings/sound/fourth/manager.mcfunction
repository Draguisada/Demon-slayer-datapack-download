tag @s add soundfourth
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sound.fourth.chat","color":"white"}]

tag @e[tag=!soundfourth,type=!#demon:nokill,distance=..3.5] add kill

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=soundfourth,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 20","color":"white"}

scoreboard players set @s fourthsound 150

effect give @s slowness 8 9 true
effect give @s resistance 8 9 true

scoreboard players set @s detectclick 0
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

tellraw @a[tag=debug] "manager soundfourth"
tag @s add soundfirst
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sound.first.chat","color":"white"}]

execute positioned ^ ^1 ^1 run tag @e[tag=!soundfirst,type=!#demon:nokill,distance=..2.5] add 1sf

execute as @e[tag=1sf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=soundfirst,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 20","color":"white"}
execute rotated ~90 ~-0 positioned ^ ^2 ^-1 run function demon:particles/sound/first/manager
execute rotated ~90 ~-40 positioned ^ ^2 ^-1 run function demon:particles/sound/first/manager

summon firework_rocket ^ ^2 ^3 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;11743532,2651799,4312372,14602026,6719955,15790320],FadeColors:[I;11743532,2651799,4312372,14602026,6719955,15790320]},{Type:0,Flicker:0,Trail:0}]}}}}
summon firework_rocket ^ ^2 ^3 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;11743532,2651799,4312372,14602026,6719955,15790320],FadeColors:[I;11743532,2651799,4312372,14602026,6719955,15790320]},{Type:0,Flicker:0,Trail:0}]}}}}

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


execute as @s run function demon:breathings/manager/cooldowns/slow

tellraw @a[tag=debug] "manager soundfirst"
tag @s remove soundfirst
tag @e[tag=1sf] remove 1sf
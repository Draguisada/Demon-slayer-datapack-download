tag @s add sky
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.second.chat","color":"gold"}]

effect give @s minecraft:levitation 1 255 true
effect give @s minecraft:slowness 1 4 true

summon armor_stand ~ ~2 ~ {Tags:["skyblue"],Invisible:1b,NoGravity:1b}
scoreboard players set @s ds_kagura 20
execute as @e[tag=skyblue,type=armor_stand] at @s rotated as @a[tag=sky] rotated ~ 0 run tp ~ ~ ~
tp @s @e[type=armor_stand,tag=skyblue,limit=1,sort=nearest]

tag @e[type=!#demon:kill,distance=..6,tag=!sky] add blueskydmg
tag @a[tag=sky,distance=2..] add tp
execute as @e[tag=blueskydmg,type=!#demon:nokill] at @s run damage @s 35 minecraft:player_attack by @a[tag=sky,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 35","color":"gold"}

scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound item.firecharge.use voice @s ~ ~ ~ 1 1
playsound item.firecharge.use voice @a ~ ~ ~ 1 2

execute as @e[type=armor_stand,tag=skyblue] at @s positioned ^ ^1 ^-2 run function demon:particles/sun/bluesky/manager

function demon:bugfixer/flyingintheair/giveattribute

execute as @s run function demon:breathings/manager/cooldowns/medium

tellraw @a[tag=debug] "manager blue sky sun"
tag @s remove sky

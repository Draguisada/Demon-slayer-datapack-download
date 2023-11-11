tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.third.chat","color":"red"}]
effect give @s minecraft:slowness 1 4 true
effect give @s minecraft:levitation 1 1 true
tp @s ~ ~2 ~ 
##Dmg
execute positioned ^ ^ ^1 run tag @e[tag=!flameform,distance=..1.3,type=!#demon:nokill] add 3ff

execute as @e[tag=3ff,type=!#demon:nokill] at @s run damage @s 15 minecraft:player_attack by @a[tag=flameform,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 15","color":"red"}

##
execute as @s at @s rotated as @s anchored feet positioned ~ ~-2.4 ~ run function demon:particles/flame/third/particles
scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 1
playsound item.firecharge.use player @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/fast
tag @s remove flameform
tag @e[tag=3ff] remove 3ff
tellraw @a[tag=debug] "manager third flame"
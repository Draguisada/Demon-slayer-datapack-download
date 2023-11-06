tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.four.chat","color":"red"}]
effect give @s minecraft:slowness 2 9 true
execute positioned ^ ^ ^1 run effect give @e[tag=!flameform,distance=..2.5,type=!#demon:nokill] slowness 9 5
tellraw @a[tag=debug] {"text":"damage slowness","color":"red"}
execute as @s at @s positioned ^0.2 ^0.9 ^0.5 run function demon:particles/flame/four/particles
execute as @s at @s positioned ^-0.2 ^1.5 ^0.5 run function demon:particles/flame/four/particles
execute as @s at @s positioned ^-0.2 ^0.9 ^0.5 run function demon:particles/flame/four/particles
execute as @s at @s positioned ^0.6 ^1.5 ^0.5 run function demon:particles/flame/four/particles
scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 1
playsound item.firecharge.use player @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/medium
tag @s remove flameform

tellraw @a[tag=debug] "manager four flame"
execute as @a[tag=rainbow] at @s run tp ^ ^ ^5
execute as @a[tag=rainbow] run scoreboard players set @s ds_tanjiroattack 5
effect give @a[tag=rainbow] minecraft:levitation 1 255 true
execute as @a[tag=rainbow] run tag @s add flyingbug

execute as @a[tag=rainbow] run summon shulker ~ ~2.1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["flyingbug"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:10000,ShowParticles:0b}]}



execute as @a[tag=rainbow] run tag @s remove rainbow

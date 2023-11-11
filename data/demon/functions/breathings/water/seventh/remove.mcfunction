execute as @e[type=marker,tag=seventhformwaterbarrier] at @s run fill ^6 ^6 ^6 ^-6 ^-6 ^-6 air replace barrier
#kill @e[type=#demon:projectile,distance=..3]


tellraw @a[tag=debug] "remove seventh water"

kill @e[type=marker,tag=seventhformwaterbarrier]
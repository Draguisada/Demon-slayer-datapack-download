particle minecraft:splash ^-0.45 ^1.5 ^ 0 0.3 0.1 .0 30 normal @a[distance=...30]
particle minecraft:bubble ^-0.55 ^1.5 ^ 0 0.3 0.1 .0 10 normal @a[distance=...30]
particle minecraft:bubble_pop ^-0.55 ^1.5 ^ 0 0.3 0.1 .0 10 normal @a[distance=...30]
particle dust 0.024 0.408 0.914 0.6 ^-0.55 ^1.5 ^ 0 0.3 0.1 .0 10 normal @a[distance=...30]
#water dragon
particle dust 0.024 0.408 0.914 1 ^-1.4 ^2.1 ^-1.5 0.3 0.3 0.3 1 50 normal @a[distance=..30]
particle bubble ^-1.4 ^2.1 ^-1.5 0.3 0.3 0.3 1 50 normal @a[distance=..30]
particle splash ^-1.4 ^2.1 ^-1.5 0.3 0.3 0.3 1 50 normal @a[distance=..30]
particle rain ^-1.4 ^2.1 ^-1.5 0.3 0.3 0.3 1 50 normal @a[distance=..30]

tellraw @a[tag=debugrepeat] "particle water 10form"

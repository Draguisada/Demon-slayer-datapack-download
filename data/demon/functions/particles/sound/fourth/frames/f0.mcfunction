summon firework_rocket ^-6 ^2 ^ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;11743532,2651799,4312372,14602026,6719955,15790320],FadeColors:[I;11743532,2651799,4312372,14602026,6719955,15790320]},{Type:0,Flicker:0,Trail:0}]}}}}

execute run scoreboard players set @a[tag=!fourthsound,distance=..3.5] hp_dmg 20
execute run scoreboard players set @e[tag=!fourthsound,type=!player,distance=..3.5] hpr 20

particle sweep_attack ^0.000 ^0.000 ^2.000 0 0 0 0 1 normal @a
particle sweep_attack ^0.031 ^0.312 ^1.975 0 0 0 0 1 normal @a
particle sweep_attack ^0.063 ^0.616 ^1.902 0 0 0 0 1 normal @a
particle sweep_attack ^0.094 ^0.905 ^1.781 0 0 0 0 1 normal @a
particle sweep_attack ^0.125 ^1.171 ^1.617 0 0 0 0 1 normal @a
particle sweep_attack ^0.157 ^1.407 ^1.413 0 0 0 0 1 normal @a
particle sweep_attack ^0.188 ^1.608 ^1.174 0 0 0 0 1 normal @a
particle sweep_attack ^0.219 ^1.769 ^0.907 0 0 0 0 1 normal @a
particle sweep_attack ^0.250 ^1.885 ^0.619 0 0 0 0 1 normal @a
particle sweep_attack ^0.281 ^1.955 ^0.317 0 0 0 0 1 normal @a
particle sweep_attack ^0.312 ^1.975 ^0.008 0 0 0 0 1 normal @a
particle sweep_attack ^0.343 ^1.947 ^-0.300 0 0 0 0 1 normal @a
particle sweep_attack ^0.374 ^1.871 ^-0.598 0 0 0 0 1 normal @a
particle sweep_attack ^0.405 ^1.750 ^-0.880 0 0 0 0 1 normal @a
particle sweep_attack ^0.435 ^1.586 ^-1.139 0 0 0 0 1 normal @a
particle sweep_attack ^0.466 ^1.383 ^-1.367 0 0 0 0 1 normal @a
particle sweep_attack ^0.496 ^1.149 ^-1.560 0 0 0 0 1 normal @a
particle sweep_attack ^0.526 ^0.887 ^-1.713 0 0 0 0 1 normal @a
particle sweep_attack ^0.557 ^0.606 ^-1.823 0 0 0 0 1 normal @a
particle sweep_attack ^0.587 ^0.313 ^-1.886 0 0 0 0 1 normal @a
particle sweep_attack ^0.617 ^0.015 ^-1.903 0 0 0 0 1 normal @a
particle sweep_attack ^0.646 ^-0.281 ^-1.872 0 0 0 0 1 normal @a
particle sweep_attack ^0.676 ^-0.566 ^-1.795 0 0 0 0 1 normal @a
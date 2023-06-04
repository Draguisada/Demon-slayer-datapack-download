#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function demon:particles/sun/bluesky/animator/flame/l0/l0_0
scoreboard players add $17422 cw_particleplot 1
execute if score $17422 cw_particleplot matches 4.. run scoreboard players set $17422 cw_particleplot 0
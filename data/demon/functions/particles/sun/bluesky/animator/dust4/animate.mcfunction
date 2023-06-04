#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function demon:particles/sun/bluesky/animator/dust4/l0/l0_0
scoreboard players add $9840 cw_particleplot 1
execute if score $9840 cw_particleplot matches 8.. run scoreboard players set $9840 cw_particleplot 0
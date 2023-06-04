summon armor_stand ~ ~ ~ {Tags:["rengokud","rengoku"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"bone_meal",Count:1b,tag:{CustomModelData:104b}}],HandItems:[{},{}],DisabledSlots:3080208}
tp @e[tag=rengokud,type=armor_stand] ~ ~ ~ ~ 0
schedule function demon:breathings/flame/nine/tiger/killtiger 13t append
tellraw @a[tag=debug] "release nine tiger flame"



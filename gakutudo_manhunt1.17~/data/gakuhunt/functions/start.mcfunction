title @a title "Game Starting..."
scoreboard players set #start start 1
gamemode survival @a
team join hunter @a[team=!runner]
effect give @a[team=hunter] blindness 10000 100 true
effect give @a[team=hunter] resistance 10000 255 true
effect give @a[team=hunter] slowness 10000 255 true
effect give @a slow_falling 10 255 true
execute as @e[type=armor_stand,distance=..20] at @s run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 air destroy
execute as @e[type=armor_stand,distance=..20] at @s run kill @e[type=item, distance=..30]
kill @e[type=armor_stand,distance=..30]
effect give @a saturation 1 255 true
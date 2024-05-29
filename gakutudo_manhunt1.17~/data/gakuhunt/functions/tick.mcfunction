tag @a[tag=runner5, tag=runner1] remove runner5
tag @a[tag=runner5, tag=runner2] remove runner5
tag @a[tag=runner5, tag=runner3] remove runner5
tag @a[tag=runner5, tag=runner4] remove runner5

#runner counter
scoreboard players set #count count 0
execute as @a[team=runner] run scoreboard players add #count count 1

#function load
function gakuhunt:runner/position_get
function gakuhunt:runner/position_set
function gakuhunt:hunter/runner_pos
function gakuhunt:game/go_nether
function gakuhunt:game/go_end

#go_nether
execute as @a[team=runner] at @s if block ~ ~ ~ nether_portal run scoreboard players add @s go_nether 1
#go_nether reset
execute as @a[team=runner] at @s if block ~ ~ ~ air run scoreboard players set @s go_nether 0

#go_end
execute as @a[team=runner] at @s if block ~ ~-1 ~ end_portal run scoreboard players add @s go_end 1

#death
gamemode spectator @a[scores={death=1..},team=runner]
team leave @a[scores={death=1..},team=runner]
scoreboard players set @a[scores={death=1..}] death 0

#end
execute if score #end end matches 1 if score #system_count count matches 0 if score #count count matches 0 run function gakuhunt:system/gameover
execute as @a[scores={dragon=1..}] if score #end end matches 1 if score #system_count count matches 0 run function gakuhunt:system/gameclear

#score reset
scoreboard players set @a[scores={runner_sel=5}] runner_sel 0

#count gg
execute if score #start start matches 1 run scoreboard players add #start_count start 1

#start

#60tick
execute if score #start_count start matches 60 run title @a title "10秒後に開始"
#160tick
execute if score #start_count start matches 160 run title @a title "5秒後に開始"
#200tick
execute if score #start_count start matches 200 run title @a title "3秒後に開始"
#220tick
execute if score #start_count start matches 220 run title @a title "2秒後に開始"
#240tick
execute if score #start_count start matches 240 run title @a title "1秒後に開始"
#260tick
execute if score #start_count start matches 260 run function gakuhunt:system/game

#replace
item replace entity @a[team=hunter] container.4 with carrot_on_a_stick{display:{Name:'[{"text":"Runner Selector","color":"aqua"}]'},gakuhunt: 1b} 1

#kill
kill @e[type=item, nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{gakuhunt:1b}}}]
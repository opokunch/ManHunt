gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule doWeatherCycle false
gamemode adventure @a

#position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy

#obective
scoreboard objectives add death deathCount
scoreboard objectives add runner_sel minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add start dummy
scoreboard objectives add end dummy
scoreboard objectives add count dummy
scoreboard objectives add go_nether dummy
scoreboard objectives add go_end dummy

scoreboard players set #min_count count 2
scoreboard players set #system_count count 0
scoreboard players set #start start 0
scoreboard players set #start_count start 0
scoreboard players set #end end 0
scoreboard players set @a dragon 0
scoreboard players set @a runner_sel 0

#team
team add runner
team add hunter

team modify runner prefix [{"text":"[RUNNER] ","color":"aqua"}]
team modify hunter prefix [{"text":"[HUNTER] ","color":"red"}]

team modify runner nametagVisibility hideForOtherTeams

team modify runner friendlyFire false
team modify hunter friendlyFire false

#tellraw
function gakuhunt:tellraw/load
function gakuhunt:tellraw/link

#tag
tag @a remove runner1
tag @a remove runner2
tag @a remove runner3
tag @a remove runner4
tag @a remove runner5

#effect
effect give @a regeneration 10000 255 true
effect give @a resistance 10000 255 true
effect give @a saturation 10000 255 true
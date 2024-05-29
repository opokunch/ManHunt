#tag
tag @a[team=runner] add runner5
tag @r[team=runner, tag=runner5] add runner1
tag @r[team=runner, tag=runner5, tag=!runner1] add runner2
tag @r[team=runner, tag=runner5, tag=!runner1, tag=!runner2] add runner3
tag @r[team=runner, tag=runner5, tag=!runner1, tag=!runner2, tag=!runner3] add runner4

#tellraw
tellraw @a [{"selector":"@a[team=runner]"},{"text":" がランナーになった"}]
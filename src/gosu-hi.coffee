# Description:
#   hi gosu!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   none


module.exports = (robot) ->

    robot.hear /hi/i, (msg) ->
        msg.send "Hi and welcome to GOSU!"

    robot.hear /hello/i, (msg) ->
        msg.send "Hello and welcome to GOSU!"

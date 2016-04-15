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

    robot.respond /hi/i, (msg) ->
        msg.send "Hi and welcome to GOSU!"

    robot.respond /hello/i, (msg) ->
        msg.send "Hello and welcome to GOSU!"

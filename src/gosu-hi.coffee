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

class Functions

    searchArray: (key, arr) ->
        i = 0

        while i < arr.length
            if arr[i].id == key
                return true
            i++
        return false

    findKeyIndex: (arr, key, val) ->
        i = 0

        while i < arr.length
            if arr[i][key] == val
                return i
            i++
        null

module.exports = (robot) ->
    hiarr = ['Hi and welcome to GOSU!', 'http://media4.popsugar-assets.com/files/2014/08/08/878/n/1922507/caef16ec354ca23b_thumb_temp_cover_file32304521407524949.xxxlarge/i/Funny-Cat-GIFs.jpg', 'https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg', 'https://s-media-cache-ak0.pinimg.com/236x/60/9f/39/609f392284fd9e5d787ee190ca1bbc40.jpg', 'http://www.commentsyard.com/graphics/hello/hello100.jpg', 'https://www.askideas.com/media/07/Checking-In-And-Waving-Hello-Animated-Cat-Picture.gif', 'https://s-media-cache-ak0.pinimg.com/736x/e6/fe/cb/e6fecb5b0d2490faac44c31dab6ad788.jpg', 'https://media.giphy.com/media/KBtNR7MkrO5UY/giphy.gif', 'http://www.gifwave.com/media/7899_jim-carrey-hello-funny-wave-yes-man.gif', 'http://soepic.net/stor/items/02ccd266fdd64a917.jpg', 'https://media.giphy.com/media/IBMavwmu4KEEw/giphy.gif', 'https://cdn.discourse.org/imgur/uploads/default/original/3X/5/0/50808907a184a2e7306249da1eca2eea143a19eb.gif', 'https://media.giphy.com/media/fOkcM8P0k3mIo/giphy.gif', 'https://media.giphy.com/media/gFPFVqEPerY1G/giphy.gif', 'https://media.giphy.com/media/11PKcj6HznPK8w/giphy.gif', 'https://media.giphy.com/media/vDhLDKWAGnMOY/giphy.gif']
    byearr = ['Sorry to see you go :(!', 'https://media.giphy.com/media/Xcs2AoOnwklUs/giphy.gif', 'http://media4.popsugar-assets.com/files/2014/11/06/322/n/1922283/728c12978f2d92be_tumblr_mwji67R3w71sj1ltqo1_500AQFFYS.xxxlarge/i/When-Woody-says-goodbye-you-SOBBED.gif', 'http://gifsec.com/wp-content/uploads/GIF/2014/06/im-done-goodbye-gif.gif?gs=a', 'http://gifsec.com/wp-content/uploads/GIF/2014/06/goodbye-gifs.gif', 'https://media.giphy.com/media/12CtkDlw4QVnWw/giphy.gif', 'https://media.giphy.com/media/Ne0hwROg01j7a/giphy.gif', 'https://media.giphy.com/media/PjB6lT9TSXp4Y/giphy.gif', 'http://www.sharegif.com/wp-content/uploads/2014/04/marty-mcflydoc-brownback-to-the-futuregoodbye.gif', 'http://gifsec.com/wp-content/uploads/GIF/2014/04/Goodbye-gif.gif', 'https://media.giphy.com/media/hzXyX6EUe7Rv2/giphy.gif', 'https://media.giphy.com/media/QoesEe6tCbLyw/giphy.gif', 'https://media.giphy.com/media/Qdk7jQBfBK6je/giphy.gif']
    usrarr = robot.brain.data["GOSU-hi-script"]
    usrarr = [] if !usrarr?

    funcs = new Functions

    robot.hear /user_joined/i, (msg) ->
        if funcs.searchArray(msg.envelope.user.id, usrarr) == false
            usrarr.push({id: msg.envelope.user.id, join: true, leave: false})
            robot.brain.data["GOSU-hi-script"] = usrarr
            robot.brain.save()
            msg.send msg.random hiarr

    robot.hear /user_left/i, (msg) ->
        getidx = funcs.findKeyIndex(usrarr, 'id', msg.envelope.user.id)
        if usrarr[getidx].leave == false
            usrarr[getidx].leave = true
            robot.brain.data["GOSU-hi-script"] = usrarr
            robot.brain.save()
            msg.send msg.random byearr

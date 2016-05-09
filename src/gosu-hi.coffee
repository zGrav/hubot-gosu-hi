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
    hiarr = ['Hi and welcome to GOSU!', 'AND GOODBYE TO ANYONE STANDING IN JOHN CENA`S WAY.', 'http://media4.popsugar-assets.com/files/2014/08/08/878/n/1922507/caef16ec354ca23b_thumb_temp_cover_file32304521407524949.xxxlarge/i/Funny-Cat-GIFs.jpg', 'https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg', 'https://s-media-cache-ak0.pinimg.com/236x/60/9f/39/609f392284fd9e5d787ee190ca1bbc40.jpg', 'http://www.commentsyard.com/graphics/hello/hello100.jpg', 'https://www.askideas.com/media/07/Checking-In-And-Waving-Hello-Animated-Cat-Picture.gif', 'https://s-media-cache-ak0.pinimg.com/736x/e6/fe/cb/e6fecb5b0d2490faac44c31dab6ad788.jpg', 'https://media.giphy.com/media/KBtNR7MkrO5UY/giphy.gif', 'http://www.gifwave.com/media/7899_jim-carrey-hello-funny-wave-yes-man.gif', 'http://soepic.net/stor/items/02ccd266fdd64a917.jpg', 'https://media.giphy.com/media/IBMavwmu4KEEw/giphy.gif', 'https://cdn.discourse.org/imgur/uploads/default/original/3X/5/0/50808907a184a2e7306249da1eca2eea143a19eb.gif', 'https://media.giphy.com/media/fOkcM8P0k3mIo/giphy.gif', 'https://media.giphy.com/media/gFPFVqEPerY1G/giphy.gif', 'https://media.giphy.com/media/11PKcj6HznPK8w/giphy.gif', 'https://media.giphy.com/media/vDhLDKWAGnMOY/giphy.gif']
    helloarr = ['Hello and welcome to GOSU!', 'AND GOODBYE TO ANYONE STANDING IN JOHN CENA`S WAY.', 'http://media4.popsugar-assets.com/files/2014/08/08/878/n/1922507/caef16ec354ca23b_thumb_temp_cover_file32304521407524949.xxxlarge/i/Funny-Cat-GIFs.jpg', 'https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg', 'https://s-media-cache-ak0.pinimg.com/236x/60/9f/39/609f392284fd9e5d787ee190ca1bbc40.jpg', 'http://www.commentsyard.com/graphics/hello/hello100.jpg', 'https://www.askideas.com/media/07/Checking-In-And-Waving-Hello-Animated-Cat-Picture.gif', 'https://s-media-cache-ak0.pinimg.com/736x/e6/fe/cb/e6fecb5b0d2490faac44c31dab6ad788.jpg', 'https://media.giphy.com/media/KBtNR7MkrO5UY/giphy.gif', 'http://www.gifwave.com/media/7899_jim-carrey-hello-funny-wave-yes-man.gif', 'http://soepic.net/stor/items/02ccd266fdd64a917.jpg', 'https://media.giphy.com/media/IBMavwmu4KEEw/giphy.gif', 'https://cdn.discourse.org/imgur/uploads/default/original/3X/5/0/50808907a184a2e7306249da1eca2eea143a19eb.gif', 'https://media.giphy.com/media/fOkcM8P0k3mIo/giphy.gif', 'https://media.giphy.com/media/gFPFVqEPerY1G/giphy.gif', 'https://media.giphy.com/media/11PKcj6HznPK8w/giphy.gif', 'https://media.giphy.com/media/vDhLDKWAGnMOY/giphy.gif']
    usrarr = robot.brain.data["GOSU-hi-script"]
    usrarr = [] if !usrarr?

    robot.hear /hi/i, (msg) ->
        if usrarr.indexOf(msg.envelope.user.name) == -1
            usrarr.push(msg.envelope.user.name)
            robot.brain.data["GOSU-hi-script"] = usrarr
            robot.brain.save()
            msg.send msg.random hiarr

    robot.hear /hello/i, (msg) ->
        if usrarr.indexOf(msg.envelope.user.name) == -1
            usrarr.push(msg.envelope.user.name)
            robot.brain.data["GOSU-hi-script"] = usrarr
            robot.brain.save()
            msg.send msg.random helloarr

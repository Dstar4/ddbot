# Description:
#   Remind members about our code of conduct
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot conduct - Remind the channel about the devICT code of conduct

module.exports = (robot) ->
  robot.hear /!conduct/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md"

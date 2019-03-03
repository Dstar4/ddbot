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
#   hubot !conduct - Remind the channel about the D4D code of conduct
#   hubot !docs - list important documents
#   hubot !project idea - Steps to getting a new project started

module.exports = (robot) ->
  robot.hear /!conduct/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md"

  robot.hear /!docs/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first"

  robot.hear /!project idea/i, (res) ->
    res.send "https://github.com/Data4Democracy/project-ideas"

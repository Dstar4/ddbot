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
#   hubot !idea - Steps to getting a new project started
#   hubot !person - Reach out to a D4D ambassador
#   hubot !new project
module.exports = (robot) ->
  robot.hear /!conduct/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md"

  robot.hear /!docs/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first"

  robot.hear /!idea/i, (res) ->
    res.send "https://github.com/Data4Democracy/project-ideas"
  person = ['person 1' , 'person 2' , 'person 3']
  robot.hear /!person/i, (res) ->
    res.send person.toString()

  robot.hear /!new project/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/new-project-template.md"
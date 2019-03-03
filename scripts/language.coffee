# Description:
#   To introduce projects to new members
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot !language - links to projects filtered by language

module.exports = (robot) ->

  r = ['R project' , ' another R project']
  python = 'https://github.com/Data4Democracy?utf8=%E2%9C%93&q=&type=&language=python'
  jupyter = 'https://github.com/Data4Democracy?language=jupyter+notebook'
  javascript = 'Javascript Project'


  robot.hear /!language/i, (res) ->
    res.send 'What programming language do you prefer?'
    robot.respond /(.*)/i, (res) ->
      language = res.match[1].toLowerCase()
      if language is "python"
        res.send python
      if language is "r"
        res.send r.toString()
      if language is "javascript"
        res.send javascript
      if language is 'jupyter'
        res.send jupyter






  #  robot.respond /open the (.*) doors/i, (res) ->
  #    doorType = res.match[1]
  #    if doorType is "pod bay"
  #      res.reply "I'm afraid I can't let you do that."
  #    else
  #      res.reply "Opening #{doorType} doors"


  #  robot.hear /I like pie/i, (res) ->
  #    res.emote "makes a freshly baked pie"

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
#   hubot !new project
#   hubot !project lead
#   hubot !nonprofit - Details D4D's nonprofit status
#   hubot !feedback - Instructions of how to leave feedback and report bugs for the slackbot
#   hubot !onboard - Displays onboarding instructions
module.exports = (robot) ->

  robot.hear /!conduct/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md"

  robot.hear /!docs/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first"

  robot.hear /!idea/i, (res) ->
    res.send "https://github.com/Data4Democracy/project-ideas"

  robot.hear /!new project/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/new-project-template.md"

  robot.hear /!project lead/i, (res) ->
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/lead-role-description.md"
    res.send "https://github.com/Data4Democracy/read-this-first/blob/master/example_lead_routine.md"

  robot.hear /!feedback/i, (res) ->
    res.send "feedback instructions"

  robot.hear /!nonprofit/i, (res) ->
    res.send "Data for Democracy applied for independent non-profit status in early 2018 and receives grant funds and donations through its fiscal sponsor, The Hopewell Fund. We have recently convened a community body to seek board members. If you are interested, please email team@datafordemocracy.org"

  robot.hear /!onboard/i, (res) ->
    res.send "Hello, and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and discuss how we can use data and technology to make positive changes in communities around the world.\n\nPlease take a moment to review our Code of Conduct here https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md \n\nBefore you jump in, we'd love for you to sign our *Global Data Ethics Pledge*. The Pledge is a sort of Hippocratic Oath, but for data workers instead of medical practitioners. To learn more, visit https://www.datafordemocracy.org/pledge \n\n - *Introduce yourself!* We love meeting new people. Head over to #onboarding and tell us a little about yourself. Things that are great to include are the types of projects you are interested in working on and any relevant technology experience you have. Don't be intimidated if you are just getting started, there are plenty of non-technical roles to fill as well.\n\n- *Ready to help out with one of our ongoing projects?* If you look here the most active projects will always be near the top.https://github.com/Data4Democracy Inside the project you will find information on how to get started. You can then head over to the slack channel for that project and ask about ways to get involved. \n\n- *Want to start your own project?* Full documentation on starting a project can be found at https://github.com/Data4Democracy/project-ideas. You can also post in #project-ideas to get more feedback. Make sure to review the information here about becoming a project lead.\n\n In the meantime, Data is always around and here to help! Message @Data with 'help' to see a list of all the things it can do for you."
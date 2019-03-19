# Description:
#   To introduce new members to D4D
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:

module.exports = (robot) ->
  conversationId = "CGMQQ9GSG"
  robot.enter (res) ->
    if res.message.room == conversationId
      enterReply = "Hello, and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and discuss how we can use data and technology to make positive changes in communities around the world.\n\nPlease take a moment to review our Code of Conduct here https://github.com/Data4Democracy/read-this-first/blob/master/Code-of-Conduct.md \n\nBefore you jump in, we'd love for you to sign our *Global Data Ethics Pledge*. The Pledge is a sort of Hippocratic Oath, but for data workers instead of medical practitioners. To learn more, visit https://www.datafordemocracy.org/pledge \n\n - *Introduce yourself!* We love meeting new people. Head over to #onboarding and tell us a little about yourself. Things that are great to include are the types of projects you are interested in working on and any relevant technology experience you have. Don't be intimidated if you are just getting started, there are plenty of non-technical roles to fill as well.\n\n- *Ready to help out with one of our ongoing projects?* If you look here the most active projects will always be near the top.https://github.com/Data4Democracy Inside the project you will find information on how to get started. You can then head over to the slack channel for that project and ask about ways to get involved. \n\n- *Want to start your own project?* Full documentation on starting a project can be found at https://github.com/Data4Democracy/project-ideas. You can also post in #project-ideas to get more feedback. Make sure to review the information here about becoming a project lead.\n\n In the meantime, Data is always around and here to help! Message @Data with 'help' to see a list of all the things it can do for you."
      room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
      robot.messageRoom room.id, enterReply






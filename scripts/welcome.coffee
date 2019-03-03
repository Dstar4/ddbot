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
#   hubot onboard - onboarding help

module.exports = (robot) ->
  robot.hear /hi/i,  (res) ->
    enterReply = ", and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and  discuss how we can use data and technology to make positive changes in communities around the world. Before you jump in,we'd love for you to sign our *Global Data Ethics Pledge*.  The Pledge is a sort of Hippocratic Oath, but for data   workers instead of medical practitioners. To learn more,  visit https://www.datafordemocracy.org/pledge."
    stepTwo ="Once you've done that, you have a few options: - Introduce yourself! We love meeting new people.```<TODO: instructions for introducing yourself>``` - Got questions? No problem! ```<TODO: instructions for asking questions/reaching out to ambassadors>``` - Ready to help out with one of our ongoing projects? ```<TODO: instructions for finding and joining a project>``` - Want to start your own project? ```<TODO: instructions for pitching your own project to the community>``` In the meantime, here are some resources you might find useful: ```- DataBot is always around and here to help! Message @DataBot with 'help' to see a list of all the things it can do for you.```"
    greeting = ['Hello', 'Hey', 'Greetings']
    room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
    setTimeout () ->
      robot.messageRoom room.id, (res.random greeting) + enterReply
      robot.messageRoom room.id, stepTwo
    , 1000


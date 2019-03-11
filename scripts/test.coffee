
# module.exports = (robot) ->
#   listenRoom =  robot.adapter.client.rtm.dataStore.getChannelByName('onboarding').id
#   console.log(listenRoom)
#   enterRoom  = robot.adapter.client.rtm.dataStore.getChannelByName res.event.type.channel
#   console.log(enterRoom)
#   if ( enterRoom  == listenRoom )
#     robot.enter  (res) ->
#       room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
#       console.log(room)
#       enterReply = ", and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and  discuss how we can use data and technology to make positive changes in communities around the world. Before you jump in,we'd love for you to sign our *Global Data Ethics Pledge*.  The Pledge is a sort of Hippocratic Oath, but for data   workers instead of medical practitioners. To learn more,  visit https://www.datafordemocracy.org/pledge."
#       stepTwo ="Once you've done that, you have a few options: - Introduce yourself! We love meeting new people.```<TODO: instructions for introducing yourself>``` - Got questions? No problem! ```<TODO: instructions for asking questions/reaching out to ambassadors>``` - Ready to help out with one of our ongoing projects? ```<TODO: instructions for finding and joining a project>``` - Want to start your own project? ```<TODO: instructions for pitching your own project to the community>``` In the meantime, here are some resources you might find useful: ```- DataBot is always around and here to help! Message @DataBot with 'help' to see a list of all the things it can do for you.```"
#       greeting = ['Hello', 'Hey', 'Greetings']
#       robot.messageRoom room.id, (res.random greeting) + enterReply
#       robot.messageRoom room.id, stepTwo


  # activeRoom = 'CGMQQ9GSG'
  # robot.hear /test/i, (res) ->
  #   room =  robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
  #   res.send "hello" if room.id == room.activeRoom
      # enterReply = ", and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and  discuss how we can use data and technology to make positive changes in communities around the world. Before you jump in,we'd love for you to sign our *Global Data Ethics Pledge*.  The Pledge is a sort of Hippocratic Oath, but for data   workers instead of medical practitioners. To learn more,  visit https://www.datafordemocracy.org/pledge."
      # stepTwo ="Once you've done that, you have a few options: - Introduce yourself! We love meeting new people.```<TODO: instructions for introducing yourself>``` - Got questions? No problem! ```<TODO: instructions for asking questions/reaching out to ambassadors>``` - Ready to help out with one of our ongoing projects? ```<TODO: instructions for finding and joining a project>``` - Want to start your own project? ```<TODO: instructions for pitching your own project to the community>``` In the meantime, here are some resources you might find useful: ```- DataBot is always around and here to help! Message @DataBot with 'help' to see a list of all the things it can do for you.```"
      # greeting = ['Hello', 'Hey', 'Greetings']
      # robot.messageRoom activeRoom, 'test'
      # robot.messageRoom room.id, stepTwo
  # robot.hear /hi/i, (res) ->
  #   res.send({ text: "Hello World!", channel: 'CGMQQ9GSG'

module.exports = (robot) ->
  conversationId = "CGMQQ9GSG"
  robot.enter (res) ->
    console.log(res.message.room)
    console.log(conversationId)
    if res.message.room == conversationId
      console.log 'hello'
      res.send 'is this working?'
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
  enterReply = "Hi, and welcome to Data for Democracy's Slack workspace! This is where we all hang out, collaborate, and  discuss how we can use data and technology to make positive changes in communities around the world. Before you jump in,we'd love for you to sign our *Global Data Ethics Pledge*.  The Pledge is a sort of Hippocratic Oath, but for data   workers instead of medical practitioners. To learn more,  visit https://www.datafordemocracy.org/pledge."
  # DM = robot.adapter.chatdriver.getDirectMessageRoomId user.name
  # robot.enter (res) ->
  #   res.message 'hello'

  robot.enter (res) ->
  #   robot.messageRoom (res.message.user.name, 'This is a room message'
    room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
    robot.messageRoom room.id, enterReply
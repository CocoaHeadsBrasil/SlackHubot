# Description
#   Posta no canal toda vez que um registro é criado no website do CocoaHeadsBR (fotos, agenda, cidades e videos)
#
# Dependencies:
#   none
#
# Configuration:
#
# Commands:
#   Interacao automatica via backend do website
#
# Notes:
#   
#
# Author:
#   ghvillasboas

url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/post/chbr/website", (req, res) ->

    query = querystring.parse(req.query)
    web_channel = req.body.channel
    web_message = req.body.message

    user = {}
    # user.room = if web_channel then "##{web_channel}" else "#hubottest"
    user.room = "#hubottest"

    emocao_hubot = [
      "YAY!",
      "YES!",
      "OBA!",
      "EBA!",
      "WOW!",
      "Uhhuuuu!",
      'Rádio Hubot innnnforma!'
    ]

    try
        robot.send user, "#{random emocao_hubot} #{web_message}"
        res.end "message sent to channel"

    catch error
      console.log "message-listner error: #{error}."

shuffle = (a) ->
  i = a.length
  while --i > 0
    j = ~~(Math.random() * (i + 1)) # ~~ is a common optimization for Math.floor
    t = a[j]
    a[j] = a[i]
    a[i] = t
  a

random = (a) ->
  a = shuffle(a)
  a[0]
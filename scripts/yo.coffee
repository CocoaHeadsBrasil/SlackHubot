# Description
#   Posts on channel everytime a YO is received
#
# Dependencies:
#   none
#
# Configuration:
#
# Commands:
#   via POST [URL]/get/yo
#
# Notes:
#   
#
# Author:
#   ghvillasboas (based on Artsy Editorial work)

url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.get "/get/yo", (req, res) ->

    query = querystring.parse(url.parse(req.url).query)

    user = {}
    user.room = "#hubottest"

    username = query.username if query.username

    emocao_hubot = [
      "Que legal! :blush:",
      "Que meigo! :kiss:",
      "Oba! :grin:",
      "Olha só! :stuck_out_tongue_winking_eye:",
      "Abacadabra! :collision:",
      "Que milagre! :confounded:",
      "Que chato :triumph:!",
      "Afffff. :rage:",
      "Hããã?. :dizzy_face:"
    ]

    propaganda = if ~~(Math.random() * (100 + 1)) % 2 == 0 then "A propósito, meu YO é HUBOTCOCOAHEADS :smirk:" else ""

    try
       robot.send user, "#{random emocao_hubot} Acabei de receber um YO de #{username}! #{propaganda}"

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
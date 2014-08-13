url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/flybot/message", (req, res) ->
    console.log "------------"
    console.log req.body

    query = querystring.parse(req.query)
    heroku_app = req.body.app
    heroku_user = req.body.user
    heroku_url = req.body.url
    heroku_head = req.body.head
    heroku_head_long = req.body.head_long
    heroku_git_log = req.body.git_log

    user = {}
    user.room = "#hubottest"

    try
       robot.send user, "INCOMING MESSAGE: #{req.body.payload} #{heroku_app} #{heroku_user} #{heroku_url} #{heroku_head} #{heroku_head_long #{heroku_git_log}}"

       res.end "message sent: #{query.message}"

    catch error
      console.log "message-listner error: #{error}."
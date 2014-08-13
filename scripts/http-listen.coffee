url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/flybot/message", (req, res) ->
    query = querystring.parse(req.query)
    heroku_app = req.query.app
    heroku_user = req.query.user
    heroku_url = req.query.url
    heroku_head = req.query.head
    heroku_head_long = req.query.head_long
    heroku_git_log = req.query.git_log

    user.room = "hubottest"

    try
       robot.send user, "INCOMING MESSAGE: #{heroku_app} #{heroku_user} #{heroku_url} #{heroku_head} #{heroku_head_long #{heroku_git_log}}"

       res.end "message sent"

    catch error
      console.log "message-listner error: #{error}."
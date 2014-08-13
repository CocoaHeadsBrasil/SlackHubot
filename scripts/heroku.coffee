url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/post/heroku", (req, res) ->

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
       robot.send user, "ATENÇÃO: Novo deploy no website #{heroku_url}: #{heroku_git_log}"

       res.end "message sent to channel"

    catch error
      console.log "message-listner error: #{error}."
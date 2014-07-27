# Description
#   Script to show a mario animation on \m/
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   \m/ or \M/
#
# Notes:
#   It just listens to the feed and interact with it
#
# Author:
#   ghvillasboas

mario_url = "http://hubotslackchbr.herokuapp.com/images/mario.gif"

module.exports = (robot) ->
  robot.hear /\\m\//i, (msg) ->
    msg.send mario_url
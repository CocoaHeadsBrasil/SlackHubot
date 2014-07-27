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

mario_url = "https://files.slack.com/files-pri/T02AHPE34-F02EECNSE/mario.gif"

module.exports = (robot) ->
  robot.hear /\\m\//i, (msg) ->
    msg.send mario_url
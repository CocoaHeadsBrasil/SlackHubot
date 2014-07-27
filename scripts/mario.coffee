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

mario_url = "http://randomgifs.net/wp-content/uploads/2013/10/531603_3372583637617_1160498996_n_9437_2013-10-09.gif"

module.exports = (robot) ->
  robot.hear /\\m\//i, (msg) ->
    msg.send mario_url
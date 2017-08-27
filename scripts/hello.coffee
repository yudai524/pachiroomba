# Description:
#   Say hello to everyone.

module.exports = (robot) ->

  robot.hear /Hi/, (res) ->
    res.send "おれの名前はパチ・ルンバだぜ！\nよろしくな！"

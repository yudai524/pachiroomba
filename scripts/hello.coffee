# Description:
#   Say hello to everyone.
#

module.exports = (robot) ->

  robot.hear /.?/, (res) ->
    res.send "おれの名前はパチ・ルンバ！まだ開発中だぜ！\nよろしくな！"

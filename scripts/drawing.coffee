# Description:
#   To draw a lot.

cronJob = require('cron').CronJob

module.exports = (robot) ->

  tellResult = () ->
    envelope = room: "#掃除当番"
    robot.send envelope, "今日の掃除当番を通達します。"

    setTimeout () ->
      robot.send envelope, "ドゥルドゥルドゥルドゥル....（抽選の音"

      setTimeout () ->
        robot.send envelope, "@yudai524 今日の掃除当番はお前だ！"
      , 3 * 1000
    , 3 * 1000

  robot.hear /draw/, (res) ->
    tellResult()

  # 月曜日の9:00に掃除当番の抽選
  cronjob = new cronJob('0 9 * * 1', () ->
    tellResult()
  )
  cronjob.start()

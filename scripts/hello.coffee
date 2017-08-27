# Description:
#   Say hello to everyone.

module.exports = (robot) ->
  hello = "おれの名前はパチ・ルンバだぜ！\nよろしくな！"

  robot.hear /Hi/, (res) ->
    res.send hello

  robot.hear /ナニィィ/, (res) ->
    res.send "おれの決定は覆らない"

  robot.catchAll (res) ->
    if res.message.match /// ^#{robot.name}\s ///
      options = [
        hello,
        "いいと思います（何言ってんだこいつ",
        "...（さっぱりピーマン",
        "アイムソーリー",
        "アイムカタコトジャパニーズ！",
        "すごーい",
        "やばーい",
        "うけるー",
        "なるほど",
        "いいと思います",
        "何言ってるか皆目見当つかねえよ\nおれなんか所詮パチもんだかんな...",
        "パチもんのおれをここまで育ててくれて、ありがとう",
        "ボンボヤージュ",
        "そういえばボンボヤージュってドン・キホーテに似てない？",
        "ちょっとドンキ行ってきます。",
        "今日はチートデイです。",
        "いいえ、今日はチートデイです。",
        "そう、今日はチートデイ。",
        "これってデジャヴかもしれない",
        "ふっかつのじゅもんを入力して下さい。",
        "赤べこ",
      ]
      res.send res.random options

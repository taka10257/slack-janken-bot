# slack-janken-bot

## 利用したもの
 - [hubot](https://hubot.github.com/docs/)
 - [glitch](https://glitch.com/)
 - [github](https://github.com/)
 - [slack](https://slack.com/)
 
## 準備するもの
 - じゃんけん用slack窓
 - hubot slack api token
 - glitch アカウント
 - リポジトリ直下に.envファイル 
 
## .env
```.env
export HUBOT_SLACK_TOKEN=XXXXX
``` 

## サーバー環境
 - [glitch](https://glitch.com/)とgithub連携させて、リポジトリを取得・展開
 - .envファイルを手動で配置

## glitch上記起動
 - [uptime robot](https://uptimerobot.com/)
  - glitchで展開したコードのURL `https://taka10257-slack-janken-bot.glitch.me/` を設定して定期的にサイトにアクセスすることで常時起動を確立
  - 無料プランでは12h/dayなので、どちらにしても最大12時間稼働まで

## 参考記事
 - [【完全無料】Hubot + Glitch で Slack Bot](https://qiita.com/deerboy/items/00ff9f71c046a2883974#hubot%E6%95%B4%E5%82%99)
 - [Slack Developer Kit for Hubot](https://slack.dev/hubot-slack/)


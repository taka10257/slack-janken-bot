module.exports =
  rock: () ->
    jankenRock()
  paper: () ->
    jankenPaper()
  scissors: () ->
    jankenScissors()

varRock = "rock"
varPaper = "paper"
varScissors = "scissors"

msgWin = "勝ち"
msgLose = "負け"
msgEven = "あいこ"

jankenRock = () ->
  botItem = botRandomItem();
  result = switch botItem
            when varRock
              msgEven
            when varPaper
              msgLose
            when varScissors
              msgWin
  formatMessage(varRock, botItem, result)

jankenPaper = () ->
  botItem = botRandomItem();
  result = switch botItem
            when varRock
              msgWin
            when varPaper
              msgEven
            when varScissors
              msgLose
  formatMessage(varPaper, botItem, result)

jankenScissors = () ->
  botItem = botRandomItem();
  result = switch botItem
            when varRock
              msgLose
            when varPaper
              msgWin
            when varScissors
              msgEven
  formatMessage(varScissors, botItem, result)

formatMessage = (userItem, botItem, result) ->
    if result
      "[user]: " + formatItem(userItem) +
      "[bot]: " + formatItem(botItem) +
      "[result]: " + result
    else
      "エラーです"

formatItem = (item) ->
  switch item
    when varRock
      ":punch:"
    when varPaper
      ":hand:"
    when varScissors
      ":v:"

botRandomItem = () ->
  items = [varRock, varPaper, varScissors]
  items[Math.floor(Math.random() * items.length)];

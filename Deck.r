deck <- read.csv("https://s3.us-east-1.amazonaws.com/General_V88/boomyeah2015/codingdojo/curriculum/content/chapter/1618705129__deck.csv")

View(deck)


shuffle = function(players, hand_size){
  x = players * hand_size # determine how many cards are needed
  
  # If else to determine if more than 52 cards are needed
  if (x > 52){
    return(paste("Not enough cards to play"))
    
  }else{
    
    cards <- sample(x=df$X, size=x, replace=FALSE) # return a sample of the total needed cards
    
    player1 <- df[df$X %in% cards[1:5],] # assign first 5 cards to player 1
    player2 <- df[df$X %in% cards[6:10],] # assign last 5 cards to player 2
    player3 <- df[df$X %in% cards[11:16],] # assign last 5 cards to player 3
    
    return(list(player1, player2, player3)) # return a list containing both players hands
  }
}

hands <- shuffle(3,5) # create hands

hands[1] # player 1 hand
hands[2] # player 2 hand
hands[3] # player 3 hand

hands1 = data.frame(hands[1])       
s1= sum(hands1$value)
s1
hands2 = data.frame(hands[2])       
s2= sum(hands2$value)
s2
hands3 = data.frame(hands[2])       
s3= sum(hands3$value)
s3

if (s1 > s2 & s3 ) {
  print("Player 1 has more points.")
} else if(s2 > s1 & s3 ){
  print("Player 2 has more points.")
} else {
  print("Player 3 has more points.")
}
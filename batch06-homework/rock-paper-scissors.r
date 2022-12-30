
game <- c("rock", "scissors", "paper")

bot <- function() {sample(game,1, replace=TRUE)}


cat("=== Welcome to 'Rock Paper Scissors' Game ===\n")
cat("\n")

WIN <- 0
LOSE <- 0
DRAW <- 0



###########################


  
print("Please enter your name.")



while (TRUE) {
  
  user_name <- readLines("stdin", n=1)


  
  if (user_name != "") {
  print(paste("Hi", user_name,"."))
    cat("\n")
  print("Please type Y to start the game")
    
    break
  } else {
    print("Please enter your name again.")
  } 
} ## end while loop 1


  print("When you want to stop just type q to quit the game")



while (TRUE) {


game_start <- tolower(readLines("stdin", n=1))
cat("\n")


if (game_start == "y") {
  cat("\n")
  cat("Choose your answer (Rock/ Scissors/ Paper) \ntype R | S | P\n")
  cat("\n")
  break
} else if (game_start != "y") {
  print("Please try again.")
}
} ## end while loop 2





cat("\n")
##print("Type R/ S /P")
  print("Ready")
  print("Start!")
cat("\n")


loop <- 0
while (TRUE) {



cat("\n")


print("-YOUR TURN-")

user_ans <- tolower(readLines("stdin", n=1))


loop <- loop + 1


bot_ans <- toupper(bot())


if (user_ans == "r") {
  user_ans <- "ROCK"
    
} else if (user_ans == "p") {
   user_ans <- "PAPER"

} else if (user_ans == "s") {
  user_ans <- "SCISSORS"
} 
  

  if (user_ans == "ROCK" & bot_ans == "ROCK" | user_ans == "PAPER" & bot_ans == "PAPER" | user_ans == "SCISSORS" & bot_ans == "SCISSORS") {
  cat("Your answer is ") 
  cat(toupper(user_ans))
  cat("\n")
  cat("\n")
  print("-BOT TURN-")
  print(bot_ans)
    cat("\n")
  print("DRAW")
  cat("\n")
  DRAW <- DRAW + 1
    
} else if (user_ans == "ROCK" & bot_ans == "SCISSORS" & bot_ans != "PAPER") {
  cat("Your answer is ") 
  cat(toupper(user_ans))
  cat("\n")
  cat("\n")
  print("-BOT TURN-")
  print(bot_ans)
    cat("\n")
  print("YOU WIN!!")
  cat("\n")
  WIN <- WIN + 1

} else if (user_ans == "PAPER" & bot_ans == "ROCK" & bot_ans != "SCISSORS") {
  cat("Your answer is ") 
  cat(toupper(user_ans))
  cat("\n")
  cat("\n")
  print("-BOT TURN-")
  print(bot_ans)
    cat("\n")
  print("YOU WIN!!")
  cat("\n")
  WIN <- WIN + 1

} else if (user_ans == "SCISSORS" & bot_ans == "PAPER" & bot_ans != "ROCK") {
  cat("Your answer is ") 
  cat(toupper(user_ans))
  cat("\n")
  cat("\n")
  print("-BOT TURN-")
  print(bot_ans)
    cat("\n")
  print("YOU WIN!!")
  cat("\n")
  WIN <- WIN + 1
 
} else if (user_ans == "q") {
    print("QUIT GAME")
    cat("\n")
    cat(paste("Your scores: \nWin =", WIN, "\nLose =", LOSE, "\nDraw =", DRAW))
    break

} else if (user_ans == "ROCK" & bot_ans == "PAPER" | user_ans == "SCISSORS" & bot_ans == "ROCK" | user_ans == "PAPER" & bot_ans == "SCISSORS") {    
  cat("Your answer is ") 
  cat(toupper(user_ans))
  cat("\n")
  cat("\n")
  print("-BOT TURN-")
  print(bot_ans)
    cat("\n")
  print("YOU LOSE!!")
  cat("\n")
  LOSE <- LOSE + 1
    
} else if (user_ans != "ROCK" | user_ans != "SCISSORS" | user_ans != "PAPER") {
  print("Please type your answer again.")
}

  
  
} ## end while loop

  
  





print()

game = "ROCK PAPER SCISSORS"

print(f"Welcome to the {game} game!")

print()



## if username is blank game will not continue

while True:
    name = input("Enter your name: ")
    if name == " ":
        print("Please enter your name again.")
    else:
        print(f"Hello {name}!")
        break





print()

print("Explain the rules?")



rules = """
    ***

    ROCK wins against SCISSORS.
    SCISSORS wins against PAPER.
    PAPER wins against ROCK.

    In this game, a bot will be your competitor.

    You will type your answer first:

    R - ROCK
    P - PAPER
    S - SCISSORS

    When you want to stop just type q to quit the game.

    ***"""

rules_ans = input("Yes (Y) / No (N): ")



while True:
    
    print(rules_ans)
    if rules_ans == "y":
        print()
        print(rules)
        break
    elif rules_ans == "n":
        print("The game will start soon...")
        break
    else:
        print("Please try again later")


    


print()




while True:
    count = 0
    ready = input("Are you ready? (Yes (Y) / No (N)): ")
    if ready == "y":
        print()
        print(3)
        print(2)
        print(1)
        print("START!")
        break
    elif ready == "n":
        print("Please type Y to start the game.")
    elif count == 3:
        print("Please try again later.")
        count =+ 1
        break
        

draw = 0
win = 0
lose = 0


while True:
        


    
    user_ans = input("Choose your answer (Rock(R)/ Scissors(S)/ Paper(P)): ").upper()

    print(" ")

    if user_ans == "R":
        print(f"Your answer is ROCK.")
    elif user_ans == "S":
        print(f"Your answer is SCISSORS.")
    elif user_ans == "P":
        print(f"Your answer is PAPER.")



    import random

    ans = ["ROCK", "PAPER", "SCISSORS"]

    bot_ans = " ".join(random.sample(ans, k=1))







    if user_ans == "R" and bot_ans == "ROCK" or user_ans == "P" and bot_ans == "PAPER" or user_ans == "S" and bot_ans == "SCISSORS":

        
        print(f"Bot answer is {bot_ans}.")
        print("DRAW")

        print(" ")
        draw += 1
    elif user_ans == "R" and bot_ans == "SCISSORS" and bot_ans != "PAPER":

        print(f"Bot answer is {bot_ans}.")
        print("YOU WIN!!")
        

        print(" ")
        win += 1
    elif user_ans == "P" and bot_ans == "ROCK" and bot_ans != "SCISSORS":

        
        print(f"Bot answer is {bot_ans}.")
        print("YOU WIN!!")

        print(" ")
        win +=1
    elif user_ans == "S" and bot_ans == "PAPER" and bot_ans != "ROCK":

        
        print(f"Bot answer is {bot_ans}.")
        print("YOU WIN!!")
        print(" ")
        win +=1
    elif user_ans == "R" and bot_ans == "PAPER" or user_ans == "S" and bot_ans == "ROCK" or user_ans == "P" and bot_ans == "SCISSORS":

        print(f"Bot answer is {bot_ans}.")
        print("YOU LOSE!!")
        
        print(" ")
        lose+=1
    elif user_ans == "Q":
        print("QUIT GAME")
        print(" ")
        print(f"""Your scores:
            WIN = {win}
            LOSE = {lose}
            DRAW = {draw}""")
        break


## dataframe

pizza <- c("Hawaiian", "Seafood", "Pepperoni")
pizza_price <- c(200, 250,230)

pizza_df <- data.frame(pizza, pizza_price)

size <- c("S", "M", "L")
size_price <- c(10, 20, 30)

size_df <- data.frame(size, size_price)

side <- c("Soup", "Salad", "Pasta", "None")
side_price <- c(80, 120, 180, 0)

side_df <- data.frame(side, side_price)

hwprice <- 200
sfprice <- 250
pepprice <- 230

sprice <- 10
mprice <- 20
lprice <- 30

soup_p <- 80
salad_p <- 120
pasta_p <- 180
none <- 0


## pizza with small size
hw_small <- hwprice+sprice
sf_small <- sfprice+sprice
pep_small <- pepprice+sprice

##pizza with medium size
hw_medium <- hwprice+mprice
sf_medium <- sfprice+mprice
pep_medium <- pepprice+mprice


## pizza with large size
hw_large <- hwprice+lprice
sf_large <- sfprice+lprice
pep_large <- pepprice+lprice





###############################





  ## 1. Greeting customers
  print("Welcome to restaurant")
  cat("\n")


  
  ## 2. asking for customer name
  print("What is your name? ")


while (TRUE) {
  
  user_name <- readLines("stdin", n=1)
  
  
  if (user_name != "") {
    print(paste("Hi", user_name))
    break
  } else  {
    if (user_name == "")
    print("Please enter your name.")
  }
  } ## end while loop

cat("\n")

  
  print(pizza_df)
  cat("\n")

## 3. choose order
  print("What would you like to order? ")

  
  while (TRUE) {
  order_pizza <- tolower(readLines("stdin", n=1))


  if (order_pizza == "hawaiian") {
    cat("\n")
    print(paste("Your order is", order_pizza, "pizza"))
    break
  } else  {
    if (order_pizza == "seafood") {
    cat("\n")
    print(paste("Your order is", order_pizza, "pizza"))
    break
  } else  {
    if (order_pizza == "pepperoni") {
    cat("\n")
    print(paste("Your order is", order_pizza, "pizza"))
    break
  } else if (order_pizza != "hawaiian" | order_pizza != "seafood" | order_pizza != "pepperoni") {
    print("Please enter your order")
  }
  }
    }
    }## end while loop


cat("\n")


## 4. choose size
print(size_df)
cat("\n")
print("Which size do you want? S/M/L ")  





cat("\n")



while (TRUE) {
  
order_size <- tolower(readLines("stdin", n=1))
cat("\n")


  if (order_size == tolower("s") & order_pizza == "hawaiian") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("s") & order_pizza == "seafood") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("s") & order_pizza == "pepperoni") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("m") & order_pizza == "hawaiian") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("m") & order_pizza == "seafood") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("m") & order_pizza == "pepperoni") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("l") & order_pizza == "hawaiian") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("l") & order_pizza == "seafood") {
    print(paste(order_size, "size"))
    break
  } else if (order_size == tolower("l") & order_pizza == "pepperoni") {
    print(paste(order_size, "size"))
    break
  } else {
    print("Please enter size again.")
  }

} ## end while loop


cat("\n")

print(side_df)
## 5. choose side dish
cat("\n")

print("Would you like to add any side dishs? ")


## 6. order is added
while (TRUE) {
order_sd <- tolower(readLines("stdin", n=1))
  cat("\n")

if (order_sd == "soup") {
  print(paste(order_sd, "is added to your order"))
  break
} else if (order_sd == "salad") {
  print(paste(order_sd, "is added to your order"))
  break
} else if (order_sd == "pasta") {
  print(paste(order_sd, "is added to your order"))
  break
} else if (order_sd == "none") {
  print("No side dish added")
  break
} else {
  print("Please enter your answer again.")
}
} ## end while loop

  
cat("\n")
cat("\n")


## 7. repeat order 
print("Let me repeat your order")
cat("\n")
print("Your order is")
print(paste("Pizza: ",toupper(order_pizza)))
print(paste("Size: ",toupper(order_size)))
print(paste("Side Dish: ",toupper(order_sd)))



## 8. total price

if (order_pizza == "hawaiian" & order_size == "s" & order_sd == "soup") {
    print(paste("Total price is", hw_small+soup_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "m" & order_sd == "soup") {
    print(paste("Total price is", hw_medium+soup_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "l" & order_sd == "soup") {
    print(paste("Total price is", hw_large+soup_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "s" & order_sd == "soup") {
    print(paste("Total price is", sf_small+soup_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "m" & order_sd == "soup") {
    print(paste("Total price is", sf_medium+soup_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "l" & order_sd == "soup") {
    print(paste("Total price is", sf_large+soup_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "s" & order_sd == "soup") {
    print(paste("Total price is", pep_small+soup_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "m" & order_sd == "soup") {
    print(paste("Total price is", pep_medium+soup_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "l" & order_sd == "soup") {
    print(paste("Total price is", pep_large+soup_p, "THB")) ##
  } else if (order_pizza == "hawaiian" & order_size == "s" & order_sd == "salad") {
    print(paste("Total price is", hw_small+salad_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "m" & order_sd == "salad") {
    print(paste("Total price is", hw_medium+salad_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "l" & order_sd == "salad") {
    print(paste("Total price is", hw_large+salad_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "s" & order_sd == "salad") {
    print(paste("Total price is", sf_small+salad_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "m" & order_sd == "salad") {
    print(paste("Total price is", sf_medium+salad_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "l" & order_sd == "salad") {
    print(paste("Total price is", sf_large+salad_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "s" & order_sd == "salad") {
    print(paste("Total price is", pep_small+salad_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "m" & order_sd == "salad") {
    print(paste("Total price is", pep_medium+salad_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "l" & order_sd == "salad") {
    print(paste("Total price is", pep_large+salad_p, "THB")) ###
  } else if (order_pizza == "hawaiian" & order_size == "s" & order_sd == "pasta") {
    print(paste("Total price is", hw_small+pasta_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "m" & order_sd == "pasta") {
    print(paste("Total price is", hw_medium+pasta_p, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "l" & order_sd == "pasta") {
    print(paste("Total price is", hw_large+pasta_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "s" & order_sd == "pasta") {
    print(paste("Total price is", sf_small+pasta_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "m" & order_sd == "pasta") {
    print(paste("Total price is", sf_medium+pasta_p, "THB"))
  } else if (order_pizza == "seafood" & order_size == "l" & order_sd == "pasta") {
    print(paste("Total price is", sf_large+pasta_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "s" & order_sd == "pasta") {
    print(paste("Total price is", pep_small+pasta_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "m" & order_sd == "pasta") {
    print(paste("Total price is", pep_medium+pasta_p, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "l" & order_sd == "pasta") {
    print(paste("Total price is", pep_large+pasta_p, "THB")) ####
  } else if (order_pizza == "hawaiian" & order_size == "s" & order_sd == "none") {
    print(paste("Total price is", hw_small, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "m" & order_sd == "none") {
    print(paste("Total price is", hw_medium, "THB"))
  } else if (order_pizza == "hawaiian" & order_size == "l" & order_sd == "none") {
    print(paste("Total price is", hw_large, "THB"))
  } else if (order_pizza == "seafood" & order_size == "s" & order_sd == "none") {
    print(paste("Total price is", sf_small, "THB"))
  } else if (order_pizza == "seafood" & order_size == "m" & order_sd == "none") {
    print(paste("Total price is", sf_medium, "THB"))
  } else if (order_pizza == "seafood" & order_size == "l" & order_sd == "none") {
    print(paste("Total price is", sf_large, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "s" & order_sd == "none") {
    print(paste("Total price is", pep_small, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "m" & order_sd == "none") {
    print(paste("Total price is", pep_medium, "THB"))
  } else if (order_pizza == "pepperoni" & order_size == "l" & order_sd == "none") {
    print(paste("Total price is", pep_large, "THB"))
  } else {
    print("Please try again later.")
    print("We apologize for any inconvenience.")
  }
      
  


cat("\n")

  
## 9. address
print("Please enter your address.")


while (TRUE) {
address <- readLines("stdin", n=1)
cat("\n")

if (address != "") {
  print(paste("Your address is", address))
  break
} else {
  print("Please enter your address.")
}
} ## end while loop




x <- 0
## 10. to confirm order

  cat("\n")

print("Please confirm your order. (type confirm)")
while (x < 3) {
  
  confirm <- tolower(readLines("stdin", n=1))
  
    cat("\n")

## 11. rider is on the way
  if (confirm == "confirm") {
    print("Your order is placed!")
    print("Your food will be served within 20 minutes")
    print("Please wait...")
    print("Your rider is on the way..")
    break
  } else {
    if (x == 3) {
      print("Please correct our answer.")
    } else {
      print("Please try again.")
      x <- x + 1
    } 
  }
  
}








  
  

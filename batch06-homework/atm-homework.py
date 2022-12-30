
# Enter pin 1234 




class ATM:
    
   

#check balance
    def check_balance(self):
        message = f"""
        Account: {self.user_name} 
        Balance: {self.user_balance} Baht"""
        print(message)

#deposit money
    def deposit(self):
        dep_money = int(input("Deposit Amount: "))
        self.user_balance += dep_money
        print(f"New balance: {self.user_balance} Baht")
        print()
        print("Deposit successfully.")

#change account name
    def change_no(self):
        print(f"Your previous number is {self.user_no}.")
        print()
        new_no = str(input("Please enter your new phone number: "))
        self.user_no = new_no
        print(f"New Phone Number: {self.user_no}")
        print()
        print("Your phone number has been changed.")
        

# request OTP
    def otp(self):
        while True:
            
            print("")

            phone_num = str(input("Please enter your phone number: "))

            if len(phone_num) != 10:
                print(phone_num)
            elif len(phone_num) == 10:
                print("OTP has been sent successfully.")
                break

        while True:
            print("")
            otp_code = str(input("Please enter your OTP to verify your phone number: "))

            if len(otp_code) != 4:
                print(otp_code)
            elif len(otp_code) == 4:
                print("Verification Successfully.")
                break
                

# withdraw money
    def withdraw(self):
        wd_amount = int(input("Amount: "))
        self.user_balance -= wd_amount
        print()
        print(f"Withdraw {wd_amount} Baht from your account.")
        print(f"Balance: {self.user_balance} Baht")


# transfer money
    def transfer(self):
        des_acc_no = input("Account Number: ")
        transfer_amount = int(input("Amount: "))
        self.user_balance -= transfer_amount
        print()
        print(f"Transfer {transfer_amount} Baht to {des_acc_no}.")
        print(f"Balance: {self.user_balance} Baht")
        print()
        print("Transfer Successful.")
        

        
    


    

    def atmmenu(self):



        while True:



            if ans == 1:
                print("-- Check Balance --")
                my_atm.check_balance()
            elif ans == 2:
                print("-- Cash Withdraw --")
                print()
                my_atm.withdraw()
            elif ans == 3:
                print("-- Deposit --")
                print()
                my_atm.deposit()
            elif ans == 4:
                print("-- Transfer --")
                print()
                my_atm.transfer()
            elif ans == 5:
                print("-- Request OTP --")
                print()
                my_atm.otp()
            elif ans == 6:
                print("-- Change Phone Number --")
                print()
                my_atm.change_no()
            elif ans == 0:
                print("Transaction Cancelled.")
                print("Thank you for using our ATM service.")
                break

            print()
            print(new_transac)
                    
            if new_transac == "y".lower():
                print(ans)
            elif new_transac == "n".lower():
                print()
                print("Thank you for using our ATM service.")
                break

    
    


my_atm = ATM()



#######################################################


print("Welcome to The Tim's Bank")

print()
PIN = str(input("Enter your PIN: "))
print()

user_pin = "1234"
user_name = "Tim"
user_balance = 5000
user_no = "0936655965"  


while True:
    if len(PIN) != 4:
        print(input("Enter your PIN again: "))
        break
    elif PIN == user_pin:
        print(f"Hello {user_name}.")
        print()
        print("Please select your transaction.")
        print("""
        1. Check Balance
        2. Cash Withdraw
        3. Deposit
        4. Transfer
        5. Request OTP
        6. Change Phone Number
        0. Cancel""")
        break


while True:

    print()
    ans = int(input("Please type number to select your transaction: "))
    print()

    if ans == 1:
        print("-- Check Balance --")
        my_atm.check_balance()
    elif ans == 2:
        print("-- Cash Withdraw --")
        print()
        my_atm.withdraw()
    elif ans == 3:
        print("-- Deposit --")
        print()
        my_atm.deposit()
    elif ans == 4:
        print("-- Transfer --")
        print()
        my_atm.transfer()
    elif ans == 5:
        print("-- Request OTP --")
        print()
        my_atm.otp()
    elif ans == 6:
        print("-- Change Phone Number --")
        print()
        my_atm.change_no()
    elif ans == 0:
        print("Transaction Cancelled.")
        print("Thank you for using our ATM service.")
        break

    print()
    new_transac= input("Do you want to perform another transaction? (Y/N): ")
    
    if new_transac == "y".lower():
        print(ans)
    elif new_transac == "n".lower():
        print()
        print("Thank you for using our ATM service.")
        break


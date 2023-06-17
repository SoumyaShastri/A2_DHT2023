#Prompt the user to enter a three digit positive number
user_prompt <- readline(prompt = "Please enter a three digit positive number: ")

#*The code that now follows is defensive programming and ensures that the user 
#*enters a numeric value, a positive value, and a three digit number. 

if((is.numeric(as.numeric(user_prompt))) 
   & (as.numeric(user_prompt) %% 1 == 0)
   & (nchar(user_prompt) == 3)) {
  
  #*To test if the user prompt is a Narcissistic number, the digits within the 
  #*prompt will have to be split. 
  split_prompt <- as.numeric(strsplit(user_prompt, "")[[1]])
  
  #*To determine the sum of cubes of all the individual digits 
  sum_digits <- sum(split_prompt^3)
  
  #*If sum_digits is equal to user_prompt, it is a narcissistic number, if not 
  #*a message will indicate so 
  if(sum_digits == user_prompt){
    print(paste(user_prompt, "is a Narcississtic number"))
    
  } else {
     
    print(paste(user_prompt, "is not a Narcississtic number"))
  } 
} else {
  print("Entry is not valid, Terminating task. Please ensure to enter a three digit positive number")
}

# Comments for code review by Sanari : 
# 1. Overall, the code ran smoothly and functioned the way I excpected it to. 
# 2. The coding style was mostly consistent throughout with proper variable names created, correct operators used, and the code being clear and easy to understand. 
# 3. For line 23: a small suggestion would be to get rid of unnecessary spacing before and after "else" since there was no spacing after the second "else". 
      # This is to ensure everything is concise and consistent throughout. 
# 4. The explanatory comments listed before each operation was well done and helped to understand what was being conducted. 
# 5. For lines 11-16: I like how the strsplit function was used to split up digits instead of mathematically isolating each digit (which made the code a lot more concise).
# 6. The defensive programming makes sense and works well. When I tested with various numbers and characters that were not 3 digits and positive, it provided an error message which is great! 
# 7. However, when I input a negative two-digit number (i.e. -20), I get an error message instead of the intended print message that would usually say that my entry is invalid. 
      # For this, more defensive programming would be needed to ensure that only positive numbers are being inputted. 
# 8. Overall, your code for this assignment ran well and was clear, except for the minor suggestion to ensure that the print message appears when negative, two-digit numbers are inputted.
      # Other than this, all of the correct print messages appear as expected and the rest of the defensive programming looks great! The code is simple, concise, and very easy to understand! Awesome work!!

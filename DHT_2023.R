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

#Comments: 

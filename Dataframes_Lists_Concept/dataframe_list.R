# BTW data.frame() function is used to create dataframe 
# ... used to create data frames in R language
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
print(Data_Frame$Training)

# or 
print(Data_Frame[1]) # obviously list starts with index of 1 only

# OUTPUT

# [1] Strength Stamina  Other   
# Levels: Other Stamina Strength
#   Training
# 1 Strength
# 2  Stamina
# 3    Other
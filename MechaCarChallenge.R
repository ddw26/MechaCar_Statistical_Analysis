# Packages/Libraries
library(dplyr)
library(tidyr)
library(ggplot2)

# Deliverable 1
# 1. Download MechaCar_mpg.csv file & place it in active directory for R session.
# 2. Create new RScript in R source pane, name it MechaCarChallenge.RScript, & save it active directory.
# 3. Use library() function to load dplyr package.
      # see above
# 4. Import and read in MechaCar_mpg.csv file DataFrame.
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform linear regression & add Step 4 DataFrame as data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)

# 6.Determine p-value and r-squared value for lin. regression model using summary() function. 
summary(lm(mpg ~ vehicle_length + vehicle_weight +spoiler_angle + ground_clearance + AWD,data=mechacar_df))




# Deliverable 2
# 1. Download Suspension_Coil.csv file & place it in active directory for R session.
# 2. Import and read in Suspension_Coil,csv file as a Table
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# 3. Write a RScript that creates a total_summary DataFrame using summarize() function.
suspension_total <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
# 4. Write a RScript that creates a lot_summary DataFrame using group_by() and summarize() functions.
suspension_lot_summary <-suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3

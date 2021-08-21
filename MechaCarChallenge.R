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

# 7. Save RScript file to Github repository


# Deliverable 2
# 1. Download Suspension_Coil.csv file & place it in active directory for R session.
# 2. Import and read in Suspension_Coil,csv file as a Table.
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# 3. Write a RScript that creates a total_summary DataFrame using summarize() function.
suspension_total <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
# 4. Write a RScript that creates a lot_summary DataFrame using group_by() and summarize() functions.
suspension_lot_summary <-suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# 5. Save RScript file to Github repository



#Deliverable 3
# 1. Write a RScript using t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean.
t.test(suspension_table$PSI,mu=1500)
# 2. Write three more RScripts using t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean.
  # Lot No. 1
t.test(subset(suspension_table,Manufacturing_Lot=='Lot1')$PSI,mu = 1500)
  # Lot No. 2
t.test(subset(suspension_table,Manufacturing_Lot=='Lot2')$PSI,mu = 1500)
  # Lot No. 3
t.test(subset(suspension_table,Manufacturing_Lot=='Lot3')$PSI,mu = 1500)
# 3. Save RScript file to Github respository


# Deliverable 4 
#SEE README
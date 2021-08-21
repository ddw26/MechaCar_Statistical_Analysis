# Packages/Libraries
library(dplyr)
library(tidyr)
library(ggplot2)

# Deliverable 1
# 1. Download MechaCar_mpg.csv file; place it in active directory  R session.
# 2. Create new RScript in R source pane, name it MechaCarChallenge.RScript; save it active directory.
# 3. library() function to load the dplyr package.
      # see above
# 4. Import and read in MechaCar_mpg.csv file DataFrame.
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform linear regression; add Step 4 DataFrame as data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)

# 6.Determine p-value and r-squared value for lin. regression model using summary(), 
summary(lm(mpg ~ vehicle_length + vehicle_weight +spoiler_angle + ground_clearance + AWD,data=mechacar_df))

# Deliverable 2
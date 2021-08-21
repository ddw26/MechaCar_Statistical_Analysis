# MechaCar_Statistical_Analysis

# Overview 

Upper management has notified both Jeremy and the data analytics team about AutoRU's newest prototype, MechaChar. The prototype, however, is suffering from production troubles, all of which inhibits the manufacturing team’s progress. As a result, we have been tasked to review the production data for insights that may help the manufacturing team. We performed multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. We also collected summary statistics on the pounds per square inch (PSI) of the suspension coils, and ran t-tests to determine if the manufacturing lots were statistically different from the mean population. Lastly, we designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


### Linear Regression to Predict MPG
________________________________________________________

**Linear Regression Output**

![Linear Regression Output 1](https://user-images.githubusercontent.com/77905862/130328977-2d8d91fe-c072-49b3-a4b0-485e09104fe4.png)

![Linear Regression Output 2](https://user-images.githubusercontent.com/77905862/130328988-584b14d6-208d-4353-b16f-dfdb16aa5806.png)


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 

  _The tested variables/coefficients that provided a non-random amount of variance to MPG values were vehicle length, ground clearance and vehicle weight. Vehicle length and ground clearance had strong impact on mpg values, whilst vehicle weight was less significant in amount of variance._

- Is the slope of the linear model considered to be zero? Why or why not? 
   
   _The slope of the linear model should not be considered zero. With a P-Value of 5.35e-11, it is above the assumed 0.05 significance level._
    
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

  _Yes, this linear model is effective at predicting mpg of MechaCar prototypes. This is because the R-squared value of 0.7149, which is to say a little over 70% of all mpg predictions will be accurate when using this linear model in tandem with multiple variables._


### Summary Statistics on Suspension
________________________________________________________

**Total Summary**

![Total_Summary](https://user-images.githubusercontent.com/77905862/130329415-a154eead-2589-4fb5-abbb-8d8e21f9cf75.png)

**Lot Summary**

![Lot_Summary](https://user-images.githubusercontent.com/77905862/130329435-06707d01-2381-44b0-b12e-3faa74063b2c.png)


- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?



### T-Tests on Suspension Coils
________________________________________________________

**Suspension Coils T-Test's Output**

![T-Testing](https://user-images.githubusercontent.com/77905862/130329531-b27c211e-ac56-4845-982e-c07180b52011.png)


# Deliverable 4
### Study Design: MechaCar vs Competition 
________________________________________________________

- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?

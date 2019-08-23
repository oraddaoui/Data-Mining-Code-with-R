Data Background:
Data used in the code was collected from multiple drivers in a driving simulator lab environment (part of graduate research project). Each driver drove the same scenario twice: once with the advance in-vehicle Connected Vehicle Warnings being displayed (On) while driving and another time with no warnings being displayed (Off). Hence, there are two groups of drivers: drivers under connectivity conditions = “On” and drivers with connectivity conditions = “off”. 
Data used in this code example contains four variables:
•	y1 = number of lane departures in the work zone (performance measure for distraction) 
•	y2 = percent time spent with wheels outside lane markings (performance measure for distraction)
•	y3 = steering wheel angle standard deviation in the work zone (performance measure for workload)
•	y4 = maximum deceleration in the work zone (kinematic behavior measure) 

Objective:
The goal of the code is to predict based on drivers’ distraction and workload measurements whether a driver is using the Connected Vehicle technology or not (system On or Off). Predictions accuracy could be viewed as reflection of effects of the presence of in-vehicle systems on drivers’ workload and distraction.  

Code:
This code is developed based on my graduate coursework in Multivariate Analysis. This code uses two machine learning algorithms scripted in R, namely 1) Support Vector Machine (SVM) and 2) Classification and Regression Trees. 

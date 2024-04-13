#/************************************************************************
#*** You may need to edit this code.                                  ***
#***                                                                  ***
#*** Please check all SETWD statements before running this code.      ***
#***                                                                  ***
#*** You may have selected variables that contain missing data or     ***
#*** valid skips. You may wish to recode one or both of these special ***
#*** values. You need to consult the Variable Description to see if   ***
#*** these special codes apply to your extracted variables. You can   ***
#*** recode these special values to missing using the "car" package   ***
#*** and the following sample code:                                   ***
#***                                                                  ***
#*** {variable name} <- recode({variable name},"c({value}) = NA")     ***
#***                                                                  ***
#*** Replace {variable name} above with the name of the variable you  ***
#*** wish to recode. Replace {value} with the special value you wish  ***
#*** to recode to missing.                                            ***
#***                                                                  ***
#*** It is important to retain full sample weights, replicate         ***
#*** weights, and identification numbers as appropriate.              ***
#************************************************************************/

# Change working directory
# setwd("C:/OnlineCodebook/HSLS")

# Load R Data File (change the )
load("HSLS_17_STUDENT_PETS_SR_v1_0.rdata")

# Create vector of selected variables
keepvars <- c(
   "STU_ID",
   "X1RACE",
   "X1PAR1EDU",
   "X1PAR1EMP",
   "X1PAR1RACE",
   "X1PAR2EDU",
   "X1PAR2EMP",
   "X1PAR2RACE",
   "X1FAMINCOME",
   "X1SCHOOLBEL",
   "X1SCHOOLENG",
   "X1STU30OCC2",
   "X1STU30OCC6",
   "X1STUEDEXPCT",
   "X1CONTROL",
   "X1LOCALE",
   "X2BEHAVEIN",
   "X2PROBLEM",
   "X2STUEDEXPCT",
   "X3HSCOMPSTAT",
   "X3HSCOMPDATE",
   "X3TCREDAPIB",
   "X3TGPAACAD",
   "X3TXSATCOMP",
   "X4ENTRYMAJ23",
   "X4ENTRYMAJ2Y",
   "X4ENTRYMAJ4Y",
   "X5HIGH11MAJ",
   "X5GPAALL",
   "X5YR1GPA",
   "S3FIELD2",
   "S4HSGPA"
)

# Create new object containing only selected variables
HSLS_17_STUDENT_PETS_SR_v1_0_240412214236 <- HSLS_17_STUDENT_PETS_SR_v1_0[keepvars]

# Save dataset
save(HSLS_17_STUDENT_PETS_SR_v1_0_240412214236, file="HSLS_17_STUDENT_PETS_SR_v1_0_240412214236.rdata")

# Set the working dataset
attach(HSLS_17_STUDENT_PETS_SR_v1_0_240412214236)

# Display frequencies for the categorical variables
table(X1RACE)
table(X1PAR1EDU)
table(X1PAR1EMP)
table(X1PAR1RACE)
table(X1PAR2EDU)
table(X1PAR2EMP)
table(X1PAR2RACE)
table(X1FAMINCOME)
table(X1STU30OCC2)
table(X1STU30OCC6)
table(X1STUEDEXPCT)
table(X1CONTROL)
table(X1LOCALE)
table(X2STUEDEXPCT)
table(X3HSCOMPSTAT)
table(X4ENTRYMAJ23)
table(X4ENTRYMAJ2Y)
table(X4ENTRYMAJ4Y)
table(X5HIGH11MAJ)
table(S3FIELD2)
table(S4HSGPA)

# Display summary statistics for continuous variables, missing values excluded
mean(STU_ID,na.rm=TRUE)
median(STU_ID,na.rm=TRUE)
range(STU_ID,na.rm=TRUE)

mean(X1SCHOOLBEL,na.rm=TRUE)
median(X1SCHOOLBEL,na.rm=TRUE)
range(X1SCHOOLBEL,na.rm=TRUE)

mean(X1SCHOOLENG,na.rm=TRUE)
median(X1SCHOOLENG,na.rm=TRUE)
range(X1SCHOOLENG,na.rm=TRUE)

mean(X2BEHAVEIN,na.rm=TRUE)
median(X2BEHAVEIN,na.rm=TRUE)
range(X2BEHAVEIN,na.rm=TRUE)

mean(X2PROBLEM,na.rm=TRUE)
median(X2PROBLEM,na.rm=TRUE)
range(X2PROBLEM,na.rm=TRUE)

mean(X3HSCOMPDATE,na.rm=TRUE)
median(X3HSCOMPDATE,na.rm=TRUE)
range(X3HSCOMPDATE,na.rm=TRUE)

mean(X3TCREDAPIB,na.rm=TRUE)
median(X3TCREDAPIB,na.rm=TRUE)
range(X3TCREDAPIB,na.rm=TRUE)

mean(X3TGPAACAD,na.rm=TRUE)
median(X3TGPAACAD,na.rm=TRUE)
range(X3TGPAACAD,na.rm=TRUE)

mean(X3TXSATCOMP,na.rm=TRUE)
median(X3TXSATCOMP,na.rm=TRUE)
range(X3TXSATCOMP,na.rm=TRUE)

mean(X5GPAALL,na.rm=TRUE)
median(X5GPAALL,na.rm=TRUE)
range(X5GPAALL,na.rm=TRUE)

mean(X5YR1GPA,na.rm=TRUE)
median(X5YR1GPA,na.rm=TRUE)
range(X5YR1GPA,na.rm=TRUE)


################################################################################
####   CryptoNote Emissions Calculator   
####    Author:  Joshua Paul Burnard     
####    References:  CryptoNote Emission Calculator    
####      https://cryptonotestarter.org/inner.html    
####
####    Purpose:  To estimate the number of coins which will be mined from the 
####      beginning of a CryptoNote-based Coin.
####    Inputs:   days - Is the number of days to estimate (starting from day 0).
####    Results:  amount_mined  - The total number of coins estimated to be mined.
####              percent_mined - The estimated percent of all coins mined.
################################################################################



#############################################
####   The amount of days to estimate    ####
#############################################
days <- 365.25



#############################################
####   Parameters                        ####
####    Default parameters can be changed ###
####    moneySupply must be an integer   ####
####    difficultyTarget  is an integer  ####
####    emissionSPeedFactor is integer   ####
#############################################
moneySupply <- 18446744
difficultyTarget <- 120
emissionSpeedFactor <- 21



#############################################
####   The equations                     ####
####    (Do Not Change)                  ####
#############################################
SpeedFactor <- 1 / (2 ^ emissionSpeedFactor)
amount_mined <- moneySupply * ( (SpeedFactor - 1) * (1 - SpeedFactor) ^ (days * 86400 / difficultyTarget) + 1);
percent_mined <- ( amount_mined * 100 ) / moneySupply



#############################################
####    Display Projected Results        ####
#############################################
amount_mined
percent_mined


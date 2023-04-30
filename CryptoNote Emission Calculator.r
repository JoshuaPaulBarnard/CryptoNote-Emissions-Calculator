################################################################################
####   CryptoNote Emissions Calculator   
####    Author:  Joshua Paul Burnard   
####  
####    References:  CryptoNote Emission Calculator    
####      https://cryptonotestarter.org/inner.html    
####
####    Purpose:  To estimate the number of coins which will be mined from the 
####      beginning of a CryptoNote-based Coin.
####  
####    Inputs:   moneySupply - The total amount of coins to be mined.
####              difficultyTarget - The ideal time period between blocks. In case an average time between blocks becomes less than difficulty target, difficulty increases. Difficulty target is measured in seconds.
####              emissionSpeedFactor - There is a slight decrease of block reward each block, which defines emission curve slope. This parameter is required to calulate block reward.
####              days - Is the number of days to estimate (starting from day 0).
####  
####    Results:  amount_mined  - The total number of coins estimated to be mined.
####              percent_mined - The estimated percent of all coins mined.
################################################################################


#############################################
####   Input Parameters                  ####
####                                     ####
####    moneySupply must be an integer   ####
####    difficultyTarget  is an integer  ####
####    emissionSPeedFactor is integer   ####
####    days is floating-point (numeric) ####
#############################################
moneySupply <- 18446744
difficultyTarget <- 120
emissionSpeedFactor <- 21
days <- 365.25



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


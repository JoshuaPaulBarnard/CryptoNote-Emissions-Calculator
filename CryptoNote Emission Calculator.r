################################################################################
####   CryptoNote Emissions Calculator   
####    Author:  Joshua Paul Burnard   
####  
####    References:  CryptoNote Emission Calculator    
####      https://cryptonotestarter.org/inner.html#emission   
####      https://cryptonotestarter.org/js/tools.js
####
####    Purpose:  To estimate the number of coins which will be mined from the 
####      beginning of a CryptoNote-based Coin.
####  
####    Inputs:   Money_Supply - The total amount of coins to be mined.
####              Difficulty_Target - The ideal time period between blocks. In case an average time between blocks becomes less than difficulty target, difficulty increases. Difficulty target is measured in seconds.
####              Emission_Speed_Factor - There is a slight decrease of block reward each block, which defines emission curve slope. This parameter is required to calulate block reward.
####              Days - Is the number of Days to estimate (starting from day 0).
####  
####    Results:  amount_mined  -> The total number of coins estimated to be mined.
####              percent_mined -> The estimated percent of all coins mined.
####              Estimated_Blocks_Created -> The estimated number of blocks created.  
####              Average_Block_Time -> The estimated time between the creation of each block (in minutes).
################################################################################


###############################################
####   Input Parameters                    ####
####                                       ####
####    Money_Supply must be an integer    ####
####    Difficulty_Target  is an integer   ####
####    Emission_Speed_Factor is integer   ####
####    Months is floating-point (numeric) ####
###############################################
Money_Supply <- 18446744
Difficulty_Target <- 60
Emission_Speed_Factor <- 22
Months <- 12



#############################################
####   The Equations                     ####
####    (Do Not Change)                  ####
#############################################
Days <- 365.25 * ( Months / 12 )
Speed_Factor <- 1 / (2 ^ Emission_Speed_Factor)
amount_mined <- Money_Supply * ( (Speed_Factor - 1) * (1 - Speed_Factor) ^ (Days * 86400 / Difficulty_Target) + 1);
percent_mined <- ( amount_mined * 100 ) / Money_Supply
Blocks_Per_Day <- ( 24 * 60 * 60 ) / Difficulty_Target
Estimated_Blocks_Created <- Blocks_Per_Day * Days
Average_Block_Time <- Difficulty_Target / 60


#############################################
####    Display Projected Results        ####
#############################################
amount_mined
percent_mined
Estimated_Blocks_Created
Average_Block_Time
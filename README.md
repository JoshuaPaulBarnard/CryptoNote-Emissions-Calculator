# CryptoNote Emissions Calculator 

**Purpose:**  
To estimate the number of coins which will be mined from the beginning of a CryptoNote-based Coin.

**Inputs:**
- moneySupply - The total amount of coins to be mined.
- difficultyTarget - The ideal time period between blocks. In case an average time between blocks becomes less than difficulty target, difficulty increases. Difficulty target is measured in seconds.
- emissionSpeedFactor - There is a slight decrease of block reward each block, which defines emission curve slope. This parameter is required to calulate block reward.
- days - Is the number of days to estimate (starting from day 0).

**Results:**
- amount_mined  - The total number of coins estimated to be mined.
- percent_mined - The estimated percent of all coins mined.

________________________________________________________________________________________________________________________________________
________________________________________________________________________________________________________________________________________


**Credits :**

- [CryptoNoteStarter](https://cryptonotestarter.org/inner.html) : Forking guide to create your own anonymous cryptocurrency based on CryptoNote technology and ring signatures.



**MIT License**
Copyright (c) 2023 [Joshua Paul Barnard](https://mit-license.org/).

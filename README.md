# CryptoNote Emissions Calculator

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

**Purpose:**  
To estimate the number of coins which will be mined from the beginning of a CryptoNote-based Coin.

**Inputs:**
- Money_Supply <- The total amount of coins to be mined.
- Premine_Percent <- The percent of coins to be mined in the genesis block.
- Difficulty_Target <- The ideal time period between blocks. In case an average time between blocks becomes less than difficulty target, difficulty increases. Difficulty target is measured in seconds.  This is equivalent to average Block Time.
- Emission_Speed_Factor <- There is a slight decrease of block reward each block, which defines emission curve slope. This parameter is required to calculate block reward.
- Months <- Is the number of days to estimate (starting from day 0), with 30.4375 days per month.

**Results:**
- amount_mined  -> The total number of coins estimated to be mined.
- percent_mined -> The estimated percent of all coins mined.
- Estimated_Blocks_Created -> The estimated number of blocks created.  

________________________________________________________________________________________________________________________________________
________________________________________________________________________________________________________________________________________


**Credits :**

- [CryptoNoteStarter](https://cryptonotestarter.org/inner.html) : Forking guide to create your own anonymous cryptocurrency based on CryptoNote technology and ring signatures.  It was used to derive the original equations.
- [Forknote](https://forknote.net/create/) : Forknote is innovative way to create Cryptonote (https://cryptonote.org) based cryptotokens. It gives the users the ability to create cryptotokens just by creating a simple configuration file.  It was used to derive the equations for premining.



**MIT License**
Copyright (c) 2023-2024 [Joshua Paul Barnard](https://mit-license.org/).

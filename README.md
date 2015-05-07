# Currency_Exchange 

Project Goal

The program will present a currency exchange rate between two countries.

Operation
This program will ask the user for their source country and their target country. 
The response will be (1) the source country currency, (2) the target country currency, and (3) the exchange rate.

Calculate Currency Exchange from two entered countries
Small Ruby Command line program
User enters in from country and to country
The program returns the source currency, and target currency, and the exchange rate.

Features:
1) File maintenance interface of master currency file:
  a) Data entry of initial data load of currency and country records.  New countries can be added by this utility. Country records will include (1) the country name, (2) the country currency, and (3) the current country exchange rate into Euros.
  b) Data update of current values or if a country adopts a new currency. Display of current currency file will be available for inspection and correction.
  c) Data deletions of records of countries that cease to exist, such as South Vietnam on April 30, 1975.
  
2) User interface:
  a) User enters source country and target country.
  b) User receives the names of the two currencies and the exchange rate.
  c) If a country name is not recognized, an error message is displayed.
  
3) Algorithm: when the user enters the two countries, 
  a) the two records are referenced with the names of the currencies fetched
  b) the exchange rate will be calculated between Euros
  c) the user will receive a message similar to the following:
    Source country: USA
    Source currency: US Dollars (USD)
    Target country: Latvia
    Target currency: Lats (LVL)
    1 USD = 0.62 LVL
    
4) Currency and country file maintenance
  a) Add record - fields entered will be: country name (alpha), currency name (alpha), currency abbreviation (alpha), exchange rate in Euros (real number with 2 decimal positions); blank and zero entries will not be permitted.
  b) Change record - all entered fields will be editable; editing software will not permit zero or blank values
  c) Delete record - entire record will be deletable with a deletion message

5) Program exit command has yet to be determined

Acceptance Criteria:
1) Acceptance of all entered countries will be allowed
2) Accurate calculation of currency exchange rate will be performed and displayed
3) Test driven development will dictate data validation as well as proper software.
4) All possible combinations of countries will be tested, especially those that share a common currency, such as the Euro.

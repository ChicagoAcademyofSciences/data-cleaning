# Taxon Authority (malacology)

* * *

## Step 1, Preparing original taxonomic data

CHAS malacology specimens were inventoried in separate Excel spreadsheets by taxonomic group. In order to clean up and synonymize taxonomic names, we began by pulling former and current taxonomic identifications from all malacology spreadsheets into a single spreadsheet. Verbatim taxonomic data was retained as a primary key back to the master inventory data, then duplicated into a new field, *TAXON (original)*. Names in this field were cleaned by trimming extra spaces, return carriages, and special characters. They were then clustered to minimize the amount of unique names we had to synonymize, and to easily identify simple errors such as misspellings.

5125 unique names.

* * *

## Step 2, Synonymizing with valid taxonomy

### group (n=)

Janeen Jones (FMNH) downloaded unique names by taxonomic order from FMNH's malacology collections in EMu. For mollusks (unlike insects) FMNH does store old taxonomic synonyms, which made this species list much more useful than what we were able to obtain for entomology. [@ekrimmel](https://github.com/ekrimmel) validated CHAS names against this data from FMNH, with the results shown in the table below.

FMNH has a very large number of taxonomic names for North American terrestrial and freshwater mollusks already in its EMu database, and a lot of these names have been evaluated with recent expertise (Jochen). FMNH North American land snails and fresh water bivalve taxa. Molluscan names do include synonyms.

EK researched abbreviated genus names within the context of this dataset. EK matched against MolluscaBase. For any ambiguous names, EK selected one option but it may not be the correct option! These names need to be revisited by someone who can better determine, but at the very least it links our specimen to a valid taxon.

Matched these names against WoRMS, ITIS, Global Names, and Catalog of Life via Lifewatch Regional Portal’s taxonomic name resolution services. We were able to validate or synonymize slightly more than 50% of the names in our data, but that still leaves us with approx. 2400 unvalidated taxa, probably mostly outdated synonyms.

| Priority	| Group | Source	| # names matched | % total matched |
| :---: | --- | --- | ---: | ---: |
| 3 | --- | [FMNH North American mollusks](NAMolluscTaxa.csv) | --- | --- |
| 2 | --- | [WoRMS]() | --- | --- |
| 1 | --- | [MolluscaBase]() | LifeWatch | --- |
| 4 | --- | [ITIS]() | LifeWatch | --- |
| 5 | --- | [GlobalNames]() | LifeWatch | --- |
| 4 | --- | [Catalog of Life]() | LifeWatch | --- |

Exclude non-NA specimens, focus on freshwater and land species.

Petra's columns: geography to exclude certain specimens? Color code by habitat type? Match by genus to MolluscaBase

* * *

## Step 3, Using the taxon authority to clean specimen data

The malacology inventory dataset can be compared against the taxon authority using Open Refine to match original names to their current, valid counterpart. All names from the taxon authorities have also been validated against Arctos and added as necessary.

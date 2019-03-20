# Taxon Authority (malacology)

* * *

## Step 1, Preparing original taxonomic data

CHAS malacology specimens were inventoried in separate Excel spreadsheets by taxonomic group. In order to clean up and synonymize taxonomic names, we began by pulling former and current taxonomic identifications from all malacology spreadsheets into a single field, *SYNONYM (data directly from spreadsheet)*. We retained the data verbatim in this field as a primary key back to the master inventory data, then duplicated them into a new field, *TAXON (original)*. Names in this field were cleaned by trimming extra spaces, return carriages, and special characters. They were then clustered to minimize the amount of unique names we had to synonymize, and to easily identify simple errors such as misspellings.

* * *

## Step 2, Synonymizing with valid taxonomy

### Mollusca, Porifera, Cnidaria, etc. (n=5125)

Janeen Jones (Assistant Collections Manager at FMNH) downloaded unique names by taxonomic order from FMNH's malacology collections in EMu. For mollusks (unlike insects) FMNH does store old taxonomic synonyms, which made this species list much more useful than what we were able to obtain for entomology. In addition, many of these names have been evaluated with recent expertise by Jochen Gerber (Collections Manager at FMNH).

[@ekrimmel](https://github.com/ekrimmel) was able to validate approximately 50% of CHAS names against the data from FMNH. Any names that could not be validated against the FMNH dataset were validated using [WoRMS](http://www.marinespecies.org) (first priority), or [GBIF](https://www.gbif.org/tools/species-lookup) (second priority). Any names that were still unvalidated after trying FMNH, WoRMS, and GBIF were researched and validated individually in part by one of our NSF interns, Yvi Russell. This individual taxon validation is ongoing.

* * *

## Step 3, Using the taxon authority to clean specimen data

The malacology inventory dataset was compared against the taxon authority using OpenRefine to match original names to their current, valid counterpart whenever possible. All names from the taxon authorities have also been validated against Arctos and added as necessary. Original identifications were retained on catalog records using [Arctos' tools for recognizing complex taxonomic determinations](http://handbook.arctosdb.org/documentation/identification.html), e.g. a valid genus but a specific epiphet that never existed.

# Taxon Authority (entomology)

* * *

## Step 1, Preparing original taxonomic data

CHAS entomology specimens were inventoried in separate Excel spreadsheets by taxonomic group. In order to clean up and synonymize taxonomic names, we began by pulling all taxonomic identifications from non-Lepidopteran entomology spreadsheets into a single field, *SYNONYM (data directly from spreadsheet)*. We retained the data verbatim in this field as a primary key back to our data, then duplicated them into a new field, *TAXON (to match to authority)*. Names in the latter field were cleaned by trimming extra spaces, return carriages, and special characters. They were then clustered to minimize the amount of unique names we had to synonymize, and to easily identify simple errors such as misspellings.

* * *

## Step 2, Synonymizing with valid taxonomy

Taxonomic names represented in *TAXON (to match to authority)* needed to be verified and, where not valid, synonymized with a valid taxonomic concept. In coordination with partners at The Field Museum (FMNH), we decided to address different taxonomic groups separately, as detailed below.

### Arachnida (n=356)

Proposed workflow determined by [@ekrimmel](https://github.com/ekrimmel) and Petra Sierwald (Associate Curator at FMNH) was to have CHAS validate names against [World Spider Catalog](http://www.wsc.nmbe.ch) and [ITIS](https://www.itis.gov), then use Sierwald's expertise to clarify any lingering questions.

To validate names against World Spider Catalog, [@ekrimmel](https://github.com/ekrimmel) generated links to the World Spider Catalog search result for each Aranae name with an identification at least to genus (n=320). Each name was then verified by [@showes](https://github.com/samuelhowes24) clicking on the link and either **(a)** confirming that our name was valid, or **(b)** copy-pasting the valid synonym into our data. Taxonomic concepts higher than genus (n=14) were verified by hand on World Spider Catalog. Non-Aranae names (n=22) were verified by hand on ITIS.

We were able to validate and synonymize 92% of our Arachnida names via the methods above. The remaining 28 names were reviewed and resolved by Sierwald.

### Insecta (n=5616)

Proposed workflow determined by [@ekrimmel](https://github.com/ekrimmel) and Sierwald was to have CHAS validate names against FMNH digitized entomology collections, then determine next steps based on remaining unverified names and which orders/families they belonged to.

Robin Delapena (Collections Assistant at FMNH) downloaded unique names by taxonomic order from FMNH's entomology collections in EMu. FMNH does not store outdated taxonomic synonyms, but as specimens are digitized their taxonomic identification is updated, and so we assumed that all taxonomy included in the EMu export was current. [@ekrimmel](https://github.com/ekrimmel) validated CHAS names against this data from FMNH, with the results shown in the table below.

**First Pass**

| Priority | Group | Source	| # names matched | % total matched |
| :---: | --- | --- | ---: | ---: |
| 1	| Blattodea | [Nearctic_Blattodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Blattodea_Taxa_fmnh.xlxs)	| 5	| % |
| 1	| Coleoptera | [Nearctic_Coleoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Coleoptera_Taxa_fmnh.xlxs)	| 545 | % |
| 1	| Ephemeroptera | [Mayfly Central: The Mayflies of North America](https://www.entm.purdue.edu/mayfly/na-species-list.php) | 1	| % |
| 1	| Hymenoptera | [Nearctic_Hymenoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Hymenoptera_Taxa_fmnh.xlxs)	| 108	| % |
| 1	| Hemiptera | [All_Regions_Hemiptera_Taxa_fmnh.csv](../taxon-authorities/merged-All_Regions_Hemiptera_Taxa_fmnh.xlxs)	| 106	| % |
| 1	| Mantodea | [Nearctic_Mantodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Mantodea_Taxa_fmnh.xlxs)	| 3 | % |
| 1	| Odonata |  [Nearctic_Odonata_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Odonata_Taxa_fmnh.xlxs)	| 38	| % |
| 2	| *all Insecta* | [ITIS](https://www.itis.gov) | 	1858	| % |
| 2	| *all Insecta* | [Catalog of Life](http://www.catalogueoflife.org)	| 127	| % |
| 3	| *all Insecta* | [Global Names](http://globalnames.org)	| 1072	| % |
| 	| *all Insecta* | UNMATCHED NAMES	| 1753	| % |

** By Order

| Priority | Group | # verified	| # unverified | Status |
| :---: | --- | --- | ---: | ---: |
| 	| Blattodea | 13 | 5 | pending |
| 	| Coleoptera | 4201 | 2361 | pending |
| 	| Dermaptera | 5 | 0	| complete |
| 	| Diptera | 652	| 404 | pending |
| 	| Ephemeroptera | 3 | 0 | complete |
| 	| Hemiptera | 332 | 165	| pending |
| 	| Hymenoptera | 200 | 77 | pending |
| 	| Isoptera | 2 | 0 | complete |
| 	| Mantodea | 8 | 3 | pending |
| 	| Mecoptera | 3 | 0	| complete |
| 	| Megaloptera | 5 | 0	| complete |
| 	| Neuroptera | 10 | 0	| complete |
| 	| Odonata | 52 	| 1	| pending |
| 	| Orthoptera | 118 | 22	| pending |
| 	| Phasmida | 5	| 0	| complete |
| 	| Plecoptera | 9 | 5	| pending |
| 	| Raphidoptera | 1	| 0	| complete |
| 	| Trichoptera | 12	| 1	| pending |

*Total found between ITIS, CoL, and Global Names was 3709 (1907 not found).*

*Next steps: cross-reference with SCAN. Identify taxonomic groups in need of expert opinion.*

### Other arthropods (n=13)

Proposed workflow determined by [@ekrimmel](https://github.com/ekrimmel) and Sierwald was to have CHAS hand validate names against [ChiloBase](http://chilobase.biologia.unipd.it) and
[WoRMS](http://www.marinespecies.org), then use Sierwald's expertise to clarify any lingering questions.

We were able to validate and synonymize 100% of these names via the methods above.

* * *

## Step 3, Using the taxon authority to clean specimen data

Each entomology inventory dataset was compared against the taxon authority using OpenRefine to match original names to their current, valid counterpart. All names from the taxon authorities have also been validated against Arctos and added as necessary.

###  Steps taken for each entomology inventory dataset:

  1. Run original, raw names against [CHAS_TaxonAuthority_Ento-Step-1.csv](../taxon-authorities/CHAS_TaxonAuthority_Ento-Step-1_2017-02-08.csv) (in OpenRefine) to get *TAXON (to match to authority)*.

  2. Run *TAXON (to match to authority)* against [CHAS_TaxonAuthority_Ento-Step-2]() to get *ACCEPTED TAXON*.

  3. *ACCEPTED TAXON* matches to valid Arctos taxonomy.

  4. Retain original taxonomy on catalog record as a record of the verbatim identification.

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

| Group | Source	| # names matched | % total matched |
| --- | --- | ---: | ---: |
| Blattodea | [Nearctic_Blattodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Blattodea_Taxa_fmnh.xlxs)	| 5	| 38% |
| Coleoptera | [Nearctic_Coleoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Coleoptera_Taxa_fmnh.xlxs)	| 545 | 13% |
| Ephemeroptera | [Mayfly Central: The Mayflies of North America](https://www.entm.purdue.edu/mayfly/na-species-list.php) | 1	| 33% |
| Hymenoptera | [Nearctic_Hymenoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Hymenoptera_Taxa_fmnh.xlxs)	| 108	| 54% |
| Hemiptera | [All_Regions_Hemiptera_Taxa_fmnh.csv](../taxon-authorities/merged-All_Regions_Hemiptera_Taxa_fmnh.xlxs)	| 106	| 32% |
| Mantodea | [Nearctic_Mantodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Mantodea_Taxa_fmnh.xlxs)	| 3 | 38% |
| Odonata |  [Nearctic_Odonata_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Odonata_Taxa_fmnh.xlxs)	| 38	| 73% |

This first pass using taxonomic data from FMNH was not able to resolve the majority of CHAS  names. A second pass using the [GBIF species lookup tool](https://www.gbif.org/tools/species-lookup) helped us resolve the entirety of CHAS Insecta names, although probably at a lower taxonomic quality than those synonimized from FMNH data.

### Other arthropods (n=13)

Proposed workflow determined by [@ekrimmel](https://github.com/ekrimmel) and Sierwald was to have CHAS hand validate names against [ChiloBase](http://chilobase.biologia.unipd.it) and
[WoRMS](http://www.marinespecies.org), then use Sierwald's expertise to clarify any lingering questions.

We were able to validate and synonymize 100% of these names via the methods above.

* * *

## Step 3, Using the taxon authority to clean specimen data

Each entomology inventory dataset was compared against the taxon authority using OpenRefine to match original names to their current, valid counterpart whenever possible. However, a significant number of entomology specimens could not be matched to current, valid taxonomy without expert review. All names from the taxon authorities have also been validated against Arctos and added as necessary.

###  Steps taken for each entomology inventory dataset:

  1. Run original, raw names against [CHAS_TaxonAuthority_Ento-Step-1.csv](../taxon-authorities/CHAS_TaxonAuthority_Ento-Step-1_2017-02-08.csv) (in OpenRefine) to get *TAXON (to match to authority)*.

  2. Run *TAXON (to match to authority)* against [CHAS_TaxonAuthority_Ento-Step-2]() to get *ACCEPTED TAXON*.

  3. *ACCEPTED TAXON* matches to valid Arctos taxonomy.

  4. Retain original identification on catalog record using [Arctos' tools for recognizing complex taxonomic determinations](http://handbook.arctosdb.org/documentation/identification.html), e.g. a valid genus but a specific epiphet that never existed.

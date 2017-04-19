# Taxon Authority (entomology)

## Step 1, Consolidating raw data from CHAS inventory

Basic clean up (trim extra spaces, return carraiges, special characters)

## Step 2, Synonymizing current names

| Group | Reviewed by | Additional source |
| ------ | ------ | ------ |
| Araneae | Petra | |

### Araneae

- Generated links to [World Spider Catalog](http://www.wsc.nmbe.ch) search pages for individual taxa with ID at least down to genus (n=320). Checked these by hand.
- Checked individual taxa with ID down to family/order by hand on World Spider Catalog (n=14)
- (Current step) Asked Petra to look at the remaining 21 unresolved Araneae taxa plus 7 unresolved Ixodida and Scorpiones taxa

### Other non-insect arthropods

- Cross-referenced FMNH data for Hemiptera, Blattodea, Coleoptera, Ephemeroptera, Hymenoptera, Mantodea, and Odonata. Obtained taxa information from Robin via EMu export December 2016. FMNH does not store taxonomic (old) synonyms. Only current taxonomy is included in EMu export.
- (current) step) need to go through by order

The Hemiptera names were entered as collection units from our collection during the late 90's by Jim Louderman, under Margaret Thayer's (Insects curator) direction. The names were compared against a Hemiptera catalog that Maragaret found, we are not sure which one at this point.
So, our Hemiptera names in EMu are most likely somewhat outdated, but most likely quite accurate for the time.

There is a rather recent Hemiptera catalog: Henry & Froeschner, 1988. It is in our Library call # QL 522.1C27h. There is also an updated online checklist for Hemiptera of Oklahoma: http://entoplp.okstate.edu/museum/hemiptera.htm


1.	We validated our arachnid names (Araneae against the World Spider Catalog, as you recommended; non-araneae orders against ITIS). I am attaching our results, and would appreciate if you could take a look at the first 28 names (where there is no value for ‘ACCEPTED TAXON’)—these are names that I am unsure how best to resolve. You can add information any of the columns except ‘TAXON (original)’.

2.	Other arthropod classes (Chilopoda, Diplopoda, Crustacea) had very few names, and were mostly higher taxonomy. I verified these against WoRMS, and the file is attached for your reference.

3.	Insecta is still in progress. I have cross-referenced the FMNH data that Robin sent for Hemiptera, Blattodea, Coleoptera, Ephemeroptera, Hymenoptera, Mantodea, and Odonata. Although this data was very useful, we still have many names to resolve (see my table below). We have not yet cross-referenced the Hemipteran catalogs that you recommended in a prior email, and we can certainly still do that. However, the majority of our unmatched names are Coleoptera. Do you think SCAN or InvertNet may have taxon authorities that would be useful for us? I am quite sure that most of our names are outdated synonyms, and so if anyone has already done the work to look up the current name I would prefer to take advantage of that before having to individually check 2000 names ourselves. The data from FMNH was definitely useful, but limited as it doesn’t have synonymy. On a related note, what is your opinion of ITIS/Catalog of Life as sources for names being valid? I am very hesitant to consider Global Names a valid source because it aggregates names from a wide variety of other resources—if I can find a specific epithet on Global Names but not ITIS it means that the Global Names source is probably questionable, e.g. this random beetle taxon.

**First Pass**

| Priority	| Source of match	| # names matched | % names matched |
| --- | --- | --- | --- |
| 1	| [Nearctic_Coleoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Coleoptera_Taxa_fmnh.xlxs)	| 548 | 10% |
| 1	| [Nearctic_Hymenoptera_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Hymenoptera_Taxa_fmnh.xlxs)	| 108	| 2% |
| 1	| [All_Regions_Hemiptera_Taxa_fmnh.csv](../taxon-authorities/merged-All_Regions_Hemiptera_Taxa_fmnh.xlxs)	| 106	| 2% |
| 1	|  [Nearctic_Odonata_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Odonata_Taxa_fmnh.xlxs)	| 38	| < 1% |
| 1	| [Nearctic_Blattodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Blattodea_Taxa_fmnh.xlxs)	| 5	| < 1% |
| 1	| [Nearctic_Mantodea_Taxa_fmnh.csv](../taxon-authorities/merged-Nearctic_Mantodea_Taxa_fmnh.xlxs)	| 3 | < 1% |
| 2	| [ITIS](https://www.itis.gov) | 	1860	| 33% |
| 2	| [Mayfly Central: The Mayflies of North America](https://www.entm.purdue.edu/mayfly/na-species-list.php) | 1	| < 1% |
| 3	| [Catalog of Life](http://www.catalogueoflife.org)	| 127	| 2% |
| ?	| [Global Names](http://globalnames.org)	| 1078	| 19% |
| 	| UNMATCHED NAMES	| 1759	| 31% |

###  For each entomology inventory dataset:

  1. Run raw names against [CHAS_TaxonAuthority_Ento-Step-1.csv](../taxon-authorities/CHAS_TaxonAuthority_Ento-Step-1_2017-02-08.csv) (in Refine) to get *TAXON (to match to authority)*.
  2. Run *TAXON (to match to authority)* against [CHAS_TaxonAuthority_Ento-Step-2]() to get *ACCEPTED TAXON*.
  3. *ACCEPTED TAXON* matches to valid Arctos taxonomy.
  4. Retain original taxonomy on catalog record.

### Find appropriate authority file by taxonomic class**

  1.	Take raw names and cluster into a best representation of taxa (defined narrowly)
  2.	Run these taxa against existing taxon authorities via web services (WoRMS, MolluscaBase) – caught 2639/5322 between these two (not counting ambiguous terms.
  3.	Copy the taxa (these are your primary key). Cluster the copied data as taxon concepts more broadly. Check broad concepts (filter by instances of >1) and apply relevant matched names where possible. Caught an additional 33 this way. For the most part Step 2 worked very well.

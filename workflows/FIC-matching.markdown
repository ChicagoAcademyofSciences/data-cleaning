# FIC Matching

The goal of this process was to match found-in-collection (FIC) specimen records to their disassociated CHAS catalog numbers by cross-referencing data between inventory spreadsheets, catalog records, accession records, and ancillary information from archives and publications.

FIC specimens in the CHAS collections may have become physically disassociated from their catalog numbers in a variety of ways, including being on exhibit or on loan. The malacology collection was hastily moved to a new storage facility in the early 1990s, and when the collection was inventoried in 2008-2009 some specimens were jumbled together in drawers with labels loose. Many specimens were re-associated with their labels during the inventory period, but prior to the process described here 29% of the collection (4,483 specimen lots) lacked a catalog number.

## Preparing the working spreadsheet (malacology)

[@ekrimmel](https://github.com/ekrimmel) created a dataset composed of all FIC specimen records and all unmatched catalog records. To get this set, data from the Original Catalog Books was filtered by any row where the catalog number did not occur in the inventory specimen data and where the *Collection* was "malacology," "invertebrate," or null. This was then combined with all inventory data rows where the catalog number was "FIC," and formatted as an Excel spreadsheet. Rows representing a record from the Original Catalog Books were colored white, and rows representing an inventoried specimen were blue, making it easy to visually distinguish matches between a white row and a blue row.

> CHAS Original Catalog Book data has not been cleaned and formatted in the same way we do for inventory specimen data. For the purposes of FIC matching, sorting would be more effective with more standardized data, however we decided that the benefits of fully cleaning and formatting the original catalog data did not outweigh the extra time required. OpenRefine could be a better tool to work with this less standardized dataset, but we decided that the visual cues (e.g. coloring rows based on provenance) in Excel were more helpful than the enhanced faceting and filtering functionality in OpenRefine.

Malacology FIC matching was conducted by [@samuelhowes24](https://github.com/samuelhowes24) using [this spreadsheet](../working-files/Mala_FICMatch_2017-07-05.xlsx).

## Preparing the working spreadsheet (entomology)

Entomology work is currently in progress.

## Eliminating unmatchable and irrelevant records (malacology)

Many of the records from the Original Catalog Books that we pulled into the spreadsheet were not actually related to malacology specimens because we were purposefully liberal in the records we included. Irrelevant rows were identified by quickly reviewing rows where the *Collection* was not "malacology" (i.e. it was "invertebrate" or null), looking at the taxonomy listed for the row, and marking anything irrelevant as “not a malacology specimen” in the *Collection Mgmt Notes* column.

Additionally, many of the rows in this spreadsheet, both from the Original Catalog Books and from the inventory data, did not have enough information to be able to confidently determine an FIC match. For example, a row with only the collecting locality and nothing about the date, species, or collector would be impossible to confidently match to a catalog record. Such rows were marked as "not enough data to establish match" in the *Collection Mgmt Notes* column.

By excluding rows marked as "not a malacology specimen" or "not enough data to establish match," the project technician was able to narrow down the FIC matching dataset by 54% (from 15485 to 7097 rows). All subsequent matching rounds used this reduced dataset.

## Eliminating unmatchable and irrelevant records (entomology)

Entomology work is currently in progress.

## Establishing criteria for FIC matches

At least two fields in concordance were required to establish a possible FIC specimen to catalog record match, and three concordances were required to confirm it. The fields used to evaluate potential matches were those related to taxonomy, collector, collecting locality, collecting date, and donor/accession. Where two matches could be made and no other data conflicted, it was assumed that that specimen and record were a match, except in cases where multiple FIC specimens matched a single or multiple catalog records, making it impossible to determine which matches were correct.

## Identifying FIC matches

**By taxonomy...** The technician was able to find the majority of the project’s FIC matches by comparing and identifying duplicate rows within synonymized taxa. Sorting by accession information, donor, or locality and then by taxonomy allowed the technician to see the data in different ways and more easily identify FIC matches.
> This FIC matching was completed before the inventory malacology taxonomy had been fully cleaned and updated, which made matching FIC specimens by taxonomy easier because the Original Catalog Book taxonomy was also not updated. However, some specimens had had their taxonomy updated at various points in the eight years post-inventory, and the technician did need to check online references such as [MolluscaBase](http://www.molluscabase.org) for taxonomic synonyms.

**By accession event information...** After sorting the data by *Donor*, and then by genus/species, the technician confirmed most of the matches found above, as well as identified a few additional ones. Sorting was repeated for the *Associated with Agency* column.

**By collecting event information...** Identifying FIC matches by locality was the most painstaking aspect of this process. After sorting by specific locality the technician slowly worked through the data trying to find matches. The only ones found in this step were those from specific depths (e.g. "2200 ft, Foster Ave"). Further searches sorting by city or state did not yield any new results but did confirm previous matches. No matches were found by sorting on collecting dates or collectors.

## Reintegrating FIC matching data into master data (malacology)

Data from the process above was reintegrated into the master malacology data by pulling in relevant spreadsheet columns (*Catalog Number*, *Collection Mgmt Notes*) based on the unique ID of each row. The new data was reviewed a final time before it overwrote data in the master, with data provenance and standardized project technician notes ("FIC matched to catalog number during Arctos migration process, 2017") recorded in the remarks. This process resulted in 45 matches, i.e. 45 previously FIC specimens that now are reunited with their catalog numbers and associated information.

## Reintegrating FIC matching data into master data (entomology)

Entomology work is currently in progress.

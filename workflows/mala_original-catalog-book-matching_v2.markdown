# NSF Transcription Intern
## Cross-Referencing Original Catalog Books with Malacology Inventory Data

The goal of this project is to fill in our malacology inventory spreadsheet with as much data from our catalog books as possible. All but one of our catalog books is fully transcribed. Your task is to cross-reference the transcribed catalog book records with the information in our malacology inventory spreadsheet and add any missing information, or look into any discrepancies between these two sources.

### Background Info

You will be working in a spreadsheet that we have prepared called *Mala\_CATMatch\_[date]* (available at *L:\Inventory\Malacology\Data for Arctos (in progress)\Original Catalog Book matching*). To prepare this spreadsheet we have done the following:

1. Taken the most recent copy of the master malacology inventory spreadsheet ([*Mala_Master_2017-03-10*](../working-files/Mala_Master_2017-03-10.csv)) and cleared any extra characters from the values in column CAT_NUM (i.e. brackets and “FIC /”).

1. Pulled in data from the most recent copy of each original catalog book spreadsheet (*[Original-Catalog-Book-00001-08000_2017-03-16](../working-files/Original-Catalog-Book-00001-08000_2017-03-16.csv)*, *[Original-Catalog-Book-08001-16000_2017-03-16](../working-files/Original-Catalog-Book-08001-16000_2017-03-16.csv)*, *[Original-Catalog-Book-16001-24000_2017-03-18](../working-files/Original-Catalog-Book-16001-24000_2017-03-18.csv)*, *[Original-Catalog-Book-24001-32000_2017-03-16](../working-files/Original-Catalog-Book-24001-32000_2017-03-16.xlxs)*). See script at [S:\Arctos\GitHub Repositories\data-cleaning\refine_CATMatch.json](../refine_CATMatch.json)) for background on how this was done.

1. Reordered the columns so that each column with information from the original catalog books precedes its equivalent inventory data column.

1. Flagged duplicate catalog numbers with “[duplicate]” after the number in the column CAT_NUM.

1. Retained a master copy of this ([Mala-CATMatch_2017-03-18.csv](../working-files/Mala-CATMatch_2017-03-18.csv)) in Open Refine.

### Intern Process, Part 1

**STEP 1:** Creating and maintaining your spreadsheet.

- Open up the spreadsheet *Mala\_CATMatch\_[most recent date]* available at *L:\Inventory\Malacology\Data for Arctos (in progress)\Original Catalog Book matching*. Save as a new copy with an updated date before working so you can have a backup of your progress!

- Orient yourself to the spreadsheet. Columns with a blue background and a header beginning “CAT –“ contain information from the original catalog books.

- Some columns in this spreadsheet are hidden. Leave them hidden so as to avoid accidentally editing data you should not be changing.

**STEP 2:** Verifying a match between catalog book and inventory data.

The columns listed below contain information from the original catalog books. Our overall goal is to verify that this information matches and exists in the malacology inventory data columns, and where it does not, to add it. *Your goal, for now, is only to decide whether or not the information from the catalog book refers to the same specimen as the information from the inventory data.* You will do this by comparing information from the original catalog books (blue background) to information from the specimen inventory (white background). This is a vital step in our data unification process because our collection does have situations where re-numbering or duplicate catalogue numbers have occurred in the past.

If the following column sets contain information that matches, we will assume that the two information sources (catalog book + inventory) refer to the same specimen. Indicate this by marking a “y” in the Status column.

-	**CAT – Collection:** Begin by sorting on this column and dealing with any rows that do not have the value “Malacology.” These rows may be related to the specimen in the malacology inventory data, but also could be related to a specimen with the same catalog number in a different collection. If the information from the original catalog books is not related to the specimen in the inventory data, mark the row “not a match” in the Yvi’s Status column. If the information does match, mark the row “y” in the Status column and also change the value of Cat – Collection to “Malacology.” This is the only time you will ever edit the content of a blue cell, and the ONLY TIME YOU WILL EDIT THE CONTENT OF ANY CELL DURING THIS STAGE (other than in Status).

 > Pay special attention to duplicate catalog numbers! Our script will have pulled in information from the catalog book that does not match at least one of any set of duplicate catalog numbers. You need to determine which catalog number in the malacology data is also referred to by the catalog book data.**

-	**CAT – Accn:** Compare to ACCN.

-	**CAT – Received From:** Compare to Received From/ Presented By.

-	**CAT – Identification:** Compare to current and old taxonomy columns.

-	**CAT – Locality:** Compare to HIGHER_GEOG and SPEC_LOC.

-	**CAT – Collected By:** Compare to COLLECTOR_AGENT_1, COLLECTOR_AGENT_2, and COLLECTOR_AGENT_3.

You can flag cells for questions by highlighting them yellow, and/or by writing a note in the Yvi’s Status column.

**STEP 3:** Tracking your progress.

-	As you work through the spreadsheet, use the Status column to mark your progress. You can figure out your own system for how to use this column, but at the very least you should be recording that you have looked at a row. This is also a good place to write down questions about a row that you may want to return to. You will be “finished” with this spreadsheet when every row has been marked as looked at.

-	Also, again, make sure that the file you were working on is saved with today’s date! This will go a long way in helping us track changes and go back if we need to.

### Intern Process, Part 2

Once we know whether or not all the information in a single row refers to a single specimen we can begin merging datasets (catalog book + inventory). Some of the information can be merged semi-automatically (e.g. collecting date, or collector). Other information is more difficult to parse and will require us to review it—you will do this in stages. When you are reviewing more complex information to merge, NEVER WORRY ABOUT CORRECTING INFORMATION IN THE ORIGINAL CATALOG BOOK DATA COLUMNS (those with a blue background). Here is how each of the columns from the Original Catalog Book data will be merged into the inventory data:

-	*(using Open Refine)* **CAT – Col Num:** Compare to and merge with OTHER_ID_NUM_1, OTHER_ID_NUM_2, OTHER_ID_NUM_3, and OTHER_ID_NUM_4.

-	*(using Open Refine)* **CAT – Accn:** Compare to and merge with ACCN.

-	*(using Open Refine)* **CAT – Received From:** Compare to Received From/ Presented By. Merge or check Accession records where necessary.

 >	*(verified by hand)* **CAT – Identification:** Compare to current and old taxonomy columns. *Do not worry about filling in missing higher taxonomy or fixing old taxonomy*. Only add information when the identification information is missing in the inventory data and present in the catalog book data, e.g. CAT – Identification says “*Limnaea stagnalis*” while Genus and Species say “*L.*” and “*stagnalis*.”

-	*(using Open Refine)* **CAT – Date of Collection:** Compare to and merge with VERBATIM_DATE, BEGAN_DATE, and END_DATE.

 >	*(verified by hand)* **CAT – Locality:** Compare to HIGHER_GEOG and SPEC_LOC, if additional information exists in the CAT – Locality column, mark “yes” in the Merge Geo? column. Do not edit anything in HIGHER_GEOG, SPEC_LOC, or VERBATIM_LOCALITY.

-	*(using Open Refine)* **CAT – Collected By:** Compare to and merge with COLLECTOR_AGENT_1, COLLECTOR_AGENT_2, and COLLECTOR_AGENT_3.

-	*(using Open Refine)* **CAT – Number of Specimens:** Compare to and merge with Number of Specimens from Records.

 >	*(parsed by hand)* **CAT – Remarks:** Compare to other remarks columns in the Malacology inventory data. Parse into appropriate new/existing columns TBD.

-	*(using Open Refine)* **CAT – Sex:** Compare to and merge with ATTRIBUTE_VALUE_2 (Sex).

-	*(using Open Refine)* **CAT – Age:** Compare to and merge with ATTRIBUTE_VALUE_3 (Age).

### Intern Process, Part 3

After reviewing and integrating data for specimens with catalog numbers, we now need to look at all of the records in the original catalog book spreadsheets that are supposedly related to malacology specimens but which did not have a matching number in the malacology inventory data.

It is possible that the specimen recorded in the original catalog book data is an FIC (found in collection) and does not, therefore, have its catalog number present in the inventory data. Your job is to try and match up data between both sources with the goal of attaching catalog numbers to specimens that were previously FIC.

More details will be provided on this process when you are ready to begin, but in short you will be looking to…

-	See if any data in the catalog book matches FIC specimens in the inventory data. Sorting the malacology inventory spreadsheet by donor, taxon, or locality will help. To ensure the most effective sort, be sure to only use one or two fields at a time.

-	Sorting by the “Received From/Presented By” and “COLLECTOR_1” columns helps with identifying FIC’s by name of donor. Be aware that the spreadsheet will sort on *exactly* what is written in the cell. “F.C. Baker” and “F. C. Baker” are considered two different entries.

There will be cases where a positive ID cannot be made with a record, and that’s okay!

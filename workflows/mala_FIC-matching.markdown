# FIC Identification (malacology)
## For identifying FIC records by cross-referencing data between Arctos, catalog data, and cleaned catalog/accessions data

This project used data from catalog books and FIC data from corrected accessions records. All names were standardized through string concatenation before the project started. The overall goal of this project was to match an existing catalog number (record in white) with an FIC record (record in blue). 

### Background Information

The original spreadsheet used for this project was the Mala_FICMatch_2017_06-02 spreadsheet on the museum's L server. This spreadsheed had its donor names standardized and corrected through string concatenation and all data imported from the accessions spreadsheed highlighted in blue.

### Process 1: Established acceptable criteria for matches
We decided that at least two fields were required to establish a possible match, and three matches would confirm it. The fields used in this project were taxa (genus/species), donor name, locality, and date. Where two matches could be made and no other data conflicted, it was assumed that those two could be matched. There were cases where multiple FIC records matched a single or multiple catalog records using this criteria, and so those records were NOT matched to a specific catalog number.

### Process 2: Ensured proper formatting for spreadsheet
Our data is most easily processed when individuals and agencies are treated separately, so each got their own column. Similarly, sorting by locality is most effective when all data fields (specific locality, city, state, etc.) are standardized. Due to the number of records from the catalog books, this could not be done efficiently so sorting in this project was not as effective; nevertheless the locality sort was done to the best of the technician’s ability. A similar issue was present within the taxa, where multiple misspellings and old taxa made sorting less efficient. Sorts by taxa could still be done, but confirmation was needed throughout the process using MolluscaBase for identifying synonyms.

Some of the records in the ACCN number column were input with text, most commonly “[unconfirmed]”. Formatting the entire column as text and then using a Find and Replace to eliminate the aforementioned string allowed for a more effective sort. Be sure to save a copy of the data before completing this step so that the ACCN column can be restored at the end of the project. 

### Process 3: Eliminating unmatchable and non-malacology records
Many of the records from the catalog books were not malacology records. These were marked off as “Not a malacology specimen” in the Collection Mgmt Notes column. In addition, many of the malacology records did not have enough data to be able to match at least two fields. These were marked off as “Not enough data to establish match” in the Collection Mgmt Notes column. 
By sorting the sheet by genus and species and then flagging off the records which met these two criteria, the technician was able to set aside around 66% of the original data set and complete the first overview of data matching for the FICS. All subsequent matching rounds used this smaller set of data.


### Process 4: First round matching: ACCN number
After sorting the data by cleaned ACCN numbers and then by genus/species, the technician was able to match the majority of the project’s  matches by comparing and identifying duplicates, including within synonymized taxa. 

### Process 5: Second round matching: Donor/Agency
After sorting the data by donor, and then by genus/species, the technician confirmed most of the matches in step 4 and identified a few other ones which went overlooked. This step was repeated for the the Associated with Agency column.

### Process 6: Last round matching: Locality
After sorting the data by specific locality the technician slowly worked through the data trying to find matches. The only ones found in this step were those from specific depths (e.g. 2200 ft, Foster Ave). Further searches after sorting by city or state did not yield any new results but did confirm previous matches.

### Process 7: Restoring the spreadsheet

Open both the new spreadsheet and the old one saved in step 2. Sort both by the unique ID column and then restore any standardized data not meant to be permanently changed. In this case, it was only the ACCN number column that was changed.

  * All Done!

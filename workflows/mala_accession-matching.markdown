# Accession Matching (malacology)
## For cleaning and cross-referencing inventory data between Arctos, inventory data, and cleaned catalog data

The goal of this project is to identify inventoried specimens associated with existing accession numbers. The inventory data used in this project has not yet been cleaned or cross-referenced with the catalog data. As such, there are many errors and holes in the data. In order to efficiently and accurately identify the largest number of inventoried specimens, you will first have to clean various data fields and cross reference the inventory data with information on Arctos and in the cleaned catalog data.

### Background Information

The original spreadsheet used for this project was the Mala_Master_2017-03-03 Excel spreadsheet on the museum's L server. In addition, relevant data already uploaded to Arctos was put into Google Refine. The Refine spreadsheet contained a status column for tracking the technician's progress during the first matching phase, ACCN numbers, the Received From (donor) name, received date, nature of material, and remarks related to the accession. 


### Process 1: Accessing and preparing the spreadsheet
Firstly, the master spreadsheet was saved as a new file so that changes could be more easily tracked. In a separate folder, a copy of the Mala_Master spreadsheet was saved as "Mala_AccessionsMatching_YYYY-MM-DD", with the day's date at the end. The file was saved as a new Excel sheet every workday with the current date.

Several columns were needed in the Excel spreadsheet in order to keep track of progress, new data, and possible issues with existing data. These columns were kept together for more efficient sorting by the technician. New columns include:

  * "Best Guess" or determination columns, which contained details about confirmed or possible accession numbers, standardized donor and agency names, and/or formatted locality information. These columns were called "ACCN-Sam", "Donor (Standard)/Best Guess (FLAG)", and "Agency (Standard)/Best Guess (FLAG)". "HIGHER GEOGRAPHY" and "SPECIFIC LOCALITY" were added later during the data cleaning process and made sorting by location much easier.

  * Progress tracking columns, which were used as a record of progress in matching the spreadsheet data to other data sources. These were titled "Compared to ARCTOS in Refine?" and "Checked with Catalog".

  * Degree of confidence/task columns, which were initially used as reminders of required actions for each accession entry. However, it was found that using a simpler system of Flags (in "Flags- unable to confirm") and actions (No, Check, and Done in "ACCN confirmed?") was much more effective at highlighting potential issues and confidence levels in accession number designations.

  * New data for Arctos. In a few cases, donor and received date information was found in the spreadsheet but not on Arctos. This column was used to store this kind of data for bulk corrections in Arctos to be made at any stage of the project.

  * A remarks column, for catching any extra data or pertinent observations throughout each phase.

One of the other phases in this project involved comparing the accessions data to cleaned catalog data. While this step occurred near the end of the project in order to maintain an efficient workflow, it would have been helpful to see what other sources of data would become available. As such, a few other columns should be included in the new spreadsheet, adjacent to the equivalent accessions columns:

  * Catalog numbers (CAT NUM) which contains the catalog number (or FIC if unknown) for each entry

  * ACCN numbers from catalog book (Catalog Book ACCN) which lists the accession numbers from the catalog data. These may or may not match the inventory data, but proved useful in correcting and identifying accessions at the end of the project.
  
  * Received from and Collector (Catalog Books Received From and Catalog Books COLLECTOR_AGENT_1) for relevant donor data. This also proved useful in identifying accessions.

  * Date columns (VERBATIM_DATE, BEGAN_DATE, END_DATE). Often the only source of date information is in the catalog books. This can help distinguish between two otherwise identical accessions.

Both sets of columns were darkened for more efficient sorting and tabulation.

A column was also made in Google Refine to track the technician's progress. The column will indicate either "Done" or "Done-not found in spreadsheet" to record whether an accession in Arctos is present in the inventory data.

### Process 2: Cleaning the data

Much of the initial data in both Excel and Refine was not standardized, meaning there were many typos and variations in names, and no efficient methods to sort. Refine provides excellent tools in faceting and reconciling these kinds of data, and is the recommened way to clean data in the inventory spreadsheet. Ideally, the Received from, Higher Geography, and Specific Locality should be reconciled and then formatted as following:

  * Received From/Collected By: LASTNAME, FIRSTNAME
  * Associated with Agency: AGENCY NAME, EXPEDITION/COLLECTING EVENT (e.g. Chicago Academy of Sciences, Florida Expedition, 1877)
  * Higher Geography: Continent/Ocean, Country/Island Group, State/Province/Specific Island
  * Specific Locality: County, City, Locality/Body of Water. Adding a standard Specific Feature or Direction field (e.g. bridge 4 miles S of Chicago) would have been helpful in getting a more accurate sort, but was not used in this project.
  
The newly reconciled data went into the appropriate columns which were inserted at the first stage of the project. NONE of the verbatim data were changed in the spreadsheet. Only the locality data (HIGHER GEOGRAPHY and SPECIFC LOCALITY) was standardized and added in this way. In order to standardize locality data:

  * [Steps for standardizing locality information]

If the file size is too large, Refine may not run quickly enough to efficiently get through all of the inventory data. This was the case with the technician's run through, where standardizing names, higher geography, and localities were not done until the middle of the project. Allocating more memory to the program did help a little, but ultimately manual standardization proved the fastest way. Only the donor and agency names were done in this way, directly in Excel:

  * Sort the data by Arctos-Received From and begin to enter each name into the "Donor (Standard)/Best Guess (FLAG)" column using the standardization guidelines above. Correct only recognizable typos in the names, and leave first names and initials uncorrected for now. Use Copy/Paste or the drag tool to rapidly fill in cells with the corrected names.
  
  * Repeat the process until all names in the Arctos-Received From and Received From/Presented by columns are entered into the standardized donor column. IMPORTANT: There will be cases in which the names in the Arctos-Received From column and Inventory Received column from don't match, in which case flag the entry in the Flags column and make a note in the remarks.
  
  * Repeat this process for all the names in the "Collected by" or "COLLECTOR_AGENT" columns, but ONLY if there is no data in either the Arctos-Received from or the Received from/Presented by columns.
  
  * Finally, repeat the process for all of the agency names, but record them in the Agency (Standard)/Best Guess (FLAG) column. If there is a record with a listed donor AND an agency, record both in the appropriate columns.
  

### Process 3: Using Google Refine to confirm data and find easy accession matches

Since much of the data was not standardized until the middle of the project, Refine was used to more efficiently facet and sort the data to identify accessions records. 

  * First, facet or cluster the data by donor name. This will provide all of the accessions associated with a single individual. Faceting by flag or reconciling separate donor names may be helpful in sorting out relevant data.
  
  * Then, sort the Excel spreadsheet by the Arctos-Received From column. For larger groups of names, it will be useful to do a custom sort of "Arctos-Received from" and "ACCN".
  
  * Scroll through the list or use a Ctrl+F search to match the data in Refine with an entry in the Excel spreadsheet. If a definite match is found, put a "Yes" in the "Compared to ARCTOS?" column and a "Check" in the "ACCN Confirmed?" column. This will signify the record is ready to be checked and confirmed with other data sources. Then put a "Done" in the "status" column on Refine.
  
  * Repeat the sorting and matching process for the "Received From", "COLLECTOR_AGENT_1", and "COLLECTOR_AGENT_2" columns. If no match is found, search the data by ACCN number and repeat the recording process. If there are still no matches, put a "Done-not found in spreadsheet data" in the "status" column of Refine.
  
  * In some cases, the name in Arctos and the name in Received From will not match. More data is needed to establish the donor, so put a FLAG in the Flags column to mark it off and a "No" in the "ACCN Confirmed?" column to indicate lack of certainty. Then, place a "?" in the ACCN-Sam column. Finally, make a remark about which possible donors and numbers the record could be.
  
  * There will also be cases where multiple accession numbers may apply to the same entry. Again, more data will be needed for a determination, so mark it with a FLAG in Excel and make a note of possible accession numbers in the Remarks column of the Excel data, where appropriate.
  
  * In all cases where there is a donor or agency listed in Excel but no definite accession number confirmable through Refine, put a "?" in the ACCN-Sam column to mark it as unknown

### Process 4: Initial Accession Matching and Donor Reconciliation

After using Refine to match Arctos data to the spreadsheet data, the only ACCN numbers left should be the ones not in Arctos, the unknowns, "Yes", and "No" entries.
  * Sort the Excel sheet by standardized donor name, and then by accession number, and then by higher geography and specific locality. This will result in clusters of names organized by number and place, with all of the unidentified accessions (?, Yes, No, and blank) at the bottom of each cluster.
  
  * If available, be sure to import cleaned catalog data at the start of the process as it will make identification easier. If no cleaned catalog data is available (as was the case for us), track your progress using "check" in the confirmation column or "no" in the compared with catalog column. When catalog data is available, import it into the correct columns and start back at the top of the inventory data.
  
  * Attempt to match up the unknown accession numbers using the donor, Arctos-ACCN, date and locality, and catalog information, if available. If a number can be identified with at least three pieces of information, enter it and mark "Done" in the confirmation column. If no catalog data is available, but two pieces of data match, enter it and mark "Check" in the confirmation column. If only two pieces of data match again, enter "No" in the confirmation column and flag the entry for later comparisons. If only the name matches, the ACCN will remain "?" and will have a "No" in the confirmation column.
  
  * When the end of the donor column is reached, re-sort using the agency name and repeat the process.

  * There may be inconsistencies between donors from different sources. Many of these will have already been flagged in Process 2. Try to identify the correct owner and accession number by comparing the dates and localities of each donor cluster. If the donor still cannot be identified, make a note in the remarks and flag the entry. Where appropriate, note whether multiple accessions are possible in the remarks column.
  
### Process 5: Creative Accessions and FIC Identification
There may still be a significant number of entries that have no donor or agency listed, but do have an accession number, or information in the catalog books but not in the spreadsheet. All of this data can help identify FIC's and confirm the work already completed. 

  * First pull in all of the relevant donor and agency data from FIC entries, if you have not done so already. Information from inventory labels may be useful as well. Use a filter to find relevant names in that data column (see records from Nesper Pharmacy, from E.H. King).
  * Next, pull in relevant data from the catalog books, including accession numbers (if not already confirmed or guessed at), donors, and dates. 
  * Sort the Excel sheet by Donor Name, then by ACCN-Sam and then by Higher Geography and Specific Locality.
  * Identify inconsistencies in each cluster of accession numbers and correct or make notes accordingly. 
  * There may be some FICs which have no other data than a very very specific locality, and maybe a date and donor. In these cases, record the best possible guess for the record's accession number in the ACCN-Sam column, flag the record, and make a note in the remarks about how the accession number was determined.
  
### Process 6: Final Checks and Prepping Data for Reintegration into the Master Spreadsheet
Finally, it is necessary to ensure as many unidentified entries as possible have information with them. 

  * Sort the Excel sheet by Donor one more time and try to match up any ?'s or FICs using the same criteria as Process 4
  * Ensure every entry with ID information (ACCN number, donor name, agency) has been checked with the catalog data and has a confirmation value (Not Confirmed or Confirmed). There should be no entries that need to be "Checked" with the data.
  * Ensure that all flagged entries have information in the remarks about why they were flagged. This is especially important for any FIC's which were identified, because there is no other way to follow the logic used to identify it.
  * All Done!
  
### Process 7: Reintegrating Accession Matching data into the Master Spreadsheet
Data from the process described above must be re-integrated into the master malacology data. This was done by pulling in information based on the unique ID of each row. Data from the accession matching overwrote data in the master spreadsheet, and provenance is noted in column *remarks - accession*. These remarks were standardized. A "[?]" beginning the *remarks - accession* column indicates that this row was not evaulated during the accession matching process described above (likely because the record did not have enough data to even attempt to match). "[unconfirmed]" in the column *ACCN* indicates that an accession number was assigned but uncertainty remains. These should be further evaulated before migrating to Arctos.

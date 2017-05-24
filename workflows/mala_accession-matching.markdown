# Accession Matching (malacology)
## For cleaning and cross-referencing inventory data between Arctos, inventory data, and cleaned catalog data

The goal of this project is to identify inventoried specimens associated with existing accession numbers. The inventory data used in this project has not yet been cleaned or cross-referenced with the catalog data. As such, there are many errors and holes in the data. In order to efficiently and accurately identify the largest number of inventoried specimens, you will first have to clean various data fields and cross reference the inventory data with information on Arctos and in the cleaned catalog data.

### Background Information

The original spreadsheet used for this project was the Mala_Master_2017-03-03 Excel spreadsheet on the museum's L server. In addition, relevant data already uploaded to Arctos was put into Google Refine. 

[Offer a step-by-step list of processes you took before the data underwent this process]

### Process 1: Accessing and maintaining the spreadsheet
Firstly, the master spreadsheet was saved as a new file so that changes could be more easily tracked. In a separate folder, save a copy of the Mala_Master spreadsheet as "Mala_AccessionsMatching_YYYY-MM-DD", with the day's date at the end. The file was saved as a new Excel sheet every workday with the current date.

Several columns were needed in the Excel spreadsheet in order to keep track of progress, new data, and possible issues with existing data. These columns were kept together for more efficient sorting by the technician. New columns include:

  * "Best Guess" or determination columns, which will contain details about confirmed or possible accession numbers, donors, agencies, and/or dates and locality. All but the latter two were used in this project. These columns were called "ACCN-Sam", "Donor (Standard)/Best Guess (FLAG)", and "Agency (Standard)/Best Guess (FLAG)".

  * Progress tracking columns, which were used as a record of progress in matching the spreadsheet data to other data sources. These were titled "Compared to ARCTOS in Refine?" and "Checked with Catalog"

  * "Degree of confidence" or task columns. These columns were initially used as reminders of required actions for each accession entry. However, it was found that using a simpler system of Flags (in "Flags- unable to confirm") and actions (No, Check, and Done in "ACCN confirmed?") was much more effective at highlighting potential issues and confidence levels in accession number designations.

  * New data for Arctos. In a few cases, donor and received date information was found in the spreadsheet but not on Arctos. This column can be used to store this kind of data for bulk corrections in Arctos to be made at any stage of the project.

  * A remarks column, for catching any extra data or pertinent observations throughout each phase.

One of the other phases in this project involved comparing the accessions data to cleaned catalog data. While this step occurred near the end of the project in order to maintain an efficient workflow, it would have been helpful to see what other sources of data would become available. As such, a few other columns should be included in the new spreadsheet, adjacent to the equivalent accessions columns:

  * Catalog numbers (CAT NUM) which contains the catalog number (or FIC if unknown) for each entry

  * ACCN numbers from catalog book (Catalog Book ACCN) which lists the accession numbers from the catalog data. These may or may not match the inventory data, but proved useful in correcting and identifying accessions at the end of the project.
  
  * Received from and Collector (Catalog Books Received From and Catalog Books COLLECTOR_AGENT_1) for relevant donor data. This also proved useful in identifying accessions.

  * Date columns (VERBATIM_DATE, BEGAN_DATE, END_DATE). Often the only source of date information is in the catalog books. This can help distinguish between two otherwise identical accessions.

Both sets of columns were darkened for more efficient sorting and tabulation.



### Process 2: Cleaning the data

Much of the initial data was not standardized, meaning there were many typos and no efficient methods to sort in either Excel or Refine. 




### Process 3: Using Google Refine to confirm data and find easy accession matches




### Process 4: Final accessions matching

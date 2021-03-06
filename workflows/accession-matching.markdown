# Accession Matching

The goal of this process is to associate inventoried malacology and entomology specimens with existing accession numbers where the accession information had previously been unknown.

## Preparing a working copy of accession records

All CHAS accession records are maintained in Arctos. These records originated from transcribed accession books, transcribed accession cards, and transcribed (where necessary) accession paperwork. Prior to beginning the accession matching process for the malacology and entomology collections, staff verified that all known accessions relevant to these collections were represented in Arctos.

For the malacology collection, [@ekrimmel](https://github.com/ekrimmel) downloaded a subset of CHAS accessions from Arctos containing anything with "mala%" or "inv%" in the *Nature of Material* field. These were used as [an OpenRefine dataset](../working-files/Mala_ACCNArctos_2017-05-23.csv) where the project technician could track whether an accession had shown up in the inventory data or not by tagging accessions as either "done" or "done-not found in spreadsheet."

For the entomology collection, [@ekrimmel](https://github.com/ekrimmel) downloaded a subset of CHAS accessions from Arctos containing anything with "ento%" or "inv%" in the *Nature of Material* field. These were used as an OpenRefine dataset for the purposes of this process.

## Preparing the working spreadsheet (malacology)

Malacology work was conducted by [@samuelhowes24](https://github.com/samuelhowes24) using partially-cleaned specimen inventory data from *Mala_Master_2017-03-03.csv*.

> We used partially-cleaned inventory data because our time was constrained and we needed to have multiple staff working simultaneously on different processes; however, in the future we would save this accession matching process to do AFTER the [original catalog book matching](original-catalog-book-matching.markdown), which added a significant amount of information to our inventory data.

*Mala_Master_2017-03-03.csv* was combined with Arctos accession records using OpenRefine wherever the inventory data had an existing accession number. This dataset was then formatted as [an Excel spreadsheet](../working-files/Mala_ACCNMatch_2017-05-23.xlsx) to facilitate efficient work. Several columns were added to track progress, new data, and possible issues with existing data. These columns were:

  - "Best Guess" or determination columns, which contained details about confirmed or possible accession numbers (*ACCN-Sam*), standardized donor (*Donor (Standard)/Best Guess (FLAG)*) and agency names (*Agency (Standard)/Best Guess (FLAG)*), and reformatted locality information where necessary.

  - A progress-tracking column called *Compared to ARCTOS in Refine?*.

  - Degree of confidence/task columns, which used a simple system of flags (in *Flags- unable to confirm*) and actions ("No," "Check," or "Done" in *ACCN confirmed?*) to highlight potential issues and confidence levels in accession number designations.

  - A column to track new data for Arctos. In a few cases, donor and receiving date information was found in the inventory spreadsheet but had not been present on Arctos. This information was stored in the column temporarily and later updated directly in Arctos.

  - A remarks column, for catching any extra data or pertinent observations made by the project technician.

## Confirming existing accession numbers (malacology)

Specimen rows with existing accession numbers had Arctos accession information pulled into the spreadsheet using OpenRefine. The accession data from Arctos was briefly compared against the specimen data in Excel to confirm that the accession number listed during the inventory was correct.

## Identifying new accession matches (malacology)

The Excel spreadsheet and OpenRefine dataset were used simultaneously to  identify matches between inventoried specimens (in Excel) and Arctos accessions (in OpenRefine). OpenRefine facilitated faceting while Excel allowed the project technician to use visual flags like color, and to enter single-cell data more quickly.

The technician attempted to match up specimens to accession numbers using information about the donor, the receiving date, the locality, and the taxonomy, as shown in the table below. When at least three of these categories matched between a specimen record and an accession record, the accession number was entered into the Excel spreadsheet and the row marked "done." When at least two of these categories matched, the accession number was entered into the Excel spreadsheet and the row marked "check." If only one of these categories matched, no accession number was entered into the Excel spreadsheet and the row was marked "no."

| Information | Columns in specimen data (Excel) | Columns in accession data (OpenRefine) |
| --- | --- | --- |
| DONOR | Received From, Donor (Standard)/Best Guess, Agency (Standard)/Best Guess, Collector_Agent | received_from |
| DATE | Verbatim_Date, Began_Date, Ended_Date | received_date |
| LOCALITY | Higher_Geog, Spec_Locality | nature_of_material, remarks |
| TAXONOMY | Family, Genus, Species, Subspecies | nature_of_material |

Specimens marked "check" were reviewed again and either confirmed with further research, or if unable to be resolved, then left with notes from the project technician documenting his research and decision.

Several issues were encountered, including:

  - Because the specimen inventory data being used in this process was not yet fully cleaned, much of the information was not as standardized as it needed to be for effective sorting in Excel, e.g. agent names were often formatted differently for the same person. The project technician did quick pass-throughs to clean up information as necessary.

  - In some cases, donor agents did not match between the Arctos accession record and the inventoried specimen data. These records were flagged and additional research done to confirm or otherwise explain. Where confirmation was impossible, the project technician left notes documenting his research and decision.

  - In cases where multiple accession numbers were applied to the same specimen these rows were flagged and researched further, with notes documenting any research and decision.

## Reintegrating accession matching data into master data (malacology)

Data from the process above was reintegrated into the master malacology data by pulling in relevant spreadsheet columns (*ACCN-Sam*, *ACCN confirmed?*, *Flags - unable to confirm*, and *Remarks*) based on the unique ID of each row. The new data was reviewed a final time before it overwrote data in the master, with data provenance and project technician notes standardized and recorded in the catalog record remarks.

The standardized data provenance categories are:

- "Accession number listed in inventory spreadsheet prior to 2017 Arctos migration" (n=8974)
- "Accession number matched to specimen during 2017 Arctos migration process" (n=2095)
- "Unable to match to specific accession during 2017 Arctos migration process" (n=4237)

Many of the specimens in the malacology inventory data have very sparse collecting and receiving information, and we expected having a high percentage of specimens that we were unable to match to accession information. Of the 2095 specimen records with accession numbers matched via this process, 558 remain unconfirmed, but will still be migrated to Arctos under the unconfirmed accessions (with clear documentation of uncertainty). Accessions exist independently from specimens in Arctos and we feel that making a connection, even where it is uncertain, will lead to better data accuracy than leaving our research hidden in remarks. If, at a later date, someone determines that an accession has been incorrectly applied to a specimen they can easily fix that in Arctos.

## Accession matching process for entomology datasets

Entomology was treated differently from malacology because the data had significantly less identifying information, and the liklihood of being able to match specimens to exact accession records was low. Instead, each entomology subdiscipline was evaluated for accession matches based on collector/donor and date, where known.

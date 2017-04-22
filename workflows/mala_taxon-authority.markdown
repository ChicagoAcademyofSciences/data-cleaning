# Taxon Authority (malacology)

## Step 1, Consolidating original taxonomic data

## Step 2, Synonymizing with valid taxonomy

### group (n=)

| Priority	| Group | Source	| # names matched | % total matched |
| :---: | --- | --- | ---: | ---: |
| --- | --- | --- | --- | --- |

## Step 3, Using the taxon authority to clean specimen data

The malacology inventory dataset can be compared against the taxon authority using Open Refine to match original names to their current, valid counterpart. All names from the taxon authorities have also been validated against Arctos and added as necessary.

WHAT ERICA HAS ALREADY DONE:
1.	Used Open Refine to identify any CHAS names existing in FMNH data (NAMolluscTaxa.csv emailed by Janeen on 12/16). Pulled in accepted names where FMNH has updated synonyms.
2.	Pulled unique names from CHAS MALA data. Matched these names against WoRMS, ITIS, Global Names, and Catalog of Life via Lifewatch Regional Portal’s taxonomic name resolution services. Uploaded results into Open Refine.
3.	Cross-referenced Lifewatch data with CHAS MALA taxon authority.
4.	Filled column ACCEPTED TAXON by priority ranking (see README spreadsheet)
5.	If there is a value in “try new taxon? The information needs to be verified because it is based on abbreviations!
6.	EK researched abbreviated genus names within the context of this dataset
7.	EK matched against MolluscaBase. For any ambiguous names, EK selected one option but it may not be the correct option! These names need to be revisited by someone who can better determine, but at the very least it links our specimen to a valid taxon.
8.	Priority: MolluscaBase, WoRMS, FMNH, ITIS

EMAILS FOR CONTEXT

From Erica RE unique taxa names from the CAS collections. A few notes:
	The first column (TAXON) is a concatenation of the most specific classification available. This column is locked because I am using it as a primary key to merge edits you make back into our data.
	Edit any of the other columns where you see fit. You do not need to mark where you make changes.
	Multiple authors or synonyms are separated by a slash (/).
	This data has not been cleaned. Higher taxonomy is not always filled in, and there are definitely spelling mistakes and otherwise incorrect information. If it makes more sense to run this list of names against a taxonomic authority you already have, e.g. whatever you use in EMu or Symbiota, I can do that and we may be able to lighten the manual clean-up workload.
	On the second tab of the spreadsheet is a count of how many specimens use each unique name. More for your curiosity than anything else.

Dear all,

We want to fix the names in our databases with the least possible effort and the highest possible accuracy. Since FMNH has a very large number of taxonomic names for North American terrestrial and freshwater mollusks already in its EMu database, and a lot of these names have been evaluated with recent expertise (Jochen), I suggest the following workflow.

Janeen, could you generate a simple list from EMu with our FMNH North American Mollusk names, gastropoda and Bivalvia, with family names, separate by class: Gastropoda and Bivalvia separated. If I understand EMu correctly, that is not difficult (Janeen correct me if I am wrong).

We send this list to Erica, and she just checks the names she has on her spread sheet. She eliminates all the matches and then just sends us the mismatches. Then we just deal with the mismatches. Here, Liz may be able to advance the work, since she has done recent data cleaning as well. The CAS mollusk name spread sheet is attached so that everybody can look at it.

Please let me know if this is problematic, otherwise, forward as a first step the species name list (with genus, family and class) to Erica.

Happy Holidays everyone.
Best
Petra

Hi Erica,

Attached please find a spreadsheet of our North American land snails and fresh water bivalve taxa.  I've included fields to indicate whether the species is currently accepted, if not what the accepted name is and the Original name if known.  This is still a work in progress so things may change.  I have not included fresh water snails as those have not yet been revised.  Let me know if you have any questions.

Best,
Janeen

# data-cleaning
This repository contains documentation, scripts, and look-ups related to cleaning inventory specimen data in preparation to migrate to Arctos. The [data crosswalk](Arctos_DataCrosswalk.xlsx) and [data dictionary](Arctos_DataDictionary.xlsx) spreadsheets are two extremely helpful files to reference if you are trying to figure out how inventory data appears in Arctos, or as a guide to migrating future datasets.

The [/backups](/backups) directory contains old copies of look-up files.

The [/loaded-data](/loaded-data) directory contains a copy of the inventory data file that was loaded to Arctos via the bulkloader. These files are also archived on the Collections server in their respective discipline directories. This directory also includes any bulkloaded updates to data already on Arctos and copies of additional new aquisitions bulkloaded to Arctos.

The [/lookups](/lookups) directory contains the most up-to-date lookup for accessions, agents, geography, and storage (part) locations. These files should be used while cleaning inventory data to save time and ensure consistency.

The [/refine-scripts](/refine-scripts) directory contains JSON snippets to use in OpenRefine while cleaning data.

The [/taxon-authorities](/taxon-authorities) directory contains backups of the taxon authorities we worked on under the NSF InvertEBase PEN grant.

The [/workflows](/workflows) directory contains descriptive workflows of processes done during the NSF InvertEBase PEN grant. THIS IS A VERY USEFUL PLACE FOR INFORMATION.

The [/working-files](/working-files) directory contains an archive of assorted files that are referenced by workflows.

[Issues for this repository](https://github.com/ChicagoAcademyofSciences/data-cleaning/issues) are a to-do list of what needs to be done related to data cleaning and migration into Arctos.

The [wiki](https://github.com/ChicagoAcademyofSciences/data-cleaning/wiki) for this repository is another VERY USEFUL PLACE FOR INFORMATION. In the wiki we recorded notes on the migration process. These notes are a hodge-podge of information that didn’t fit elsewhere.

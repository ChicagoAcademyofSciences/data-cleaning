## CHAS:Egg data quality control
Workflow written by Loyola Univeristy IES Intern, Kirsten Hammons, April 2020.
***

### Objective
Following the resolution of egg event duplicates (see [Duplicate egg event QC instructions](https://github.com/anna-chinn/image-repo/files/4618176/Egg.event.QC.instructions.pdf)), this is workflow was used to verify and georeference remaining egg events.

***

1. Specimen search.
     1. Collection = CHAS:Egg.
     1. Catalog Number = copy and paste catalog numbers from Excel document.
     1. Verification status = unverified.
     1. State/Province = search by state to familiarize yourself with a specific area- gets easier to georeference when you know the area better!
2. The list that is returned contains specimens that still need to be inspected and verified.
3. The Location section on a specimen or catalog record describes the date and locality information associated with the specimen.
     1. There should be 1-2 yellow bounded (unverified) events.
     1. Click ‘Edit’.
4. Use the ‘Fork-Edit’ tool to edit the date/locality data.
     1. The data that is associated with the existing event will be pulled into the Fork-Edit.
     
![Picture1](https://user-images.githubusercontent.com/40321380/81735442-0ed90c00-9463-11ea-8104-fd985cc44821.png)

5. Set determiner and verification status.
    1. Event Determiner = you, today.
    1. Verification Status = accepted.
    1. Verified By = you, today.
    1. ‘Me, Today’ button auto-fills with correct information.

![Picture2](https://user-images.githubusercontent.com/40321380/81735444-0f71a280-9463-11ea-8f2f-18cf6f04229d.png)
    
6.	Using the original specimen label, verify the ‘Verbatim Date’ and ‘Verbatim Locality’.
    1. Add a ‘Collecting Event Remark’.
    1. i.e. “Verbatim locality and date verified per original specimen labels [khammons 15 April 2020]”.


![Picture3](https://user-images.githubusercontent.com/40321380/81735447-100a3900-9463-11ea-93d5-a622e43cbb1e.png)

7. Interpret ‘Verbatim Locality’ into ‘Specific Locality’.
    1. Make sure that the Specific Locality, with Higher Geography, Elevation, and Depth combined represent all information given in the Verbatim Locality.
8. Georeference based on Specific Locality using GeoLocate.
    1. Add ‘Locality Remarks’ based on your thought process for the georeference, indicate any other maps used.
        1. i.e. “Georeferenced at the midpoint of Mission Valley per 1930 La Jolla USGS Topo [khammons 15 April 2020].
    1. Add the name of the map to ‘Georeference Source’.
    1. Change ‘Georeference Protocol’ to MaNIS Georeferencing Guidelines.

![Picture4](https://user-images.githubusercontent.com/40321380/81735452-10a2cf80-9463-11ea-9391-612e0d8ea529.png)

9. Exceptions to Step 8:
    1. If you have determined it should not be georeferenced, click ‘De-Georeference’ in specimen event fork-editing page.
        1. Explain why this was decided in the remarks.
    1. If no location found by GeoLocate:	
        1. Search internet for alternate spelling/name change/etc.
        1. Look through historical topo maps- could be a historical name of a place that does not show up on modern maps.
        1. Verify assumptions with sources or collections staff.
        1. If in doubt- always ask!
    1. If a different name is assumed to be correct, change Specific Locality to reflect this change.
        1. Explain your assumptions in the ‘Locality Remarks’.
        1. Restart georeference with new Specific Locality.
10. Select ‘unaccept current specimen_event; add Event with these data’ from the ‘on save…’ drop down menu.
        1. This will create a new event with the updated and corrected information.
    
![Picture5](https://user-images.githubusercontent.com/40321380/81735455-113b6600-9463-11ea-9cf4-f80ab41aa80c.png)

11. Unaccept remaining events with your name and today’s date.

![Picture6](https://user-images.githubusercontent.com/40321380/81735456-11d3fc80-9463-11ea-8718-92b1f2d01a59.png)

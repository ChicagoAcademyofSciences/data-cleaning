## Mammalogy collection (CHAS:Mamm) event verification and georeferencing
Workflow written by Loyola University IES Intern, Kirsten Hammons, April 2020.
***
### Objective
To update Arctos collecting events for mammal records where verbatim date and locality fields read _[transcribed directly into verbatim fields]_. Then, verify that existing coordinates match the specimen's specific locality. Update or add georeferences when needed.
***

1.	Open the last saved version of Mamm_verbatim_verification.xlsx.
2.	Save a copy of the Excel document with today’s date to keep record of when specimen data was changed.
3.	Sort the Excel document by the County column. The specimens with the same locality should now be grouped together or close to it. 
4.	Search for each specimen in Arctos:
    1.	Collection = CHAS:Mamm.
    1.	Catalog number= found in Excel document.
    1.	Tip! Quickly go to the next catalog number in the list by changing the number at the end of the URL to the desired catalog number
	(http://arctos.database.museum/guid/CHAS:Mamm:2738).
5.	Within a specimen record, open the Locality tab and use the ‘Edit Event’ button to update the verbatim locality and date (Figure 1).
    1.	Double check that the ‘Began Date/Time’ and ‘Ended Date/Time’ fields match verbatim date.
    1.	Add a ‘Collecting Event Remark’ i.e. “Verbatim date and locality verified per specimen label by Paul Francuch, 2019 [khammons 18 March 2020]” for more information.

Figure 1: ‘Edit Event’ button in black box.
![Picture1](https://user-images.githubusercontent.com/40321380/81742549-47321780-946e-11ea-94c4-7471c7626157.png)

6. Once verbatim information is correct, click ‘Edit Locality’ to verify or edit the georeference (Figure 2).
    1. Make sure the ‘Specific Locality’ and ‘Higher Geography’ capture all the information in the ‘Verbatim Locality’.
    1. If it is already georeferenced, check with ‘Modify Coordinates/Error with GeoLocate’.
        1. If sufficient, leave it as is.
        1. Edit as needed, leaving “Locality Remarks’ to document the changes.
            1. Do not remove remarks that are present, append with semicolon.
        1. If the Verbatim Locality is not specific enough or cannot be found, de-georeference by deleting the information in all fields related to the coordinates.
    1. Sometimes there is a locality that already exists in Arctos that better reflects the Verbatim Locality.
       1. Before creating a new Locality and georeferencing, search Arctos to make sure one doesn’t already exist.
       1. If there is a locality that already exists in Arctos that this event should be moved to, click ‘Pick New Locality for This Collecting Event’ on the ‘Edit Event’ page (Figure 2).
       1. Search for the locality by ID, found on the Locality tab of a specimen record that is already associated with that locality (Figure 3).

Figure 2: ‘Edit Locality’ and ‘Pick New Locality for This Collecting Event’ buttons on ‘Edit Event’ page.
![Picture2](https://user-images.githubusercontent.com/40321380/81742546-47321780-946e-11ea-9eb7-cfd52558fbad.png)

Figure 3: Where to find the Locality ID.
![Picture3](https://user-images.githubusercontent.com/40321380/81742544-46998100-946e-11ea-9379-872407a5b06c.png)


7. Once all the date and location data are correct, accept the event and mark it as updated in the Excel document.
    1. If there are multiple events associated with a locality that have been checked by you, accept them all at once using the form at the top of the ‘Edit Locality’ page.
       1. “accepted” by you, today.
       1. Where current verification status is “accepted” or “unverified”.
    1. Do not accept events that have already been unaccepted!
    1. If only some events associated with the locality are listed in the Excel document and the date/locality data has been checked and updated by you, accept only some events by clicking the list of all specimens associated with the locality (Figure 4).
       1. Click ‘Manage’, ‘Specimen Events’ (Figure 5).
       1. Select and remove all the events that you DON’T want to update verification (Figure 6).
       1. Update to ‘Accepted’ at the bottom.

Figure 4: Change verification status for multiple specimens, open list of all specimens associated with locality.
![Picture4](https://user-images.githubusercontent.com/40321380/81742543-46998100-946e-11ea-8cd6-219e0ef5ddb9.png)

Figure 5: Manage, Specimen Events to view all events associated with a locality.
![Picture5](https://user-images.githubusercontent.com/40321380/81742541-4600ea80-946e-11ea-8e42-29414022ca36.png)

Figure 6: Remove unaccepted and other unwanted events, change verification status to accepted.
![Picture6](https://user-images.githubusercontent.com/40321380/81742538-45685400-946e-11ea-89f7-6f0e011e4aec.png)

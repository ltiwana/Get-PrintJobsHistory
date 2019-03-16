# Get-PrintJobsHistory
## Retrieves Print Jobs history from Windows Print Server using Powershell

Are you looking to get information on what print jobs are sent to your Windows Print Servers? I was in the same situation, and soon I found out that all this information is available in the Windows Event Viewer.

So I built a small PowerShell script that can scrap the Event Viewer and make Print Jobs available in an object, table or report form.

This script will give you following details about print jobs:
* TimeCreate (Time of the print jobs)
* PrinterName (Name of the printer)
* UserName (User who sent the print job)
* ClientName (User's computer name)
* PrinterFQDN (Fully qualified domain name of the printer)
* JobSize (Bytes) (Size of the print job)
* NoOfPages (Number of pages printed)

## Output of Windows 2012 R2 Print Server:
### Table view
![alt text](/Media/img1.png)

### List view
![alt text](/Media/img2.png)


## Output of Windows 2016 Print Server:
### Table view
![alt text](/Media/img3.png)

### List view
![alt text](/Media/img4.png)

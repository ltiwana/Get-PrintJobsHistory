## Compatible with Serve 2016

# Search for printer job on a print server and display on the screen as a table
Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-PrintService/Operational';Id=307} | Select-Object -Property TimeCreated, @{Label='PrinterName';Expression={$_.Properties[4].Value}}, @{Label='UserName';Expression={$_.Properties[2].Value}}, @{Label='ClientName';Expression={$_.properties[3].value} }, @{Label='PrinterFQDN';Expression={$_.properties[5].value} }, @{Label='JobSize (Bytes)';Expression={$_.Properties[6].Value}}, @{Label='NoOfPages';Expression={$_.Properties[7].Value}} | ft

# Search for printer job on a print server and display on the screen as a LIST
# Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-PrintService/Operational';Id=307} | Select-Object -Property TimeCreated, @{Label='PrinterName';Expression={$_.Properties[4].Value}}, @{Label='UserName';Expression={$_.Properties[2].Value}}, @{Label='ClientName';Expression={$_.properties[3].value} }, @{Label='PrinterFQDN';Expression={$_.properties[5].value} }, @{Label='JobSize (Bytes)';Expression={$_.Properties[6].Value}}, @{Label='NoOfPages';Expression={$_.Properties[7].Value}} 


# Search for printer job on a print server and export to a csv file PrinterJobHistory.csv in current location
# Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-PrintService/Operational';Id=307} | Select-Object -Property TimeCreated, @{Label='PrinterName';Expression={$_.Properties[4].Value}}, @{Label='UserName';Expression={$_.Properties[2].Value}}, @{Label='ClientName';Expression={$_.properties[3].value} }, @{Label='PrinterFQDN';Expression={$_.properties[5].value} }, @{Label='JobSize (Bytes)';Expression={$_.Properties[6].Value}}, @{Label='NoOfPages';Expression={$_.Properties[7].Value}} | Export-Csv D:\printerjobs.csv -NoTypeInformation
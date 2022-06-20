$src = 'C:\Users\ms7180\Desktop\pasta01'
$dest = 'C:\Users\ms7180\Desktop\pasta02'
$log_file = "C:\Users\ms7180\Desktop\temp\Log_" + (Get-Date -UFormat "%Y_%m_%d_T_%H-%M-%S") + ".csv"
robocopy $src $dest /copyall /sec /R:3 /W:2 /tee /log:$log_file

$Outlook = New-Object -ComObject Outlook.Application
$Mail = $Outlook.CreateItem(0)
$Mail.To = "teste@domain.com"
$Mail.Subject = "Subject Title"
#$AttachmentPath1 = "C:\Users\ms7180\Desktop\temp\logfile.csv"
$mail.Attachments.Add($log_file)
$Mail.Body ="Informaion Body."
$Mail.Send()

$Files = Import-Csv -Path 'C:\test\files.csv'



foreach($Item in $Files)
{
    
   
   
    if($Item.FILEORFOLDER -eq 'ITSAFOLDER')
    {
    
        $ITemType = 'DIRECTORY'

    }

    elseif($Item.FILEORFOLDER -eq 'ITSAFILE')
    {
    
        $ITemType = 'FILE'

    }
   
 
    New-Item -Path $Item.DRIVE -Name $Item.NAME -ItemType $ITemType

    

}

$Files = Import-Csv -Path 'C:\test\files.csv'



foreach($Item in $Files)
{
    
   
   'Do you want to create a file or folder (y/n) ?'

   $answer =Read-Host
   
   if($answer -eq 'y')
   {
       
       if($Item.FILEORFOLDER -eq 'ITSAFOLDER')
       {
    
            $ITemType = 'DIRECTORY'

       }

       elseif($Item.FILEORFOLDER -eq 'ITSAFILE')
       {
    
            $ITemType = 'FILE'

       }
   
 
        New-Item -Path $Item.DRIVE -Name $Item.Name -ItemType $ITemType

    }

    else
    {


        'Ok we will not create '+ $Item


    }

}
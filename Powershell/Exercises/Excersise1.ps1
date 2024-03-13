<#
1.) Create a folder TestingPurpose and 3 Subfolders inside it SubFolder1, SubFolder2

-------------------------------------------------------------------------------------


New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\ -ItemType directory
New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder1 -ItemType directory
New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder2 -ItemType directory
New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder3 -ItemType directory
#>

<#
2.) Create some test files inside these folders:

TypeATest1.txt, TypeATest2.txt  … TypeATest50.txt into SubFolder1

TypeBTest51.txt, Purpose52Test2.txt … TypeBTest100 into SubFolder2

Needless to say that you have to use logic for creating these files. Not one by one

--------------------------------------------------------------------------------------



$NameA = "TypeATest"
$NameB = "TypeBTest"
$FileType = ".txt"
$count = 0

Do { 
    $count++; New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder1\ -Name  $NameA$count$FileType
    }
    While (
        $count -lt 50
    )


Do {
    $count++; New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder2\ -Name $NameB$count$FileType
    }
    While (
        $count -lt 100
    )
#>
$NameA = "TypeATest"
$NameB = "TypeBTest"
$FileType = ".txt"
$TextA = 1..50 | ForEach-Object{
    New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder1\ -Name $NameA$TextA$FileType
    }

$TextB = 51..100 | ForEach-Object{
    New-Item -Path C:\Scripts\Powershell\Exercises\TestingPurpose\SubFolder2\ -Name $NameB$TextB$FileType
}
<#
3.) Move all files which have an odd number in its name to SubFolder2

-------------------------------------------------------------------------------------

#>


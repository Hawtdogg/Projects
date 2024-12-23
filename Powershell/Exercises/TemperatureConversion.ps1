
[string]$GetTemperatureUnit = Read-Host "What is the current temperature unit do you want to convert? Enter F for Fahrenheit to Celsius. Enter C for Celsius to Fahrenheit."
[double]$GetTemperature = Read-Host "What is the temperature?"
$TemperatureUnit = $GetTemperatureUnit
$Temperature = $GetTemperature



if($TemperatureUnit -eq "F"){
    FahrenheitToCelsius
    Write-Host "The temperature is " $ConvertedTemperature " degrees Celsius."
}
elseif ($TemperatureUnit -eq "C"){
    CelsiusToFahrenheit
    Write-Host "The temperature is" $ConvertedTemperature "degrees Fahrenheit."
}

#Converts Fahrenheit to Celsius
function FahrenheitToCelsius{
    [double]$global:ConvertedTemperature = (($Temperature - 32) / 1.8) 
}

#Converts Celsius to Fahrenhiet
function CelsiusToFahrenheit{
    [double]$global:ConvertedTemperature = (($Temperature*1.8)+32)
}


function GetTemperature{
    [CmdletBinding()]
        param(
            [Parameter(Mandatory)]
            [String]$TemperatureUnit
        )

}
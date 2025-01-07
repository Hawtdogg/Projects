
[string]$TemperatureUnit = Read-Host "What is the temperature unit that you want to convert? Enter F for Fahrenheit to Celsius. Enter C for Celsius to Fahrenheit"
[double]$Temperature = Read-Host "What is the temperature?"

#Converts Fahrenheit to Celsius
function FahrenheitToCelsius{
    [double]$FahrenheitToCelsius = (($Temperature - 32) / 1.8)
    Write-Host "The temperature is $FahrenheitToCelsius degrees Celsius."
}

#Converts Celsius to Fahrenhiet
function CelsiusToFahrenheit{
    [double]$CelsiusToFahrenheit = (($Temperature * 1.8) + 32)
    Write-Host "The temperature is $CelsiusToFahrenheit degrees Fahrenheit."
}


if($TemperatureUnit -eq "F"){
    FahrenheitToCelsius
}
elseif ($TemperatureUnit -eq "C"){
    CelsiusToFahrenheit
}



<#
function GetTemperature{
    [CmdletBinding()]
        param(
            [Parameter(Mandatory)]
            [String]$TemperatureUnit
        )

}
#>
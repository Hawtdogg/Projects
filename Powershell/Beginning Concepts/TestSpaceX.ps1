function Test-SpaceX {
    [CmdletBinding()] #turns into adv. function
    param(
        [Parameter(Mandatory)]
        [Int32]$PingCount
    )
    Test-Connection spacex.com -Count $PingCount
    Write-Error -Message "It's a trap!" -ErrorAction Stop
}
try{Test-SpaceX -ErrorAction Stop} catch {Write-Output "Launch problem!" Write-Output $_}
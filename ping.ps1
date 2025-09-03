param (
    [Parameter(Mandatory=$true)]
    [string]$Device,
    [int]$Count = 4
)

function Test-Ping {
    param (
        [string]$Device,
        [int]$Count
    )

    ping -n $Count $Device
}

Test-Ping -Device $env:PING_DEVICE -Count $env:PING_COUNT
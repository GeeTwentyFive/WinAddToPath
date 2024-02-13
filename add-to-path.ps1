
if ($args.Count -ne 1) {

    Write-Output @"

USAGE:

$($MyInvocation.MyCommand.Name) <FULL_PATH>

"@

    exit
}


$_path = $args[0] + ";"

[Environment]::SetEnvironmentVariable(
    "Path",
    ([Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User)) + $_path,
    [EnvironmentVariableTarget]::User
)

Write-Output "`n`"$_path`" has been appended to PATH`n"
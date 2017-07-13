#
# New_HelloWorld.ps1
#
Function Get-HelloWorld{
[CmdletBinding()]
param(
	[Parameter(Mandatory=$True, HelpMessage="Username of the person or application running the script.")]
    [string]$name
	)
	$output = "Hello "
	$output += $name
	
	return $name


}


#region Main Block
$phrase1 = Get-HelloWorld -name "Fadi Salloum"

$phrase2 = Get-HelloWorld -name "Christopher Witcher"

Write-Verbose "$phrase1" -Verbose
Write-Verbose "$phrase2" -Verbose

#endregion

# Log the runbook initiator
Write-Output "Hello World" 
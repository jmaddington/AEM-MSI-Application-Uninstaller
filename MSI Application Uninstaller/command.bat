$script:name = $env:name

Write-Host Looking for apps with name $script:name

$apps = Get-WmiObject -Class Win32_Product|Select-Object Name, IdentifyingNumber|Where-Object -FilterScript {$_.Name -like $script:name}

Write-Host This is what I found $apps

foreach ($app in $apps) 
{
	$guid=$app.IdentifyingNumber
	$cmd = "msiexec.exe /qn REBOOT=SUPRESS /PASSIVE /X `"$guid`""
	Write-Host Uninstalling $app.Name using command
	Write-Host $cmd
	iex $cmd
}


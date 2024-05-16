function Add-ToPath{
	param(
		[string]$itemToAdd
	)
	if ($env:Path.Split(";") -NotContains $itemToAdd){
		$env:Path += ";" + $itemToAdd 
	}
}

function Test{
	param(
		[string]$itemToAdd
	)
	Write-Host $itemToAdd 
}


Export-ModuleMember -Function Add-ToPath
Export-ModuleMember -Function Test

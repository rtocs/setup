winget install BurntSushi.ripgrep.MSVC
winget install Neovim.Neovim
Copy-Item .ideavimrc $env:USERPROFILE


function add-to-path
{
	[Parameter()]
	[string]$itemToAdd
	!if ($env:Path -contains $itemToAdd){
		$env:Path += ";" + $itemToAdd 
	}
}

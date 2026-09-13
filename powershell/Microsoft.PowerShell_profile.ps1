##################
### Oh my posh ###
##################

$theme = "robbyrussell"
oh-my-posh init pwsh --config "$HOME\.omp-themes\$theme.omp.json" | Invoke-Expression

#################
### Fastfetch ###
#################

fastfetch

###############
### Modules ###
###############

Import-Module -Name Terminal-Icons
Import-Module -Name Microsoft.WinGet.CommandNotFound

###############
### Options ###
###############

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -HistoryNoDuplicates
Set-PSReadLineOption -MaximumHistoryCount 5000

##################
### Key remaps ###
##################

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

###############
### Aliases ###
###############

function notes {
	Set-Location "$env:USERPROFILE\Meine Ablage\Vaults\Notes"
}

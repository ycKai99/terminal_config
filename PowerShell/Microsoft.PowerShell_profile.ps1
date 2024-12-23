function Invoke-Tere() {
    $result = . (Get-Command -CommandType Application tere) $args
    if ($result) {
        Set-Location $result
    }
}
Set-Alias te Invoke-Tere

# init starship prompt
Invoke-Expression (&starship init powershell)

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-Alias ls lsd

function lsl {
    lsd -l @Args
}

# open yazi
Set-Alias ya yazi

# open nvim 
Set-Alias nm nvim

# open scoop
Set-Alias sc scoop

function sci {
    scoop install @Args
}

function scui {
    scoop uninstall @Args
}

function sfst {
    sfsu status @Args
}
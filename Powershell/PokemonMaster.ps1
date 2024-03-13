$PokemonCaught = Read-Host -Prompt "How many Pokémon have you caught?"
If ($PokemonCaught -eq 908) {
    Write-Host "You're a Pokémon Master!"
    } Else {
        Write-Host "Go catch more Pokémon!"
    }
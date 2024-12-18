$PokemonNum = 300
If($PokemonNum -ge 1 -and $PokemonNum -le 151) {
    Write-Host "Your Pokémon is from Kanto!"
} Elseif ($PokemonNum -ge 152 -and $PokemonNum -le 251) {
        Write-Host "Your Pokémon is from Johto!"
    }
  Elseif ($PokemonNum -ge 252 -and $PokemonNum -le 386) {
        Write-Host "Your Pokémon is from Hoenn!"
    }
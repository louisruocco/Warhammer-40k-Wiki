function Randomise {
    param (
        [array]$item
    )

    return $item | Sort-Object {Get-Random}
}

$factions = @(
    "Adeptus_Custodes", 
    "Grey_Knights", 
    "Blood_Angels", 
    "Tzeentch", 
    "Khorne",
    "Nurgle", 
    "Primarch", 
    "Deathwatch", 
    "Adeptus_Mechanicus", 
    "Necrons", 
    "Tyranids", 
    "Space_Wolves", 
    "Space_Marines", 
    "Orks", 
    "Dark_Angels", 
    "Ultramarines"
)

$getFaction = foreach ($faction in $factions){
    $faction
}

$selectedFaction = randomise -item $getFaction | Select-Object -First 1

$url = "https://warhammer40k.fandom.com/wiki/$selectedFaction"
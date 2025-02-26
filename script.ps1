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

$test = foreach ($faction in $factions){
    $faction
}
randomise -item $test | Select-Object -First 1
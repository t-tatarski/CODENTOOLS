# Skrypt PowerShell: Kopiowanie najnowszych zdjęć z karty SD

# Ścieżka do folderu ze zdjęciami na karcie SD
$sdCardPath = "E:\DCIM"

# Sprawdź, czy ścieżka istnieje
if (!(Test-Path $sdCardPath)) {
    Write-Host "Nie znaleziono folderu ze zdjęciami na ścieżce: $sdCardPath"
    exit
}

# Pobierz zdjęcia z ostatniej godziny (pliki JPG, PNG itd.)
$now = Get-Date
$photos = Get-ChildItem -Path $sdCardPath -Recurse -Include *.jpg, *.jpeg, *.png, *.heic | Where-Object {
    ($now - $_.LastWriteTime).TotalMinutes -le 60
}

if ($photos.Count -eq 0) {
    Write-Host "Brak nowych zdjęć z ostatniej godziny do skopiowania."
    exit
}

# Zapytaj o podkatalog docelowy
$targetSubfolder = Read-Host "Podaj nazwę podkatalogu docelowego (w folderze Obrazy)"
$destinationPath = Join-Path -Path ([Environment]::GetFolderPath("MyPictures")) -ChildPath $targetSubfolder

# Upewnij się, że katalog istnieje
if (!(Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath | Out-Null
}

# Kopiuj zdjęcia
foreach ($photo in $photos) {
    Copy-Item -Path $photo.FullName -Destination $destinationPath -Force
    Write-Host "Skopiowano: $($photo.Name)"
}

# Zapytaj o usunięcie zdjęć z karty SD
$deleteAnswer = Read-Host "Czy chcesz usunąć te zdjęcia z karty SD? (t/n)"
if ($deleteAnswer -eq 't') {
    foreach ($photo in $photos) {
        Remove-Item -Path $photo.FullName -Force
        Write-Host "Usunięto: $($photo.Name)"
    }
} else {
    Write-Host "Zdjęcia nie zostały usunięte."
}

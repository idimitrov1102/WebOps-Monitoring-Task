$ParentFolder = "C:\Program Files\ParentFolder"
New-Item -ItemType Directory -Path $ParentFolder -Force 

$subfolders = @("red", "blue", "green") 

foreach ($subfolder in $subfolders) {
    $folderPath = Join-Path -Path $ParentFolder -ChildPath $subfolder
New-Item -ItemType Directory -Path $folderPath -Force
}

$colors = @("red", "blue", "green")

    foreach($color in $colors){
$folderPath = Join-Path -Path $ParentFolder -ChildPath $color
}

for ($i = 1; $i -le 50; $i++){
    $fileNumber = "{0:D2}" -f $i
    $fileName = "$color" + "File$fileNumber.txt"
    $filePath = Join-Path -Path $folderPath -ChildPath $fileName
New-Item -ItemType File -Path $filePath -Force
}


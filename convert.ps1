$fileName = Read-Host 'Enter the file name (with extension)'
$fontName = Read-Host 'Enter the desired font name'

# Trim spaces
$trimFileName = $fileName -replace '\s', ''
Rename-Item -Path $fileName -NewName $trimFileName

# Load XML
Set-Location "./tools"
$inputXml = [xml](Get-Content "input.xml")

# Edit font attributes
$inputXml.movie.frame.library.font.SetAttribute("id", $fontName)
$inputXml.movie.frame.library.font.SetAttribute("name", $fontName)
$inputXml.movie.frame.library.font.SetAttribute("import", "../$trimFileName")

$inputXml.Save("./tools/input.xml")

# Convert the font to GFX
./swfmill.exe simple input.xml output.swf
./gfxexport.exe output.swf | Out-Null

Remove-Item "output.swf"
Move-Item -Path "output.gfx" -Destination "..\output.gfx"
Rename-Item -Path "../output.gfx" -NewName "$fontName.gfx"

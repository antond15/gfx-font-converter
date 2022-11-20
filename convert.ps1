# Get user inputs
$filePath = Read-Host "Drag and drop the font file here (and confirm with enter)"
$fontName = Read-Host "Enter the desired font name (leave blank for default)"

$filePath = $filePath -replace "\\", "/"
if(-not($fontName)) {
	$fontName = [System.IO.Path]::GetFileNameWithoutExtension($filePath)
}

# Load XML
Set-Location "./tools"
$inputXml = [xml](Get-Content "input.xml")

# Edit font attributes
$inputXml.movie.frame.library.font.SetAttribute("id", $fontName)
$inputXml.movie.frame.library.font.SetAttribute("name", $fontName)
$inputXml.movie.frame.library.font.SetAttribute("import", $filePath)

$inputXml.Save("./tools/input.xml")

# Convert the font to GFX
./swfmill.exe simple input.xml output.swf
./gfxexport.exe output.swf | Out-Null

# Clean up and move the result
Remove-Item "output.swf"
Move-Item -Path "output.gfx" -Destination "../output/output.gfx"
Rename-Item -Path "../output/output.gfx" -NewName "$fontName.gfx"
Set-Location "../"

# Finished
Write-Host "`nConversion complete! The exported font is now available in the output folder."
Read-Host "Press Enter to exit"

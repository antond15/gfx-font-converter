## How to use
- Run the `convert.ps1` script
- Drag and drop your font file to the PowerShell window
- Confirm and enter prompt details
- Add the new `.gfx` file from `output` folder to your script's `stream` folder
- Register the font in-game

##### Example of how to register a custom font
```lua
RegisterFontFile('Arial') -- File name without file extension
local fontId = RegisterFontId('Arial') -- Font name you entered in the convert script
local fontText = '<font face="Arial">This text will have the Arial font</font>'
```

## Credits
- [swfmill.exe](https://github.com/djcsdy/swfmill) ([direct download](https://www.swfmill.org/releases/swfmill-0.3.6-win32.zip))
- [gfxexport.exe](https://docs.unrealengine.com/udk/Three/DownloadsPage.html) ([direct download](https://docs.unrealengine.com/udk/Three/rsrc/Three/DownloadsPage/gfxexport.zip))

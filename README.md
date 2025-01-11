## How to use
1. Run the `convert.ps1` script
2. Drag and drop your font file to the PowerShell window
3. Confirm and enter prompt details
4. Add the new `.gfx` file from `output` folder to your script's `stream` folder
5. Register the font in-game

#### Example of registering the custom font in game
```lua
RegisterFontFile('Arial') -- File name without file extension
local fontId = RegisterFontId('Arial') -- Font name you entered in the convert script
local fontText = '<font face="Arial">This text will have the Arial font</font>'
```

## Common issues

### PowerShell closes automatically after running it
To fix that you need to change the execution policy.
1. Open PowerShell **as Administrator**
2. Type `Set-ExecutionPolicy RemoteSigned`
3. Type `Y` to confirm

### "FreeType does not like"...
This is caused by having a whitespace in the font file path.  
Only way you can fix this is by moving the font file to another folder, without a whitespace in it's path.  
More info can be found in [issue #1](https://github.com/antond15/gfx-font-converter/issues/1).

## Credits
- [swfmill.exe](https://github.com/djcsdy/swfmill) ([direct download](https://www.swfmill.org/releases/swfmill-0.3.6-win32.zip))
- [gfxexport.exe](https://docs.unrealengine.com/udk/Three/DownloadsPage.html) ([direct download](https://docs.unrealengine.com/udk/Three/rsrc/Three/DownloadsPage/gfxexport.zip))

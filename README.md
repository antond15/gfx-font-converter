## How to use
- Place your font file inside this folder
- Run the `convert.ps1` script
- Enter the prompt details
- Add the new `.gfx` file to your script's stream folder
- Register the font in-game

```lua
RegisterFontFile('rubik')              -- File name without file extension
local fontId = RegisterFontId('Rubik') -- Font name you entered in the convert script
local fontText = '<font face="Rubik">This text will have the Rubik font</font>'
```

## Credits
- [swfmill.exe](https://github.com/djcsdy/swfmill) ([direct download](http://www.swfmill.org/releases/swfmill-0.3.6-win32.zip))
- [gfxexport.exe](https://docs.unrealengine.com/udk/Three/DownloadsPage.html) ([direct download](https://docs.unrealengine.com/udk/Three/rsrc/Three/DownloadsPage/gfxexport.zip))

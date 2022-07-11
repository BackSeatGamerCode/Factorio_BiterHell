# Factorio_BiterHell
This mod spawns biters. LOTS of biters! Between 1 and 100 to be exact. Enjoy!

## Installation
This SDK requires [BackSeatGamer Reverse Proxy](https://github.com/BackSeatGamerCode/ReverseProxy) to be running in `RCON Broadcast` Mode. The selected format makes no difference. By default, port 29175 will be used.

Integration will only work if this mod is run on a server. You should never attempt to run two instances of Factorio on your machine if both instances are installed, and write save/mod data to the same location.
This is a surefire way to get file corruption.

To get around this, download the Windows .zip version if you are running Windows. You can think of the server as a containerized version this way. If you run the executable (located under `bin/x64`) and the executable is an installer, you have downloaded the wrong thing. It should launch an instance of Factorio on run.

**IMPORTANT FOR STEAM USERS**: You can click the `Log In` link, and then the button to log in with Steam. This will allow you to download another copy without having to pay again.

Once you have your new Factorio instance downloaded, move it to a place you will remember. This folder will contain everything, including mods and save (unlike the installed version which saves that to `%appdata%`). Finally, start a new game and save it, and remember the name. I generally like to use the name `Server`, however, the name is up to you. Once the game is saved, close Factorio.

Next, locate the `bin/x64` (`x64` may be different depending on your Operating System and Architecture) folder in terminal (or create a bash/batch script) and run the following command
```bash
factorio.exe --start-server [save name].zip --rcon-port 29175 --rcon-password factory
```

If you change the port from `29175` or the password from `factory`, remember this as you will need it when we get to the BackSeatGamer step.

If you are using Windows PowerShell, you may need to replace `factorio.exe` with `.\factorio.exe` or `./factorio.exe`.

The server does not generally take long to start up. The following lines are the last few lines of the console output you will see when startup is complete:
```
   2.529 Hosting game at IP ADDR:({0.0.0.0:34197})
   2.530 Info HttpSharedState.cpp:54: Downloading https://auth.factorio.com/generate-server-padlock-2?api_version=4
   3.080 Info AuthServerConnector.cpp:78: Obtained serverPadlock for serverHash (Aa9jlOPnrQTw2fx2n340Z0JaJcmLcrAK) from the auth server.
   3.082 Info ServerMultiplayerManager.cpp:796: updateTick(47567) changing state from(CreatingGame) to(InGame)
   3.084 Info RemoteCommandProcessor.cpp:130: Starting RCON interface at IP ADDR:({0.0.0.0:29175})
```

The first line in this group, `2.529 Hosting game at IP ADDR:({0.0.0.0:34197})` provides information on how to connect to the server. To join, simply run your normal/installed instance of Factorio, and select "Multiplayer" from the main menu. Click "Connect to Address", and enter `127.0.0.1:[port]`, where `[port]` is the five digit number after the colon in the line. In my case, this number is `34197`, so I would enter `127.0.0.1:34197`.

You will not be able to connect to the server unless your mods folder is an exact match of the server's mods folder. Factorio can mostly resolve conflicts automatically, but if the mod is not availible in the mod manager (this one is not), you will manually need to copy it from the server mods folder to your regular mods folder.

Once copped, open the directory and edit the `info.json` file. Feel free to edit any attribute in this file, and make the mod your own (no credit is necessary). The important thing to note is that the name needs to be lowercase, and spaces should be replaced with dash (`-`) characters. The name of the folder of your mod will need to reflect these changes. It must be in the format `[name]_[version]`. For example, the default name and version is `bsg-example-mod`, and `0.0.1`, respectively, so the directory name will become `bsg-example-mod_0.0.1`.

Finally, the mod thumbnail (`thumbnail.png`) is the BackSeatGamer race car logo by default. Feel free to replace this with your own image.

Thank you for using this mod, and if you have any questions or concerns, please visit the [Issue Tracker](https://github.com/BackSeatGamerCode/Factorio_BiterHell/issues)

## See It In Action
You can watch the VOD of a stream I did using this mod at https://www.youtube.com/watch?v=U_409eSElgk&t=127s

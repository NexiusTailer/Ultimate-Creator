[Download latest release (v1.4.0)](https://github.com/NexiusTailer/Ultimate-Creator/tree/master/v1.4.0)

# [Ultimate-Creator](http://forum.sa-mp.com/showthread.php?t=620522)

It is an advanced object, vehicle, actor editor (full list below), which can work right in the game!  
Editing: Objects, Vehicles, Actors, Pickups, Checkpoints, Map icons, Gangzones, 3D texts.

## Features:
* **Editing from the game**  
  To do this, you just need to connect the filterscript
* **Mapping for several players**  
  Ability to mapping for several persons in the same time
* **New editor from scratch**  
  Editor written entirely from scratch, 0.3e editor is not used
* **Advanced vehicle (since v1.1.0) and actor (since v1.3.3) configuration**  
  Ability to tune all created vehicles and set animations for any created actors
* **Editing attached objects and 3D texts (since v1.2.0)**  
  Ability to edit attached objects and 3D texts to vehicles, players and other objects
* **Copying default objects**  
  You can copy default map objects by simply clicking on them
* **Deleting default objects (since v1.3.0)**  
  You can also delete default map objects by simply clicking on them
* **Change textures and material text of objects**  
  You can change textures, color and material text of any created object

## How to use:
1. To begin, you must have an RCon rights (optional).
2. Once you get them, type /edit command.
3. Now you are in flymode: use the keys W, A, S, D to move, and move the mouse to look around.
4. You can open the main menu by pressing the Enter key.
5. Next, select items depending on what do you want to do.

*Some keyboard shortcuts that will be useful:*

![http://vfl.ru/fotos/5cc8148314281759.html](http://images.vfl.ru/ii/1474982769/5cc81483/14281759_m.png)

LAlt `(KEY_WALK)` - Slow moving/movement  
LShift `(KEY_JUMP)` - Acceleration of moving/movement  
LShift `(KEY_JUMP)` + LAlt `(KEY_WALK)` - Objects mapping in view of the surface rotate  
LMB `(KEY_FIRE)` - Select an object/vehicle/actor...  
* W, A, S, D - Movement of the selected object/vehicle/actor...  
* LShift `(KEY_JUMP)` + LAlt `(KEY_WALK)` + W, A, S, D - Movement along the Z-axis of the selected object/vehicle/actor...  
* LCtrl `(KEY_FIRE)` + W, A, S, D - Changing the rotation angle of the selected object/vehicle/actor...  
* LCtrl `(KEY_FIRE)` + LShift `(KEY_JUMP)` + LAlt `(KEY_WALK)` + W, A, S, D - Changing the rotation angle along the X-axis of the selected object/vehicle/actor...  

RMB `(KEY_HANDBRAKE)` - Moving an object/vehicle/actor... by mouse  
Space `(KEY_SPRINT)` - Remove selection/movement of an object/vehicle/actor...  
C `(KEY_CROUCH)` + LMB `(KEY_FIRE)` - Copy an object/vehicle/actor...  
* LShift `(KEY_JUMP)` + LAlt `(KEY_WALK)` + C `(KEY_CROUCH)` + LMB `(KEY_FIRE)` - Copy an attached object/3D text  

\ `(KEY_ACTION)` + LMB `(KEY_FIRE)` - Delete an object/vehicle/actor...  

## Available commands:
**Map management:**  
`/newmap` - create a new map  
`/loadmap` - load an existing map  
`/savemap` - save the current map  
`/delmap` - delete map

**Objects:**  
`/newobj` - create an object  
`/delobj` - delete the selected object  
`/cobj` - copy the selected object  
`/selobj` *[object ID]* - select an object by ID  
`/gotoobj` - teleport to the selected object  
`/getobj` - teleport the selected object to yourself  
`/objtext` - text editor on the selected object  
`/oplattach` *[player ID]* - attach the selected object to player  
`/oobjattach` *[object ID]* - attach the selected object to object  
`/ovehattach` *[vehicle ID]* - attach the selected object to vehicle  
`/objx` - `/objy` - `/objz` - set position of the selected object  
`/objrx` - `/objry` - `/objrz` - set rotation angles of the selected object

**Textures:**  
`/txdset` *[layer ID]* *[texture ID]* - set material of the selected object  
`/txdreset` *[layer ID]* - reset material of the selected object  
`/txdcolor` *[layer ID]* *[hex code]* - set color of the selected object  
`/txdcreset` *[layer ID]* - reset color of the selected object

**Vehicles:**  
`/newveh` - create a vehicle  
`/delveh` - delete the selected vehicle  
`/cveh` - copy the selected vehicle  
`/selveh` *[vehicle ID]* - select a vehicle by ID  
`/gotoveh` - teleport to the selected vehicle  
`/getveh` - teleport the selected vehicle to yourself  
`/vehrepair` - repair the selected vehicle  
`/vehx` - /vehy - /vehz - set position of the selected vehicle  
`/vehrz` - set rotation angle of the selected vehicle  
`/vehrtime` - set respawn time of the selected vehicle  
`/vehcolor` - set colors of the selected vehicle

**Tuning:**  
`/compadd` - add component on the selected vehicle  
`/complist` - viewing and deleting components on the selected vehicle  
`/compremoveall` - remove all components from the selected vehicle  
`/paintjob` - set paintjob (for certain vehicles)  
`/pjobremove` - remove paintjob from the selected vehicle

**Actors:**  
`/newact` - create an actor  
`/delact` - delete the selected actor  
`/cact` - copy the selected actor  
`/selact` *[actor ID]* - select an actor by ID  
`/gotoact` - teleport to the selected actor  
`/getact` - teleport the selected actor to yourself  
`/actanim` - set animation to the selected actor  
`/actclear` - reset the animation to the selected actor  
`/actx` - `/acty` - `/actz` - set position of the selected actor  
`/actrz` - set rotation angle of the selected actor

**Pickups:**  
`/newpick` - create a pickup  
`/delpick` - delete the selected pickup  
`/cpick` - copy the selected pickup  
`/selpick` *[pickup ID]* - select a pickup by ID  
`/gotopick` - teleport to the selected pickup  
`/getpick` - teleport the selected pickup to yourself  
`/picktype` - set type of the selected pickup  
`/pickx` - /picky - /pickz - set position of the selected pickup  
`/pickvw` - set virtual world of the selected pickup

**Checkpoints:**  
`/newcp` - create a checkpoint  
`/delcp` - delete the checkpoint  
`/selcp` - select the checkpoint  
`/gotocp` - teleport to the checkpoint  
`/getcp` - teleport the checkpoint to yourself  
`/cpx` - `/cpy` - set position of the checkpoint  
`/cpsize` - set size of the checkpoint

**Race checkpoints:**  
`/newrcp` - create a race checkpoint  
`/delrcp` - delete the race checkpoint  
`/selrcp` - select the race checkpoint  
`/gotorcp` - teleport to the race checkpoint  
`/getrcp` - teleport the race checkpoint to yourself  
`/rcptype` - set type of the race checkpoint  
`/rcpx` - `/rcpy` - `/rcpz` - set position of the race checkpoint  
`/rcpnextx` - `/rcpnexty` - `/rcpnextz` - arrow pointer's position of the race checkpoint  
`/rcpsize` - set size of the race checkpoint

**Map icons:**  
`/newicon` - create a map icon  
`/delicon` - delete the selected map icon  
`/cicon` - copy the selected map icon  
`/selicon` *[map icon ID]* - select a map icon by ID  
`/gotoicon` - teleport to the selected map icon  
`/geticon` - teleport the selected map icon to yourself  
`/iconx` - `/icony` - `/iconz` - set position of the selected map icon  
`/iconcolor` - set color of the selected map icon  
`/iconstyle` - set style of the selected map icon

**Gangzones:**  
`/newzone` - create a gangzone  
`/delzone` - delete the selected gangzone  
`/czone` - copy the selected gangzone  
`/selzone` *[gangzone ID]* - select a gangzone by ID (size changing)  
`/holdzone` *[gangzone ID]* - select a gangzone by ID (movement)  
`/gotozone` - teleport to the selected gangzone  
`/getzone` - teleport the selected gangzone to yourself  
`/zoneminx` - `/zoneminy` - `/zonemaxx` - `/zonemaxy` - set position of the selected gangzone  
`/zonecolor` - set color of the selected gangzone

**3D texts:**  
`/newlab` - create a 3D text  
`/dellab` - delete the selected 3D text  
`/clab` - copy the selected 3D text  
`/sellab` *[label ID]* - select a 3D text by ID  
`/gotolab` - teleport to the selected 3D text  
`/getlab` - teleport the selected 3D text to yourself  
`/labtext` - set text to the selected 3D text  
`/labcolor` - set color of the selected 3D text  
`/lplattach` *[player ID]* - attach the selected 3D text to player  
`/lvehattach` *[vehicle ID]* - attach the selected 3D text to vehicle  
`/labx` - /laby - /labz - set position of the selected 3D text  
`/labdd` - set draw distance of the selected 3D text  
`/labvw` - set virtual world of the selected 3D text  
`/lablos` - set visibility through walls of the selected 3D text

**Moving around the map:**  
`/setpos` - teleport to the coordinates  
`/setint` - interior setting by ID  
`/setvw` - virtual world setting by ID  
`/maptp` - teleport to the last map marker  
`/gotoint` - teleport to default interiors

**Default objects:**  
`/copyobjects` - copy default objects mode  
`/remobjects` - delete default objects mode

**Editor settings:**  
`/camspeed` - change camera speed  
`/camspeedslow` - change camera speed (Alt)  
`/camspeedfast` - change camera speed (Shift)  
`/camdist` - change camera distance  
`/movedist` - change movement distance  
`/movedistshort` - change movement distance (Alt)  
`/movedistlong` - change movement distance (Shift)  
`/movedistgz` - change gangzone movement distance  
`/movedistgzshort` - change gangzone movement distance (Alt)  
`/movedistgzlong` - change gangzone movement distance (Shift)  
`/movedisti` - change map icon movement distance  
`/movedistishort` - change map icon movement distance (Alt)  
`/movedistilong` - change map icon movement distance (Shift)  
`/rotspeed` - change rotation speed  
`/rotspeedslow` - change rotation speed (Alt)  
`/rotspeedfast` - change rotation speed (Shift)  
`/showgui` - show interface  
`/hidegui` - hide interface

**Map settings:**  
`/setweather` - set weather  
`/settime` - set time  
`/setgravity` - set gravity

**ATTENTION!** Some features works only with [ColAndreas](http://forum.sa-mp.com/showthread.php?t=586068) plugin!

## Installation:
1. Download "creator.pwn" on the links below
2. Copy this file to "filterscripts" folder
3. Add the ColAndreas plugin (if you want to use all available functions)  
 3.1. Also download "ColAndreasWizard.exe" from the ColAndreas repository and create a file named "ColAndreas.cadb"
 3.2. Create the folder "ColAndreas" in the "scriptfiles" folder and move here this created file
4. Open "creator.pwn" and compile it
5. Open server.cfg file and add "creator" in the "filterscripts" line after a space
6. Keep it open and also add "ColAndreas" in the "plugins" line after a space  
 6.1. If you run the server on a hosting (linux), you should specify the plugin extension: "ColAndreas.so"

## Related works:
Using these scripts you can also extend the functionality and simplify the process of creating your projects

[Cinematic Camera Mover](http://forum.sa-mp.com/showthread.php?t=329813)  
[Gammix's Textdraw Editor](http://forum.sa-mp.com/showthread.php?t=642981)  
[iPLEOMAX's TextDraw Editor](http://forum.sa-mp.com/showthread.php?t=376758)  
[Tube Connector 1.10](http://forum.sa-mp.com/showthread.php?t=578958)  
[Map Mover 2.1](https://github.com/adri1-601/MAP-MOVER)  
[Hold Studio](http://forum.sa-mp.com/showthread.php?t=182317)

## Thanks:
Batka1337, Vitalik_Gonsor, TheHero, Apec, Magic_York, f0Re3t - help with testing  
Crayder - some help with ColAndreas  
Vip_Uzer - some advices

Special thanks to the huge number of authors whose ideas/developments were included in this script.

I will be glad to hear any ideas and suggestions.

Enjoy using! :)

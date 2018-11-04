[Download latest release (v1.3.9)](https://github.com/NexiusTailer/Ultimate-Creator/tree/master/v1.3.9)

# [Ultimate-Creator](http://forum.sa-mp.com/showthread.php?t=620522)

It is an advanced object, vehicle, actor editor (full list below), which can work right in the game!  
Editing: Objects, Vehicles, Actors, Pickups, Checkpoints, Map-icons, Gang zones, 3D texts.

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
3. Now you are in flymode - use the keys W, A, S, D to move, and move the mouse to look around.
4. You can call the main menu by pressing the Enter key.
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

**ATTENTION!** Some features works only with [ColAndreas](http://forum.sa-mp.com/showthread.php?t=586068) plugin!

## Installation:
1. Download "creator.pwn" on the links below
2. Copy this file to "filterscripts" folder
3. Add the ColAndreas plugin (if you want to use all available functions)  
 3.1. Also download "ColAndreasWizard.exe" from the ColAndreas repository and create a file named "ColAndreas.cadb"
 3.2. Create the folder "ColAndreas" in the "scriptfiles" folder and move here this created file
4. Open "creator.pwn" and compile it
5. Open server.cfg file and add "creator" in line "filterscripts" after a space
6. Keep it open and also add "ColAndreas" in line "plugins" after a space  
 6.1. If you are running the server on a hosting (linux), you should specify the plugin extension: "ColAndreas.so"

## Related works:
With these scripts you can also extend the functionality and simplify the process of creating your projects

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

Special thanks to the huge number of authors whose ideas/developments have been included in this script.

I will be glad to hear any ideas and suggestions.

Enjoy using! :)

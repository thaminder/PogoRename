# PogoRename
ADB Tool for automated renaming of pokemons for Pokemon GO

# Step by Step Guide:
- Install ADB ( https://dl.google.com/android/repository/platform-tools-latest-windows.zip ), Unzip them and set Windows Path to ADB (Start -> Run -> sysdm.cpl -> Enter -> Advanced -> Env. Variables -> Select "Path" -> Edit -> New -> Enter Path to adb.exe)
  
  <img width="527" height="501" alt="grafik" src="https://github.com/user-attachments/assets/ecd587c6-b131-407d-bca0-c86790aa8099" />
- Enabled Developer Mode in Android OS (google how to enable it for your device), then enable "USB Debugging"
- Connect your Phone to your Computer via USB Cable and confirm the "usb debugging dialog" on your computer  
- Check if you can find your device -> Open a command prompt (Start -> Run -> cmd) -> enter "adb devices") -> you should see your device
  
  <img width="1115" height="628" alt="grafik" src="https://github.com/user-attachments/assets/d99e3538-05d8-48b2-9b2a-40f0c6e84c15" />
- Install Calcy IV and Enable Screen Recording
- Select Automatic Scan
  
  <img width="573" height="349" alt="grafik" src="https://github.com/user-attachments/assets/86ed75c3-999f-4650-9235-7644d37b533e" />

- Settings -> Boxes & Renaming -> Enable "Auto-Copy New Name"
  
  <img width="573" height="1221" alt="grafik" src="https://github.com/user-attachments/assets/fade509d-5d8d-417a-a629-454f50051d6f" />
- Start Pokemon Go, Click on the Calcy IV Button to start Screen Recording if not running yet), go to your pokemons and select the first one to rename
  
  <img width="449" height="951" alt="grafik" src="https://github.com/user-attachments/assets/f8dabfc4-f084-4684-b5d1-8628c884e0ae" />

- Follow the Steps below

# Edit pogorename.bat
- Open the batch file in a text editor  
  <img width="571" height="326" alt="grafik" src="https://github.com/user-attachments/assets/868120a5-1dd2-41a9-8a9c-a5d6dd36aa47" />  
  Edit this coordinates (see guide below)  
  
# Coordinates:
you can get those coordinates via developer mode -> search for "Pointer Location" in Developer Options  
<img width="573" height="1220" alt="grafik" src="https://github.com/user-attachments/assets/5aa29f9f-df46-41e7-b5a0-c98d3f2e797a" />  
  
Enable it and you will see a bar like this:  
<img width="576" height="368" alt="grafik" src="https://github.com/user-attachments/assets/f1039d5d-d308-4070-ab10-d93cbd9dca45" />  
  
Now you have to get the following coordinates (just hold your finger above those buttons and write down the coordinates):  
**set MenuButtonX=923**  
**set MenuButtonY=2009**  
<img width="571" height="1215" alt="grafik" src="https://github.com/user-attachments/assets/24688065-87af-42ec-889f-b3b854024f54" />  
In this screenshot "MenuButtonX" would be 923 and "MenuButtonY" would be 2009. enter this values in the text editor.  
  
**set IVButtonX=738**  
**set IVButtonY=1624**  
<img width="575" height="1221" alt="grafik" src="https://github.com/user-attachments/assets/df36fe26-68d4-4d8f-8871-068c7a9da68f" />  
  
**set notClickAbleAreaX=743**  
**set notClickAbleAreaY=563**  
!Select any coordinates where nothing "clickable" is -> this setting is just for closing the IVs Dialog!  
Something like this position:  
<img width="569" height="1213" alt="grafik" src="https://github.com/user-attachments/assets/70a9dad5-06a4-4181-9e1c-e053ebff1ff4" />  
  
**set pokeNameX=572**  
**set pokeNameY=988**  
Pokemon Renaming has changed to earlier -> you cant select the "pencil" because it floats left or right - depending of the pokemon name lenght.  
so just select the middle position of the name (you can edit the pokemon and name it something like "A" and then get coordinates where this "A" is).  
<img width="573" height="1218" alt="grafik" src="https://github.com/user-attachments/assets/8ec006d3-07fd-47fc-8b65-f6d7cd39097c" />  
  
**set OKButtonX=557**  
**set OKButtonY=1170**  
The "OK" Button from the renaming Dialog  
<img width="575" height="1221" alt="grafik" src="https://github.com/user-attachments/assets/8671a329-7b03-4aac-bffb-1cc47905c18c" />

Now save this Batch file and run it on your Computer (double click it)  
<img width="1115" height="628" alt="grafik" src="https://github.com/user-attachments/assets/1a5eed21-f240-4891-806b-e73980ca40dd" />  
Enter the amount of pokemon for renaming (100, 200, eg).  
Now you should see your device working.

# Troubleshooting
If you have a slow device (mine is a pixel 4 - so this is also very outdated) you can edit the waittimes between those actions.  
powershell -Command "Start-Sleep -Milliseconds 400" means, it waits for 400 milliseconds before doing the next step. when showing
the iv, the animation ingame is a little bit slow, so i set 3000 ms to wait (about 3 seconds) - this works super fine for me, but
if you have a faster/slower device you can edit those values to your personal requirements. Beware: if any action is to slow and
the next action is already triggered you have to lower this values. you can always cancel the "renaming" by pressing "STRG+C"












  

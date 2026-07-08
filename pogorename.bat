@echo off
set MenuButtonX=929
set MenuButtonY=2000

set IVButtonX=743
set IVButtonY=1620

set notClickAbleAreaX=743
set notClickAbleAreaY=563

set pokeNameX=555
set pokeNameY=1000

set OKButtonX=558
set OKButtonY=1179

set /p pokeCount="how many pokemons should be renamed? "

echo(%pokeCount%| findstr /r "^[0-9][0-9]*$" >nul

if %errorlevel%==0 (
	for /L %%i in (1,1,%pokeCount%) do (
		REM Open Menu
		adb shell input tap %MenuButtonX% %MenuButtonY%
		powershell -Command "Start-Sleep -Milliseconds 400"
		REM SHOW IVs
		adb shell input tap %IVButtonX% %IVButtonY%
		powershell -Command "Start-Sleep -Milliseconds 300"
		REM CONFIRM TRAINER
		adb shell input tap %notClickAbleAreaX% %notClickAbleAreaY%
		powershell -Command "Start-Sleep -Milliseconds 3000"
		REM CLOSE IV Screen
		adb shell input tap %notClickAbleAreaX% %notClickAbleAreaY%
		powershell -Command "Start-Sleep -Milliseconds 200"
		REM click Name (for rename)
		adb shell input tap %pokeNameX% %pokeNameY%
		powershell -Command "Start-Sleep -Milliseconds 300"
		REM Remove Name
		for /L %%i in (1,1,20) do (
			adb shell input keyevent KEYCODE_DEL
		)
		REM paste Name from Clipboard
		adb shell input keyevent KEYCODE_PASTE
		powershell -Command "Start-Sleep -Milliseconds 300"
		REM click OK Button
		adb shell input tap %OKButtonX% %OKButtonY%
		powershell -Command "Start-Sleep -Milliseconds 800"
		REM Swipe to next Pokemon
		adb shell input swipe 900 1100 200 1100 250
		powershell -Command "Start-Sleep -Milliseconds 300"
	)
) else (
    echo invalid input - not a number - exiting...
)
[Setup]
AppName=Calculadora
AppVersion=1.0.0
DefaultDirName={pf}\Calculadora
DefaultGroupName=Calculadora
OutputDir=..\bin
OutputBaseFilename=Calculadora_Setup
Compression=lzma
SolidCompression=yes

[Files]
Source: "..\bin\Calculadora.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\version.json"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Calculadora"; Filename: "{app}\Calculadora.exe"
Name: "{group}\Updater"; Filename: "{app}\Updater.exe"
Name: "{commondesktop}\Calculadora"; Filename: "{app}\Calculadora.exe"

[Run]
Filename: "{app}\Calculadora.exe"; Description: "Ejecutar Calculadora"; Flags: postinstall nowait skipifsilent
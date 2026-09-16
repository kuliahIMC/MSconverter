#define MyAppName "Marhaban Converter"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Marhaban Studio"
#define MyAppExeName "Marhaban Converter.exe"

[Setup]
AppId={{8D5C9F32-7B6D-4A42-A9C4-3B6F8D2E91A7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}

DefaultDirName={autopf}\Marhaban Converter
DefaultGroupName={#MyAppName}

OutputDir=installer
OutputBaseFilename=Marhaban-Converter-v1.0.0-Setup

SetupIconFile=assets\Marhaban-studio.ico

Compression=lzma2
SolidCompression=yes

ArchitecturesInstallIn64BitMode=x64compatible

WizardStyle=modern

UninstallDisplayIcon={app}\{#MyAppExeName}

PrivilegesRequired=admin

[Files]
Source: "dist\Marhaban Converter\*"; \
    DestDir: "{app}"; \
    Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Marhaban Converter"; \
    Filename: "{app}\{#MyAppExeName}"

Name: "{autodesktop}\Marhaban Converter"; \
    Filename: "{app}\{#MyAppExeName}"; \
    Tasks: desktopicon

[Tasks]
Name: "desktopicon"; \
    Description: "Buat shortcut di Desktop"; \
    GroupDescription: "Shortcut tambahan:"

[Run]
Filename: "{app}\{#MyAppExeName}"; \
    Description: "Jalankan Marhaban Converter"; \
    Flags: nowait postinstall skipifsilent
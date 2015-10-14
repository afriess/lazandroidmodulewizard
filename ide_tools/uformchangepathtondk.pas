unit uformchangepathtondk;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LazFileUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, IniFiles, IDEIntf, ProjectIntf, LazIDEIntf, LCLIntf, ComCtrls,
  ExtCtrls;

type

  { TFormChangeDemoPathToNDK }

  TFormChangeDemoPathToNDK = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBoxSelectProject: TComboBox;
    EditPathToAndroidSDK: TEdit;
    EditPathToAndroidNDK: TEdit;
    EditPathToWorkspace: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroupNDK: TRadioGroup;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    SelectDirectoryDialog2: TSelectDirectoryDialog;
    SelectDirectoryDialog3: TSelectDirectoryDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBoxSelectProjectChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    PathToDemosWorkspace: string;
    PathToDemoAndroidNDK: string;
    PathToDemoAndroidSDK: string;
    LastFullProjectName: string;
    NDKIndex: string;
    pathLineIndex: integer;
  end;

  procedure GetSubDirectories(const directory : string; list : TStrings);

var
  FormChangeDemoPathToNDK: TFormChangeDemoPathToNDK;

implementation

{$R *.lfm}

{ TFormChangeDemoPathToNDK }

procedure TFormChangeDemoPathToNDK.SpeedButton2Click(Sender: TObject);
begin
  SelectDirectoryDialog2.Title:= 'Select Demos Projects Path:';
  if Trim(EditPathToWorkspace.Text) <> '' then
    if DirPathExists(EditPathToWorkspace.Text) then
      SelectDirectoryDialog2.InitialDir:= EditPathToWorkspace.Text;
  if SelectDirectoryDialog2.Execute then
  begin
     PathToDemosWorkspace:= SelectDirectoryDialog2.FileName;
     EditPathToWorkspace.Text:= PathToDemosWorkspace;
     ComboBoxSelectProject.Items.Clear;
     GetSubDirectories(PathToDemosWorkspace, ComboBoxSelectProject.Items);
  end;
end;

procedure TFormChangeDemoPathToNDK.SpeedButton3Click(Sender: TObject);
begin
  PathToDemosWorkspace:= EditPathToWorkspace.Text;   //change Workspace...
  ComboBoxSelectProject.Items.Clear;
  GetSubDirectories(PathToDemosWorkspace, ComboBoxSelectProject.Items);
  ComboBoxSelectProject.ItemIndex:= -1;
  ComboBoxSelectProject.Text:='';
end;

procedure TFormChangeDemoPathToNDK.SpeedButton4Click(Sender: TObject);
begin
  SelectDirectoryDialog3.Title:= 'Select Android Sdk Path:';

  if Trim(EditPathToAndroidSDK.Text) <> '' then
  begin
    if DirPathExists(EditPathToAndroidSDK.Text) then
      SelectDirectoryDialog3.InitialDir:= EditPathToAndroidSDK.Text;
  end;

  if SelectDirectoryDialog3.Execute then
  begin
     if SelectDirectoryDialog3.FileName <> '' then
     begin
       EditPathToAndroidSDK.Text:= SelectDirectoryDialog3.FileName;
     end;
  end;

end;

procedure TFormChangeDemoPathToNDK.SpeedButton1Click(Sender: TObject);
begin
  SelectDirectoryDialog1.Title:= 'Select Android Ndk Path:';
  if Trim(EditPathToAndroidNDK.Text) <> '' then
    if DirPathExists(EditPathToAndroidNDK.Text) then
      SelectDirectoryDialog1.InitialDir:= EditPathToAndroidNDK.Text;
  if SelectDirectoryDialog1.Execute then
  begin
     EditPathToAndroidNDK.Text:= SelectDirectoryDialog1.FileName;
  end;
end;

procedure TFormChangeDemoPathToNDK.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  AmwFile: string;
begin
  AmwFile:= AppendPathDelim(LazarusIDE.GetPrimaryConfigPath) + 'JNIAndroidProject.ini';
  if FileExistsUTF8(AmwFile) then
  begin
     with TInifile.Create(AmwFile) do
     try
       WriteString('NewProject', 'PathToDemosWorkspace', PathToDemosWorkspace);
       WriteString('NewProject', 'PathToAndroidNDK', EditPathToAndroidNDK.Text);
       WriteString('NewProject', 'PathToAndroidSDK', EditPathToAndroidSDK.Text);
       WriteString('NewProject', 'NDK', IntToStr(RadioGroupNDK.ItemIndex));
     finally
       Free;
     end;
  end;
  //pathLineIndex = -1;
end;

procedure TFormChangeDemoPathToNDK.ComboBoxSelectProjectChange(Sender: TObject);
var
  strList: TStringList;
  pathLine: string;
begin

  if ComboBoxSelectProject.Text = '' then Exit;

  strList:= TStringList.Create;
  PathToDemoAndroidNDK:= '';
  PathToDemoAndroidSDK:= '';
  strList.LoadFromFile(ComboBoxSelectProject.Text+ DirectorySeparator+'readme.txt');
  pathLineIndex:= strList.Count;
  pathLine := '';

  while (pathLine = '') and  (pathLineIndex > 0) do
  begin
     pathLineIndex:= pathLineIndex - 1;
     pathLine:= strList.Strings[pathLineIndex]
  end;

  if Pos('System Path to Android NDK=', strList.Strings[pathLineIndex]) > 0 then
  begin
      if strList.ValueFromIndex[pathLineIndex] <> '' then
      begin
        PathToDemoAndroidNDK:= strList.ValueFromIndex[pathLineIndex];
      end;
  end;

  if Pos('System Path to Android SDK=', strList.Strings[pathLineIndex-1]) > 0 then
  begin
     if  strList.ValueFromIndex[pathLineIndex-1] <> '' then
     begin
       PathToDemoAndroidSDK:= strList.ValueFromIndex[pathLineIndex-1];
     end;
  end;

  strList.Free;
end;

procedure TFormChangeDemoPathToNDK.BitBtn1Click(Sender: TObject);
var
  strList: TStringList;
  strResult: string;
  lpiFileName: string;
  pathLine: string;
begin

  if pathLineIndex = -1 then ComboBoxSelectProjectChange(nil);

  lpiFileName:= 'controls.lpi';

  {
  if not FileExists(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + 'controls.lpi') then
     lpiFileName:= InputBox('Project File Name', 'Enter *.lpi project file name:', lpiFileName);
  }

  if not FileExists(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + lpiFileName) then
  begin
     ShowMessage('Error. "'+lpiFileName+'" file Not Found!');
     Exit;
  end;

  strList:= TStringList.Create;
  if EditPathToAndroidNDK.Text <> '' then
  begin
    if (PathToDemoAndroidNDK <> '') and (EditPathToAndroidNDK.Text <> '') then
    begin
      strList.LoadFromFile(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + lpiFileName);
      strList.SaveToFile(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + lpiFileName+'.bak');
      strList.Clear;
      strList.LoadFromFile(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + lpiFileName);
      strResult:=  StringReplace(strList.Text, PathToDemoAndroidNDK, EditPathToAndroidNDK.Text, [rfReplaceAll,rfIgnoreCase]);
      strList.Clear;
      strList.Text:= strResult;
      if RadioGroupNDK.ItemIndex = 3 then
      begin
        strResult:= StringReplace(strList.Text, '4.6', '4.9', [rfReplaceAll,rfIgnoreCase]);
        strList.Clear;
        strList.Text:= strResult;
      end;
      strList.SaveToFile(ComboBoxSelectProject.Text+ DirectorySeparator+'jni'+ DirectorySeparator + lpiFileName);
      ShowMessage('"'+PathToDemoAndroidNDK+'"'+ 'changed to: '+ '"'+EditPathToAndroidNDK.Text+'"');
    end;

  end else ShowMessage('Sorry.. Project "'+lpiFileName+'" Android NDK Path Not Changed... [Please, change it by hand!]');

  if (PathToDemoAndroidSDK <> '') and (EditPathToAndroidSDK.Text <> '') then
  begin
    strList.Clear;
    strList.LoadFromFile(ComboBoxSelectProject.Text+ DirectorySeparator+'build.xml');
    strList.SaveToFile(ComboBoxSelectProject.Text+ DirectorySeparator+'build.xml.bak');
    strResult:=  StringReplace(strList.Text, PathToDemoAndroidSDK, EditPathToAndroidSDK.Text, [rfReplaceAll,rfIgnoreCase]);
    strList.Text:= strResult;
    strList.SaveToFile(ComboBoxSelectProject.Text+ DirectorySeparator+'build.xml');
    ShowMessage('"'+PathToDemoAndroidSDK+'"'+ 'changed to: '+ '"'+EditPathToAndroidSDK.Text+'"');
  end else ShowMessage('Sorry.. Project "build.xml" Android SDK Path Not Changed... [Please, change it by hand!]');

  strList.Clear;
  strList.LoadFromFile(ComboBoxSelectProject.Text+ DirectorySeparator+'readme.txt');
  if pathLineIndex > 0 then
  begin
    if (PathToDemoAndroidNDK <> '') and  (EditPathToAndroidNDK.Text <> '') then
    begin
       strList.Strings[pathLineIndex]:= 'System Path to Android NDK='+EditPathToAndroidNDK.Text;
    end;
    if  (PathToDemoAndroidSDK <> '') and (EditPathToAndroidSDK.Text <> '') then
    begin
       strList.Strings[pathLineIndex-1]:= 'System Path to Android SDK='+EditPathToAndroidSDK.Text;
    end;
    strList.saveToFile(ComboBoxSelectProject.Text+ DirectorySeparator+'readme.txt');
  end;
  strList.Free;

end;

procedure TFormChangeDemoPathToNDK.FormCreate(Sender: TObject);
var
  AmwFile: string;
  IDEProjectName: string;
  p: integer;
begin
  pathLineIndex:= -1;
  ComboBoxSelectProject.Text:= '';
  AmwFile:= AppendPathDelim(LazarusIDE.GetPrimaryConfigPath) + 'JNIAndroidProject.ini';
  if FileExistsUTF8(AmwFile) then
  begin
      with TIniFile.Create(AmwFile) do  // Try to use settings from Android module wizard
      try
        PathToDemosWorkspace:=  ReadString('NewProject', 'PathToDemosWorkspace', '');
        NDKIndex:=  ReadString('NewProject', 'NDK', '');
        EditPathToAndroidNDK.Text:= ReadString('NewProject', 'PathToAndroidNDK', '');;
        EditPathToAndroidSDK.Text:= ReadString('NewProject', 'PathToAndroidSDK', '');;
        EditPathToWorkspace.Text:= PathToDemosWorkspace;
        LastFullProjectName:= ReadString('NewProject', 'FullProjectName', '');
        if  PathToDemosWorkspace <> '' then
        begin
           IDEProjectName:='';
           p:= Pos(DirectorySeparator+'jni', LazarusIDE.ActiveProject.MainFile.Filename);

           if p > 0 then
             IDEProjectName:= Copy(LazarusIDE.ActiveProject.MainFile.Filename,1,p-1);

           ComboBoxSelectProject.Items.Clear;
           GetSubDirectories(PathToDemosWorkspace, ComboBoxSelectProject.Items);

           if IDEProjectName <> '' then
               ComboBoxSelectProject.Text:= IDEProjectName
           else if LastFullProjectName <> '' then
               ComboBoxSelectProject.Text:= LastFullProjectName;
        end;

        RadioGroupNDK.ItemIndex:= -1;

        if NDKIndex <> '' then
        begin
           if NDKIndex = '0' then RadioGroupNDK.ItemIndex:= 0;
           if NDKIndex = '1' then RadioGroupNDK.ItemIndex:= 1;
           if NDKIndex = '2' then RadioGroupNDK.ItemIndex:= 2;
           if NDKIndex = '3' then RadioGroupNDK.ItemIndex:= 3;
        end;

      finally
        Free
      end;
  end;
end;

//helper... by jmpessoa

//http://delphi.about.com/od/delphitips2008/qt/subdirectories.htm
//fils the "list" TStrings with the subdirectories of the "directory" directory
//Warning: if not  subdirectories was found return empty list [list.count = 0]!
procedure GetSubDirectories(const directory : string; list : TStrings);
var
   sr : TSearchRec;
begin
   try
     if FindFirst(IncludeTrailingPathDelimiter(directory) + '*.*', faDirectory, sr) < 0 then Exit
     else
     repeat
       if ((sr.Attr and faDirectory <> 0) and (sr.Name <> '.') and (sr.Name <> '..')) then
       begin
           List.Add(IncludeTrailingPathDelimiter(directory) + sr.Name);
       end;
     until FindNext(sr) <> 0;
   finally
     SysUtils.FindClose(sr) ;
   end;
end;


end.


{
  ESS-Model
  Copyright (C) 2002  Eldean AB, Peter S�derman, Ville Krumlinde

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
}

unit UDelphiIntegrator;

interface

uses
  Classes,
  UIntegrator;

type

  // Ordinary import of delphi code, until we have two-way integration.
  TDelphiImporter = class(TImportIntegrator)
  private
    // Implementation of parser callback to retrieve a named package
    procedure NeedPackageHandler(var AName: string; Packagename: string;
                                 var AStream: TStream; OnlyLookUp: Boolean = False);
  public
    procedure ImportOneFile(const FileName : string; WithoutNeedSouce: Boolean = False); override;
    class function GetFileExtensions : TStringList; override;
  end;


implementation

uses
  SysUtils,
  UDelphiParser;

{ TDelphiImporter }

procedure TDelphiImporter.ImportOneFile(const FileName : string; WithoutNeedSouce: Boolean);
var
  Str: TStream;
  Parser: TDelphiParser;
  GlobalDefines : TStringList;
begin
  Str := CodeProvider.LoadStream(FileName);
  if Assigned(Str) then
  begin
    GlobalDefines := TStringList.Create;
    {$ifdef WIN32}
    GlobalDefines.Add('MSWINDOWS');
    GlobalDefines.Add('WIN32');
    {$endif}

    Parser := TDelphiParser.Create;
    try
      Parser.NeedPackage := NeedPackageHandler;
      Parser.ParseStreamWithDefines(Str, Model.ModelRoot, Model, GlobalDefines, FileName);
    finally
      FreeAndNil(Parser);
      FreeAndNil(GlobalDefines);
    end;
  end;
end;


class function TDelphiImporter.GetFileExtensions: TStringList;
begin
  Result := TStringList.Create;
  Result.Values['.pas'] := 'Delphi';
  Result.Values['.dpr'] := 'Delphi project';
end;

procedure TDelphiImporter.NeedPackageHandler(var AName: string; Packagename: string;
                             var AStream: TStream; OnlyLookUp: Boolean = False);
var
  FileName: string;
begin
  AStream := nil;
  if ExtractFileExt(AName) = '' then
    FileName := ExtractFileName(AName) + '.pas'
  else
    FileName := AName;
  FileName := CodeProvider.LocateFile(FileName);

  if (not OnlyLookUp) and (FileName<>'') and (FFilesRead.IndexOf(FileName)=-1) then
  begin
    AStream := CodeProvider.LoadStream(FileName);
    FFilesRead.Add(FileName);
  end;
end;

initialization

  Integrators.Register(TDelphiImporter);

end.

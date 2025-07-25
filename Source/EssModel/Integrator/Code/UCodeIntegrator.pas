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

unit UCodeIntegrator;

interface

uses
  UIntegrator,
  UCodeProvider;

type
  {
    Baseclass for a twoway code integrator.
  }
  TCodeIntegrator = class(TTwowayIntegrator)
  private
    FCodeProvider: TCodeProvider;
    procedure SetCodeProvider(const Value: TCodeProvider);
  public
    property CodeProvider: TCodeProvider read FCodeProvider write SetCodeProvider;
  end;

implementation

procedure TCodeIntegrator.SetCodeProvider(const Value: TCodeProvider);
begin
  FCodeProvider.Free;
  FCodeProvider := Value;
end;

end.


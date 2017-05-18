unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer, IdCmdTCPServer,
  FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.TabControl,
  FMX.ExtCtrls, FMX.ScrollBox, FMX.Memo;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    DropTarget1: TDropTarget;
    StyleBook1: TStyleBook;
    Label2: TLabel;
    TabItem3: TTabItem;
    Label3: TLabel;
    TabItem4: TTabItem;
    Label4: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    procedure DropTarget1DragDrop(Sender: TObject; const Data: TDragObject;
      const Point: TPointF);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.Macintosh.fmx MACOS}


uses
  IdHashMessageDigest;

function MD5File(const FileName: string): string;
var
  IdMD5: TIdHashMessageDigest5;
  FS: TFileStream;
begin
 IdMD5 := TIdHashMessageDigest5.Create;
 FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
 try
   Result := IdMD5.HashStreamAsHex(FS)
 finally
   FS.Free;
   IdMD5.Free;
 end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

tabcontrol1.TabIndex:=1;
end;

procedure TForm1.DropTarget1DragDrop(Sender: TObject; const Data: TDragObject;
  const Point: TPointF);
begin
tabcontrol1.TabIndex:=3;
memo1.Lines.Add('MD5: '+md5file(data.Data.ToString));
end;

end.

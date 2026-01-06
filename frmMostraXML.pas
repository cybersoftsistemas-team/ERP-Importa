unit frmMostraXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Buttons;

type
  TformMostraXML = class(TForm)
    GroupBox5: TGroupBox;
    btFechar: TBitBtn;
    rtfXML: TRichEdit;
  private
    { Private declarations }

     schemaXML : widestring;
     XML : widestring;

  public
    { Public declarations }

    constructor Create(AOwner : TComponent; pParm1, pParm2 : widestring); overload;

  end;

var
  formMostraXML: TformMostraXML;

implementation

{$R *.dfm}

   Constructor TformMostraXML.Create(AOwner : TComponent; pParm1, pParm2 : widestring);
begin
  inherited Create(AOwner);
  schemaXML := pParm1;
  XML := pParm2;
  rtfXML.Text := XML;
end;

end.

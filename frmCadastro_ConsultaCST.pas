unit frmCadastro_ConsultaCST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.ExtCtrls, RXCtrls, StdCtrls;

type
  TCadastro_ConsultaCST = class(TForm)
    cCSTICMS: TDBLookupListBox;
    StaticText1: TStaticText;
    cCSTIPI: TDBLookupListBox;
    StaticText2: TStaticText;
    cCSTPIS: TDBLookupListBox;
    StaticText3: TStaticText;
    cCSTCOFINS: TDBLookupListBox;
    StaticText4: TStaticText;
    DBLookupListBox1: TDBLookupListBox;
    StaticText5: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Panel1: TPanel;
    Button1: TButton;
    DBLookupListBox2: TDBLookupListBox;
    StaticText6: TStaticText;
    DBLookupListBox3: TDBLookupListBox;
    StaticText7: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ConsultaCST: TCadastro_ConsultaCST;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_ConsultaCST.Button1Click(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ConsultaCST.FormShow(Sender: TObject);
begin
        with Dados do begin
             with CSTTabelaA do begin
                  sql.Clear;
                  sql.Add('select * from CSTTabelaA order by Codigo');
                  open;
             end;
             with CSTTabelaB do begin 
                  sql.clear;
                  sql.Add('select * from CSTTabelaB order by Codigo');
                  open;
             end;
             with CSTIPI do begin 
                  sql.clear;
                  sql.add('select * from CSTIPI order by Codigo');
                  open;
             end;
             with CSTPIS do begin 
                  sql.Clear;
                  sql.Add('select * from CSTPIS order by Codigo');
                  open;
             end;
             with CSTCOFINS do begin 
                  sql.clear;
                  sql.Add('select * from CSTCOFINS order by Codigo');
                  open;
             end;
             with CSTIBS do begin 
                  sql.clear;
                  sql.Add('select * from CSTIBS order by Codigo');
                  open;
             end;
             with CSTCBS do begin 
                  sql.clear;
                  sql.Add('select * from CSTCBS order by Codigo');
                  open;
             end;
        end;
end;

procedure TCadastro_ConsultaCST.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_ConsultaCST.Release;
      Cadastro_ConsultaCST := nil;
end;

procedure TCadastro_ConsultaCST.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.

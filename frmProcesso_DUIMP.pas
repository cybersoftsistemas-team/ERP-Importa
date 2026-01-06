unit frmProcesso_DUIMP;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  System.Generics.Collections, System.JSON,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls,
  RxCtrls, Data.DB, MemDS, DBAccess, MSAccess, Vcl.DBCtrls;

type
(*
  { ==============================[ CLASSES DOMAIN DUIMP ]==============================}
  TDuimpItem = class
  private
    FNumeroItem: Integer;
    FDescricao: string;
    FNCM: string;
    FQuantidade: Double;
    FValorUnitario: Currency;
  public
    property NumeroItem: Integer read FNumeroItem write FNumeroItem;
    property Descricao: string read FDescricao write FDescricao;
    property NCM: string read FNCM write FNCM;
    property Quantidade: Double read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;

    function ToJSON: TJSONObject;
  end;

  TDuimp = class
  private
    FCNPJImportador: string;
    FModalidadeDespacho: string;
    FItens: TObjectList<TDuimpItem>;
  public
    constructor Create;
    destructor Destroy; override;

    property CNPJImportador: string read FCNPJImportador write FCNPJImportador;
    property ModalidadeDespacho: string read FModalidadeDespacho write FModalidadeDespacho;
    property Itens: TObjectList<TDuimpItem> read FItens;

    procedure Validar;
    function ToJSON: TJSONObject;
  end;
*)
  TProcesso_DUIMP = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bDUIMP: TButton;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    cMemDUIMP: TMemo;
    tEmpresas: TMSQuery;
    Panel2: TPanel;
    cNumDUIMP: TDBLookupComboBox;
    tDUIMP: TMSQuery;
    Label1: TLabel;
    tItens: TMSQuery;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure bDUIMPClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  end;

var
  Processo_DUIMP: TProcesso_DUIMP;

implementation

uses Funcoes, frmDados, frmMenu_Principal;

{$R *.dfm}

(*
{==============================[ TDuimpItem ]===============================}
function TDuimpItem.ToJSON: TJSONObject;
begin
     Result := TJSONObject.Create;
     Result.AddPair('numeroItem', TJSONNumber.Create(FNumeroItem));
     Result.AddPair('descricao', FDescricao);
     Result.AddPair('ncm', FNCM);
     Result.AddPair('quantidade', TJSONNumber.Create(FQuantidade));
     Result.AddPair('valorUnitario', TJSONNumber.Create(FValorUnitario));
end;

{================================[ TDuimp ]=================================}
constructor TDuimp.Create;
begin
    inherited Create;
    FItens := TObjectList<TDuimpItem>.Create(True);
end;

destructor TDuimp.Destroy;
begin
    FItens.Free;
    inherited;
end;

procedure TDuimp.Validar;
var
  Item: TDuimpItem;
begin
     if Trim(FCNPJImportador)    = '' then raise Exception.Create('CNPJ do importador não informado');
     if Length(FCNPJImportador) <> 14 then raise Exception.Create('CNPJ do importador inválido');
     if FItens.Count             = 0  then raise Exception.Create('A DUIMP deve conter ao menos um item');

     for Item in FItens do begin
         if Length(Item.NCM)   <> 8 then raise Exception.CreateFmt('NCM inválido no item %d', [Item.NumeroItem]);
         if Item.Quantidade    <= 0 then raise Exception.CreateFmt('Quantidade inválida no item %d', [Item.NumeroItem]);
         if Item.ValorUnitario <= 0 then raise Exception.CreateFmt('Valor unitário inválido no item %d', [Item.NumeroItem]);
     end;
end;

function TDuimp.ToJSON: TJSONObject;
var
  ArrItens: TJSONArray;
  Item: TDuimpItem;
begin
     Validar;

     Result := TJSONObject.Create;
     Result.AddPair('cnpjImportador', FCNPJImportador);
     Result.AddPair('modalidadeDespacho', FModalidadeDespacho);

     ArrItens := TJSONArray.Create;
     for Item in FItens do
         ArrItens.AddElement(Item.ToJSON);

     Result.AddPair('itens', ArrItens);
end;
*)

{==============================[ FORM EVENTS ]==============================}
procedure TProcesso_DUIMP.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProcesso_DUIMP.bDUIMPClick(Sender: TObject);
var
   mCompl: widestring;  
    Json
   ,Identificacao
   ,Importador
   ,Carga   
   ,Operacao: TJSONObject;
   Itens: TJSONArray;
begin
     Json          := TJSONObject.Create;
     Identificacao := TJSONObject.Create;
     Importador    := TJSONObject.Create;
     Operacao      := TJSONObject.Create;
     Carga         := TJSONObject.Create;

     with Dados do begin
          with tEmpresas do begin
               sql.clear;
               sql.add('select cnpj');
               sql.Add('      ,razao_social');
               sql.Add('from Empresas');
               sql.Add('where Codigo = '+#13+ inttostr(Menu_Principal.mEmpresa));
               open;
          end;
          with tDUIMP do begin
               sql.clear;
               sql.add('select duimp = cast(pd.Numero_Declaracao as varchar(15))');
               sql.add('      ,canal = case pd.Canal_SISCOMEX');
               sql.add('                    when ''VD'' then ''VERDE'' ');
               sql.add('                    when ''VM'' then ''VERMELHO'' ');
               sql.add('                    when ''CZ'' then ''CINZA'' ');
               sql.add('                    when ''AM'' then ''AMARELO'' ');
               sql.add('               else');
               sql.add('                    ''VERDE'' ');
               sql.add('               end');
               sql.add('      ,informacaoComplementar = (select Texto from ProcessosTexto pt where pt.Processo = pd.Processo)');
               sql.add('      ,tipoIdentificacaoCarga = Documento_Transporte');
               sql.add('      ,identificacao          = Documento_Carga');
               sql.add('from ProcessosDocumentos pd');
               sql.add('where pd.Numero_Declaracao = '+#13+ quotedstr(cNumDUIMP.text));
               open;
          end;
          (*
          with tItens do begin
               sql.clear;
               sql.add('select DI');
               sql.add('      ,Item      = row_number() over (order by Codigo_Mercadoria, Sequencia)');
               sql.add('      ,Codigo    = Codigo_Mercadoria');
               sql.add('      ,Descricao = (select cast(replace(Descricao, ''<{''+#13+cast(Codigo as varchar(20))+''}>'', '''') as varchar(500)) from Produtos where Codigo = Codigo_Mercadoria)');
               sql.add('      ,NCM');
               sql.add('      ,Quantidade');
               sql.add('      ,ValorME   = Valor_Unitario');
               sql.add('      ,ValorReal = Valor_UnitarioReal');
               sql.add('from Adicoes');
               sql.add('where DI = ' + quotedstr(cNumDUIMP.Text));
               sql.add('order by Codigo_Mercadoria, Sequencia');
               open;
               first;
          end;
          *)
     end;
     
     try
       {
       Json.AddPair('tipoDeclaracao'    , 'DUIMP');
       Json.AddPair('modalidadeDespacho', 'IM');
       Json.AddPair('canal'             , tDUIMP.fieldbyname('canal').AsString);
       }

       Importador.AddPair('tipoImportador', 'CNPJ');
       Importador.AddPair('ni'            , tEmpresas.fieldbyname('cnpj').AsString);
       Identificacao.AddPair('importador', Importador);
       Identificacao.AddPair('informacaoComplementar', tDUIMP.fieldbyname('informacaoComplementar').AsString);
       Json.AddPair('identificacao', Identificacao);

      
       Carga.AddPair('tipoIdentificacaoCarga', tDUIMP.fieldbyname('tipoIdentificacaoCarga').AsString);
       Carga.AddPair('identificacao'         , tDUIMP.fieldbyname('identificacao').AsString);
       Json.AddPair('Carga', Carga);

       
       
       // Identificação
//       Identificacao.AddPair('importador', tEmpresas.fieldbyname('cnpj').AsString);
//       Identificacao.AddPair('tipoImportador', 'CNPJ');
//       Json.AddPair('importador', nil);
//       Json.AddPair('identificacao', Identificacao);
//

       // Dados do importador.
//       Importador.AddPair('cnpj'       , tEmpresas.fieldbyname('cnpj').AsString);
//       Importador.AddPair('razaoSocial', tEmpresas.fieldbyname('razao_social').AsString);
//       Json.AddPair('importador', Importador);
//
//       Operacao.AddPair('natureza'  , QryDUIMP.FieldByName('natureza_operacao').AsString);
//       Operacao.AddPair('finalidade', QryDUIMP.FieldByName('finalidade').AsString);
//       Json.AddPair('operacao', Operacao);
       
     finally
       cMemDUIMP.Lines.Text := Json.format(2);
     end;
(*
{
  "identificacao": {
    "importador": {
      "tipoImportador": "CNPJ",
      "ni": "00055555000130"
    },
    "informacaoComplementar": "Texto complementando informações sobre a Duimp."
  },
  "carga": {
    "tipoIdentificacaoCarga": "CE",
    "identificacao": "string",
    "unidadeDeclarada": {
      "codigo": "7912001"
    },
    "motivoSituacaoEspecial": "string",
    "seguro": {
      "codigoMoedaNegociada": "USD",
      "valorMoedaNegociada": 30.12
    },
    "frete": {
      "codigoMoedaNegociada": "USD",
      "valorMoedaNegociada": 30.12
    },
    "paisProcedencia": {
      "codigo": "CN"
    }
  },
  "documentos": {
    "documentosInstrucao": [
      {
        "tipo": {
          "codigo": "99"
        },
        "palavrasChave": [
          {
            "codigo": 33,
            "valor": "9999.99.99"
          }
        ]
      }
    ],
    "processos": [
      {
        "identificacao": "15595720034201371",
        "tipo": "ADMINISTRATIVO"
      }
    ],
    "declaracoesExportacaoEstrangeira": [
      {
        "numero": "19XY0000001.XYZ",
        "faixaInicio": "A.11",
        "faixaFim": "B.20"
      }
    ]
  }
}
*)     


     {
     Duimp := TDuimp.Create;
     Json  := TJSONObject.Create;
     // Identificação da DUIMP.
     Json.AddPair('tipoDeclaracao', 'DUIMP');
     Json.AddPair('modalidadeDespacho', 'IM');
     Json.AddPair('canal', 'VERDE');

     cJSON.lines.add(Json.Value);
     }
     (*
     with Dados do begin
          with tEmpresas do begin
               sql.clear;
               sql.add('select CNPJ from Empresas where Codigo = '+#13+ inttostr(Menu_Principal.mEmpresa));
               open;
          end;
          with tItens do begin
               sql.clear;
               sql.add('select DI');
               sql.add('      ,Item      = row_number() over (order by Codigo_Mercadoria, Sequencia)');
               sql.add('      ,Codigo    = Codigo_Mercadoria');
               sql.add('      ,Descricao = (select cast(replace(Descricao, ''<{''+#13+cast(Codigo as varchar(20))+''}>'', '''') as varchar(500)) from Produtos where Codigo = Codigo_Mercadoria)');
               sql.add('      ,NCM');
               sql.add('      ,Quantidade');
               sql.add('      ,ValorME   = Valor_Unitario');
               sql.add('      ,ValorReal = Valor_UnitarioReal');
               sql.add('from Adicoes');
               sql.add('where DI = ' + quotedstr(cDUIMP.Text));
               sql.add('order by Codigo_Mercadoria, Sequencia');
               open;
               first;
          end;
          {
          try
            Duimp.CNPJImportador     := tEmpresas.FieldByName('CNPJ').AsString;
            Duimp.ModalidadeDespacho := 'IM';
            while not tItens.eof do begin
                  Item := TDuimpItem.Create;
                  Item.NumeroItem    := tItens.FieldByName('Item').asinteger;
                  Item.Descricao     := tItens.FieldByName('Descricao').asstring;
                  Item.NCM           := tItens.FieldByName('NCM').asstring;
                  Item.Quantidade    := tItens.FieldByName('Quantidade').asfloat;
                  Item.ValorUnitario := tItens.FieldByName('ValorME').ascurrency;
                  Duimp.Itens.Add(Item);
                  tItens.next;
            end;
            cJSON.Lines.Text := Duimp.ToJSON.Format(2);
          finally
            Duimp.Free;
          end;
          }
     end;
     *)
end;

procedure TProcesso_DUIMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Processo_DUIMP.Release;
     Processo_DUIMP := nil;
end;

procedure TProcesso_DUIMP.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_DUIMP.FormShow(Sender: TObject);
begin
     with tProcessos do begin
          sql.clear;
          sql.add('select Processo');
          sql.Add('      ,DUIMP = Numero_Declaracao');
          sql.add('from ProcessosDocumentos');
          sql.Add('where Desativado <> 1');
          sql.Add('and Tipo = ''IMPORTAÇÃO'' ');
          sql.Add('order by Processo');
          open;
     end;
end;




end.


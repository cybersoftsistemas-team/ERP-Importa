unit ReinfClientX_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 04/10/2018 10:05:43 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWOW64\ReinfClientX.ocx (1)
// LIBID: {3630ACDD-00C5-4A63-BD37-9A2FD253CA27}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Error creating palette bitmap of (TspdReinfClientX) : Error reading control bitmap
//   Error creating palette bitmap of (TspdReinfRetConsultarLote) : Registry key CLSID\{6A503CF9-6517-4394-BFA1-CFDF8EE023A0}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TspdReinfRetConsultarLoteItem) : Registry key CLSID\{1935EAD3-2285-4235-97AC-9A9A9E7F0A48}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TspdReinfRetConsultarLoteOcorrencia) : Registry key CLSID\{B5CFC863-FC4B-4113-96CE-76FAC83235BA}\ToolboxBitmap32 not found
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Winapi.Windows, ActiveX, System.Classes, Vcl.Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  ReinfVersaoTLB ='2.1.7.5138';
  // TypeLibrary Major and minor versions
  ReinfClientXMajorVersion = 1;
  ReinfClientXMinorVersion = 0;

  LIBID_ReinfClientX: TGUID = '{3630ACDD-00C5-4A63-BD37-9A2FD253CA27}';

  DIID_IspdReinfClientXEvents: TGUID = '{92185AC8-F18A-4A53-86A3-3B1E0837095B}';
  IID_IspdReinfClientX: TGUID = '{C77658AC-00A3-4D33-BED7-88D1F1A23539}';
  CLASS_spdReinfClientX: TGUID = '{52D1204A-B80F-4B91-B4D7-38E235C26BD2}';
  IID_IspdReinfRetEnviarLoteEventos: TGUID = '{C2E05710-EAC1-43C6-A4C9-B7462354BE72}';
  CLASS_spdReinfRetEnviarLoteEventos: TGUID = '{48235D55-016E-464C-B466-383EA86ACE28}';
  IID_IspdReinfRetConsultarLote: TGUID = '{2B537B30-A4B1-481D-956C-76A53E6AC153}';
  CLASS_spdReinfRetConsultarLote: TGUID = '{6A503CF9-6517-4394-BFA1-CFDF8EE023A0}';
  IID_IspdReinfRetConsultarLoteItem: TGUID = '{DCDA5794-0235-4EF3-AAC5-866097B4D828}';
  CLASS_spdReinfRetConsultarLoteItem: TGUID = '{1935EAD3-2285-4235-97AC-9A9A9E7F0A48}';
  IID_IspdReinfRetConsultarLoteOcorrencia: TGUID = '{EA8792A4-50B5-40D3-A069-6853D328A235}';
  CLASS_spdReinfRetConsultarLoteOcorrencia: TGUID = '{B5CFC863-FC4B-4113-96CE-76FAC83235BA}';
  IID_IspdReinfRetConsultarLoteOcorrenciaEnvio: TGUID = '{8C0D7E7D-DF7A-4E12-9C27-56605ACD186D}';
  CLASS_spdReinfRetConsultarLoteOcorrenciaEnvio: TGUID = '{778E8B31-7B66-4A50-A2BE-BA82CD20A42B}';
  IID_IspdR5011: TGUID = '{872BD504-19CB-4232-A4F9-A37D56A82AA4}';
  CLASS_spdR5011: TGUID = '{39FB3A48-D311-4329-B3FB-F2155A10E026}';
  IID_IspdRTomR5011: TGUID = '{1DD33A5F-92CD-422C-ADB3-60321E4B2352}';
  CLASS_spdRTomR5011: TGUID = '{A82AAEC5-7674-4986-83A5-6C0E18C6CF09}';
  IID_IspdRPrestR5011: TGUID = '{E485627E-1149-4A0D-B8F7-5C7DD1849927}';
  CLASS_spdRPrestR5011: TGUID = '{50BD03C3-490A-4DDE-BA6F-25EB769A58F1}';
  IID_IspdRRecRepADR5011: TGUID = '{7FC92E65-2B1D-449D-9E96-FA6FA3A847E4}';
  CLASS_spdRRecRepADR5011: TGUID = '{B131089B-E146-4FF6-A7DE-9FE346DE26D5}';
  IID_IspdRComlR5011: TGUID = '{7FC51FFD-E0AE-4EA0-8A99-C39E2C224DD7}';
  CLASS_spdRComlR5011: TGUID = '{567BE8A0-5073-4AED-888A-B6F7A882F9F0}';
  IID_IspdRCPRBR5011: TGUID = '{82925A9C-88EB-425E-9997-29305600CB80}';
  CLASS_spdRCPRBR5011: TGUID = '{FF5BDE7D-E008-455D-A2B4-19FE749A6F99}';
  IID_IspdR5001: TGUID = '{B3EADAD7-4911-44C7-99DE-93BC14D9D4F9}';
  CLASS_spdR5001: TGUID = '{27F213C9-6BAE-40F2-9E3F-1805C2568993}';
  IID_IspdInfoCRTomR5001: TGUID = '{E658D4DD-9631-4AC1-8B1B-704ED4BAF747}';
  CLASS_spdInfoCRTomR5001: TGUID = '{C3A8D13D-3202-4CC2-BC53-B7301B560551}';
  IID_IspdRTomR5001: TGUID = '{45D4688C-D2C5-4EC8-B13B-65FEF41AC629}';
  CLASS_spdRTomR5001: TGUID = '{C2F1796F-8001-4096-979C-982E0851F1CF}';
  IID_IspdRPrestR5001: TGUID = '{1C8ED912-C050-4555-AFD1-06CB0F86468C}';
  CLASS_spdRPrestR5001: TGUID = '{F1BD2BED-6A81-4149-BCB3-3766AD33247A}';
  IID_IspdRRecRepADR5001: TGUID = '{09FDF988-493B-4768-AE08-E7FE0392F931}';
  CLASS_spdRRecRepADR5001: TGUID = '{F6F5D337-10C5-48D7-B0F5-73F1D87DDFD0}';
  IID_IspdRComlR5001: TGUID = '{5A825066-9DA2-493B-A7EB-CCCB5902B7D7}';
  CLASS_spdRComlR5001: TGUID = '{EAF58A9A-13F4-4908-8D02-B03A9926B0BA}';
  IID_IspdRCPRBR5001: TGUID = '{6DE27B8C-84AA-4334-8681-33AEACD5B262}';
  CLASS_spdRCPRBR5001: TGUID = '{AF75B09C-06F7-4AD7-BA4E-2BCCC635761F}';
  IID_IspdRRecEspetDespR5001: TGUID = '{3670AE84-C63A-4762-ACFB-71FD15254650}';
  CLASS_spdRRecEspetDespR5001: TGUID = '{47D6BACC-B113-43A7-BACC-78C8B943F317}';
  IID_IspdInfoCRTomR5011: TGUID = '{2A352025-DC09-470D-B973-31D6B73673E1}';
  CLASS_spdInfoCRTomR5011: TGUID = '{DB7D4061-A6C4-4CE0-94BB-BECED1D37320}';
  IID_IspdIdeContriR5001: TGUID = '{0BEE9DC8-CC9D-46C0-8A64-870EBCE792D9}';
  CLASS_spdIdeContriR5001: TGUID = '{7FB1154C-304C-411E-AFC8-36847CB390EC}';
  IID_IspdInfoTotalR5001: TGUID = '{9F7404B3-CD03-4850-AAAA-2ED67104785A}';
  CLASS_spdInfoTotalR5001: TGUID = '{ECD5E942-904C-4708-ACD5-C8C538F1D9A0}';
  IID_IspdIdeEstabR5001: TGUID = '{9DA5E8F3-F723-4131-B714-6300F413196F}';
  CLASS_spdIdeEstabR5001: TGUID = '{85991D6C-15C2-4303-8D85-55A0DAE2C3B0}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TipoCertificadoKind
type
  TipoCertificadoKind = TOleEnum;
const
  ckMemory = $00000000;
  ckLocalMachine = $00000001;
  ckFile = $00000002;
  ckActiveDIrectory = $00000003;
  ckSmartCard = $00000004;

// Constants for enum AmbienteKind
type
  AmbienteKind = TOleEnum;
const
  akProducao = $00000001;
  akHomologacao = $00000006;
  akPreProducaoReais = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IspdReinfClientXEvents = dispinterface;
  IspdReinfClientX = interface;
  IspdReinfClientXDisp = dispinterface;
  IspdReinfRetEnviarLoteEventos = interface;
  IspdReinfRetEnviarLoteEventosDisp = dispinterface;
  IspdReinfRetConsultarLote = interface;
  IspdReinfRetConsultarLoteDisp = dispinterface;
  IspdReinfRetConsultarLoteItem = interface;
  IspdReinfRetConsultarLoteItemDisp = dispinterface;
  IspdReinfRetConsultarLoteOcorrencia = interface;
  IspdReinfRetConsultarLoteOcorrenciaDisp = dispinterface;
  IspdReinfRetConsultarLoteOcorrenciaEnvio = interface;
  IspdReinfRetConsultarLoteOcorrenciaEnvioDisp = dispinterface;
  IspdR5011 = interface;
  IspdR5011Disp = dispinterface;
  IspdRTomR5011 = interface;
  IspdRTomR5011Disp = dispinterface;
  IspdRPrestR5011 = interface;
  IspdRPrestR5011Disp = dispinterface;
  IspdRRecRepADR5011 = interface;
  IspdRRecRepADR5011Disp = dispinterface;
  IspdRComlR5011 = interface;
  IspdRComlR5011Disp = dispinterface;
  IspdRCPRBR5011 = interface;
  IspdRCPRBR5011Disp = dispinterface;
  IspdR5001 = interface;
  IspdR5001Disp = dispinterface;
  IspdInfoCRTomR5001 = interface;
  IspdInfoCRTomR5001Disp = dispinterface;
  IspdRTomR5001 = interface;
  IspdRTomR5001Disp = dispinterface;
  IspdRPrestR5001 = interface;
  IspdRPrestR5001Disp = dispinterface;
  IspdRRecRepADR5001 = interface;
  IspdRRecRepADR5001Disp = dispinterface;
  IspdRComlR5001 = interface;
  IspdRComlR5001Disp = dispinterface;
  IspdRCPRBR5001 = interface;
  IspdRCPRBR5001Disp = dispinterface;
  IspdRRecEspetDespR5001 = interface;
  IspdRRecEspetDespR5001Disp = dispinterface;
  IspdInfoCRTomR5011 = interface;
  IspdInfoCRTomR5011Disp = dispinterface;
  IspdIdeContriR5001 = interface;
  IspdIdeContriR5001Disp = dispinterface;
  IspdInfoTotalR5001 = interface;
  IspdInfoTotalR5001Disp = dispinterface;
  IspdIdeEstabR5001 = interface;
  IspdIdeEstabR5001Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  spdReinfClientX = IspdReinfClientX;
  spdReinfRetEnviarLoteEventos = IspdReinfRetEnviarLoteEventos;
  spdReinfRetConsultarLote = IspdReinfRetConsultarLote;
  spdReinfRetConsultarLoteItem = IspdReinfRetConsultarLoteItem;
  spdReinfRetConsultarLoteOcorrencia = IspdReinfRetConsultarLoteOcorrencia;
  spdReinfRetConsultarLoteOcorrenciaEnvio = IspdReinfRetConsultarLoteOcorrenciaEnvio;
  spdR5011 = IspdR5011;
  spdRTomR5011 = IspdRTomR5011;
  spdRPrestR5011 = IspdRPrestR5011;
  spdRRecRepADR5011 = IspdRRecRepADR5011;
  spdRComlR5011 = IspdRComlR5011;
  spdRCPRBR5011 = IspdRCPRBR5011;
  spdR5001 = IspdR5001;
  spdInfoCRTomR5001 = IspdInfoCRTomR5001;
  spdRTomR5001 = IspdRTomR5001;
  spdRPrestR5001 = IspdRPrestR5001;
  spdRRecRepADR5001 = IspdRRecRepADR5001;
  spdRComlR5001 = IspdRComlR5001;
  spdRCPRBR5001 = IspdRCPRBR5001;
  spdRRecEspetDespR5001 = IspdRRecEspetDespR5001;
  spdInfoCRTomR5011 = IspdInfoCRTomR5011;
  spdIdeContriR5001 = IspdIdeContriR5001;
  spdInfoTotalR5001 = IspdInfoTotalR5001;
  spdIdeEstabR5001 = IspdIdeEstabR5001;


// *********************************************************************//
// DispIntf:  IspdReinfClientXEvents
// Flags:     (4096) Dispatchable
// GUID:      {92185AC8-F18A-4A53-86A3-3B1E0837095B}
// *********************************************************************//
  IspdReinfClientXEvents = dispinterface
    ['{92185AC8-F18A-4A53-86A3-3B1E0837095B}']
  end;

// *********************************************************************//
// Interface: IspdReinfClientX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C77658AC-00A3-4D33-BED7-88D1F1A23539}
// *********************************************************************//
  IspdReinfClientX = interface(IDispatch)
    ['{C77658AC-00A3-4D33-BED7-88D1F1A23539}']
    function Get_DiretorioEsquemas: WideString; safecall;
    procedure Set_DiretorioEsquemas(const Value: WideString); safecall;
    function Get_DiretorioTemplates: WideString; safecall;
    procedure Set_DiretorioTemplates(const Value: WideString); safecall;
    function Get_DiretorioLogErro: WideString; safecall;
    procedure Set_DiretorioLogErro(const Value: WideString); safecall;
    function Get_TipoCertificado: TipoCertificadoKind; safecall;
    procedure Set_TipoCertificado(Value: TipoCertificadoKind); safecall;
    function Get_NomeCertificado: WideString; safecall;
    procedure Set_NomeCertificado(const Value: WideString); safecall;
    function AssinarEvento(const aXML: WideString): WideString; safecall;
    function ListarCertificados(const aDelimitador: WideString): WideString; safecall;
    function Get_Versao: WideString; safecall;
    function Get_Ambiente: AmbienteKind; safecall;
    procedure Set_Ambiente(Value: AmbienteKind); safecall;
    function Get_Pincode: WideString; safecall;
    procedure Set_Pincode(const Value: WideString); safecall;
    function Get_CpfCnpjEmpregador: WideString; safecall;
    procedure Set_CpfCnpjEmpregador(const Value: WideString); safecall;
    function GerarXMLporTx2(const aTX2Content: WideString): WideString; safecall;
    function EnviarLoteEventos(const aXmlLote: WideString): IspdReinfRetEnviarLoteEventos; safecall;
    function ConsultarLoteEventos(const aIdLoteEventos: WideString): IspdReinfRetConsultarLote; safecall;
    procedure ConfigurarSoftwareHouse(const aCpfCnpjSH: WideString; const aTokenSH: WideString); safecall;
    function Get_ProxyServidor: WideString; safecall;
    procedure Set_ProxyServidor(const Value: WideString); safecall;
    function Get_ProxyUsuario: WideString; safecall;
    procedure Set_ProxyUsuario(const Value: WideString); safecall;
    function Get_ProxySenha: WideString; safecall;
    procedure Set_ProxySenha(const Value: WideString); safecall;
    function Get_CaminhoCertificado: WideString; safecall;
    procedure Set_CaminhoCertificado(const Value: WideString); safecall;
    function Get_SenhaCertificado: WideString; safecall;
    procedure Set_SenhaCertificado(const Value: WideString); safecall;
    function GetVencimentoCertificado: WideString; safecall;
    function Get_VersaoManual: WideString; safecall;
    procedure Set_VersaoManual(const Value: WideString); safecall;
    function ListarVersaoManual(const aDelimitador: WideString): WideString; safecall;
    function ConsultarIdEvento(const aIdEvento: WideString): IspdReinfRetConsultarLote; safecall;
    function ConsultarEventoPorRecibo(const aNumeroRecibo: WideString): IspdReinfRetConsultarLote; safecall;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property TipoCertificado: TipoCertificadoKind read Get_TipoCertificado write Set_TipoCertificado;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property Versao: WideString read Get_Versao;
    property Ambiente: AmbienteKind read Get_Ambiente write Set_Ambiente;
    property Pincode: WideString read Get_Pincode write Set_Pincode;
    property CpfCnpjEmpregador: WideString read Get_CpfCnpjEmpregador write Set_CpfCnpjEmpregador;
    property ProxyServidor: WideString read Get_ProxyServidor write Set_ProxyServidor;
    property ProxyUsuario: WideString read Get_ProxyUsuario write Set_ProxyUsuario;
    property ProxySenha: WideString read Get_ProxySenha write Set_ProxySenha;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfClientXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C77658AC-00A3-4D33-BED7-88D1F1A23539}
// *********************************************************************//
  IspdReinfClientXDisp = dispinterface
    ['{C77658AC-00A3-4D33-BED7-88D1F1A23539}']
    property DiretorioEsquemas: WideString dispid 201;
    property DiretorioTemplates: WideString dispid 202;
    property DiretorioLogErro: WideString dispid 204;
    property TipoCertificado: TipoCertificadoKind dispid 208;
    property NomeCertificado: WideString dispid 209;
    function AssinarEvento(const aXML: WideString): WideString; dispid 217;
    function ListarCertificados(const aDelimitador: WideString): WideString; dispid 224;
    property Versao: WideString readonly dispid 242;
    property Ambiente: AmbienteKind dispid 203;
    property Pincode: WideString dispid 205;
    property CpfCnpjEmpregador: WideString dispid 207;
    function GerarXMLporTx2(const aTX2Content: WideString): WideString; dispid 210;
    function EnviarLoteEventos(const aXmlLote: WideString): IspdReinfRetEnviarLoteEventos; dispid 212;
    function ConsultarLoteEventos(const aIdLoteEventos: WideString): IspdReinfRetConsultarLote; dispid 213;
    procedure ConfigurarSoftwareHouse(const aCpfCnpjSH: WideString; const aTokenSH: WideString); dispid 214;
    property ProxyServidor: WideString dispid 206;
    property ProxyUsuario: WideString dispid 216;
    property ProxySenha: WideString dispid 218;
    property CaminhoCertificado: WideString dispid 215;
    property SenhaCertificado: WideString dispid 219;
    function GetVencimentoCertificado: WideString; dispid 220;
    property VersaoManual: WideString dispid 211;
    function ListarVersaoManual(const aDelimitador: WideString): WideString; dispid 221;
    function ConsultarIdEvento(const aIdEvento: WideString): IspdReinfRetConsultarLote; dispid 222;
    function ConsultarEventoPorRecibo(const aNumeroRecibo: WideString): IspdReinfRetConsultarLote; dispid 223;
  end;

// *********************************************************************//
// Interface: IspdReinfRetEnviarLoteEventos
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2E05710-EAC1-43C6-A4C9-B7462354BE72}
// *********************************************************************//
  IspdReinfRetEnviarLoteEventos = interface(IDispatch)
    ['{C2E05710-EAC1-43C6-A4C9-B7462354BE72}']
    function Get_IdLote: WideString; safecall;
    function Get_Mensagem: WideString; safecall;
    property IdLote: WideString read Get_IdLote;
    property Mensagem: WideString read Get_Mensagem;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfRetEnviarLoteEventosDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2E05710-EAC1-43C6-A4C9-B7462354BE72}
// *********************************************************************//
  IspdReinfRetEnviarLoteEventosDisp = dispinterface
    ['{C2E05710-EAC1-43C6-A4C9-B7462354BE72}']
    property IdLote: WideString readonly dispid 201;
    property Mensagem: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IspdReinfRetConsultarLote
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2B537B30-A4B1-481D-956C-76A53E6AC153}
// *********************************************************************//
  IspdReinfRetConsultarLote = interface(IDispatch)
    ['{2B537B30-A4B1-481D-956C-76A53E6AC153}']
    function Get_NumeroProtocolo: WideString; safecall;
    function Get_Mensagem: WideString; safecall;
    function Count: Integer; safecall;
    function Get_Eventos(aIndex: Integer): IspdReinfRetConsultarLoteItem; safecall;
    function Get_Situacao: WideString; safecall;
    function Get_Status: WideString; safecall;
    function CountOcorrencias: Integer; safecall;
    function Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrenciaEnvio; safecall;
    function Get_XmlRetorno: WideString; safecall;
    function Get_XmlEnviado: WideString; safecall;
    function Get_JsonRetorno: WideString; safecall;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo;
    property Mensagem: WideString read Get_Mensagem;
    property Eventos[aIndex: Integer]: IspdReinfRetConsultarLoteItem read Get_Eventos;
    property Situacao: WideString read Get_Situacao;
    property Status: WideString read Get_Status;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrenciaEnvio read Get_Ocorrencias;
    property XmlRetorno: WideString read Get_XmlRetorno;
    property XmlEnviado: WideString read Get_XmlEnviado;
    property JsonRetorno: WideString read Get_JsonRetorno;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfRetConsultarLoteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2B537B30-A4B1-481D-956C-76A53E6AC153}
// *********************************************************************//
  IspdReinfRetConsultarLoteDisp = dispinterface
    ['{2B537B30-A4B1-481D-956C-76A53E6AC153}']
    property NumeroProtocolo: WideString readonly dispid 201;
    property Mensagem: WideString readonly dispid 203;
    function Count: Integer; dispid 204;
    property Eventos[aIndex: Integer]: IspdReinfRetConsultarLoteItem readonly dispid 205;
    property Situacao: WideString readonly dispid 206;
    property Status: WideString readonly dispid 207;
    function CountOcorrencias: Integer; dispid 202;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrenciaEnvio readonly dispid 208;
    property XmlRetorno: WideString readonly dispid 209;
    property XmlEnviado: WideString readonly dispid 210;
    property JsonRetorno: WideString readonly dispid 211;
  end;

// *********************************************************************//
// Interface: IspdReinfRetConsultarLoteItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DCDA5794-0235-4EF3-AAC5-866097B4D828}
// *********************************************************************//
  IspdReinfRetConsultarLoteItem = interface(IDispatch)
    ['{DCDA5794-0235-4EF3-AAC5-866097B4D828}']
    function Get_NumeroRecibo: WideString; safecall;
    function Get_IdEvento: WideString; safecall;
    function Get_cStat: WideString; safecall;
    function Get_Mensagem: WideString; safecall;
    function Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrencia; safecall;
    function Count: Integer; safecall;
    function Get_Situacao: WideString; safecall;
    function Get_Status: WideString; safecall;
    function Get_R5011: IspdR5011; safecall;
    function Get_R5001: IspdR5001; safecall;
    property NumeroRecibo: WideString read Get_NumeroRecibo;
    property IdEvento: WideString read Get_IdEvento;
    property cStat: WideString read Get_cStat;
    property Mensagem: WideString read Get_Mensagem;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrencia read Get_Ocorrencias;
    property Situacao: WideString read Get_Situacao;
    property Status: WideString read Get_Status;
    property R5011: IspdR5011 read Get_R5011;
    property R5001: IspdR5001 read Get_R5001;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfRetConsultarLoteItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DCDA5794-0235-4EF3-AAC5-866097B4D828}
// *********************************************************************//
  IspdReinfRetConsultarLoteItemDisp = dispinterface
    ['{DCDA5794-0235-4EF3-AAC5-866097B4D828}']
    property NumeroRecibo: WideString readonly dispid 201;
    property IdEvento: WideString readonly dispid 202;
    property cStat: WideString readonly dispid 203;
    property Mensagem: WideString readonly dispid 204;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrencia readonly dispid 205;
    function Count: Integer; dispid 206;
    property Situacao: WideString readonly dispid 207;
    property Status: WideString readonly dispid 208;
    property R5011: IspdR5011 readonly dispid 209;
    property R5001: IspdR5001 readonly dispid 210;
  end;

// *********************************************************************//
// Interface: IspdReinfRetConsultarLoteOcorrencia
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA8792A4-50B5-40D3-A069-6853D328A235}
// *********************************************************************//
  IspdReinfRetConsultarLoteOcorrencia = interface(IDispatch)
    ['{EA8792A4-50B5-40D3-A069-6853D328A235}']
    function Get_Codigo: WideString; safecall;
    function Get_Descricao: WideString; safecall;
    property Codigo: WideString read Get_Codigo;
    property Descricao: WideString read Get_Descricao;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfRetConsultarLoteOcorrenciaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA8792A4-50B5-40D3-A069-6853D328A235}
// *********************************************************************//
  IspdReinfRetConsultarLoteOcorrenciaDisp = dispinterface
    ['{EA8792A4-50B5-40D3-A069-6853D328A235}']
    property Codigo: WideString readonly dispid 201;
    property Descricao: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IspdReinfRetConsultarLoteOcorrenciaEnvio
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C0D7E7D-DF7A-4E12-9C27-56605ACD186D}
// *********************************************************************//
  IspdReinfRetConsultarLoteOcorrenciaEnvio = interface(IDispatch)
    ['{8C0D7E7D-DF7A-4E12-9C27-56605ACD186D}']
    function Get_Tipo: WideString; safecall;
    function Get_Codigo: WideString; safecall;
    function Get_Descricao: WideString; safecall;
    property Tipo: WideString read Get_Tipo;
    property Codigo: WideString read Get_Codigo;
    property Descricao: WideString read Get_Descricao;
  end;

// *********************************************************************//
// DispIntf:  IspdReinfRetConsultarLoteOcorrenciaEnvioDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C0D7E7D-DF7A-4E12-9C27-56605ACD186D}
// *********************************************************************//
  IspdReinfRetConsultarLoteOcorrenciaEnvioDisp = dispinterface
    ['{8C0D7E7D-DF7A-4E12-9C27-56605ACD186D}']
    property Tipo: WideString readonly dispid 201;
    property Codigo: WideString readonly dispid 202;
    property Descricao: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {872BD504-19CB-4232-A4F9-A37D56A82AA4}
// *********************************************************************//
  IspdR5011 = interface(IDispatch)
    ['{872BD504-19CB-4232-A4F9-A37D56A82AA4}']
    function Get_RComl(aIndex: Integer): IspdRComlR5011; safecall;
    function Get_RCPRB(aIndex: Integer): IspdRCPRBR5011; safecall;
    function Get_NrRecArqBase: WideString; safecall;
    function Get_IndExistInfo: Integer; safecall;
    function Get_RPrest(aIndex: Integer): IspdRPrestR5011; safecall;
    function Get_RRecRepAD(aIndex: Integer): IspdRRecRepADR5011; safecall;
    function CountRTom: Integer; safecall;
    function CountRComl: Integer; safecall;
    function CountRCPRB: Integer; safecall;
    function CountRPrest: Integer; safecall;
    function CountRRecRepAD: Integer; safecall;
    function Get_PeriodoApuracao: WideString; safecall;
    function Get_RTom(aIndex: Integer): IspdRTomR5011; safecall;
    function Get_IsEmpty: WordBool; safecall;
    property RComl[aIndex: Integer]: IspdRComlR5011 read Get_RComl;
    property RCPRB[aIndex: Integer]: IspdRCPRBR5011 read Get_RCPRB;
    property NrRecArqBase: WideString read Get_NrRecArqBase;
    property IndExistInfo: Integer read Get_IndExistInfo;
    property RPrest[aIndex: Integer]: IspdRPrestR5011 read Get_RPrest;
    property RRecRepAD[aIndex: Integer]: IspdRRecRepADR5011 read Get_RRecRepAD;
    property PeriodoApuracao: WideString read Get_PeriodoApuracao;
    property RTom[aIndex: Integer]: IspdRTomR5011 read Get_RTom;
    property IsEmpty: WordBool read Get_IsEmpty;
  end;

// *********************************************************************//
// DispIntf:  IspdR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {872BD504-19CB-4232-A4F9-A37D56A82AA4}
// *********************************************************************//
  IspdR5011Disp = dispinterface
    ['{872BD504-19CB-4232-A4F9-A37D56A82AA4}']
    property RComl[aIndex: Integer]: IspdRComlR5011 readonly dispid 207;
    property RCPRB[aIndex: Integer]: IspdRCPRBR5011 readonly dispid 209;
    property NrRecArqBase: WideString readonly dispid 211;
    property IndExistInfo: Integer readonly dispid 212;
    property RPrest[aIndex: Integer]: IspdRPrestR5011 readonly dispid 213;
    property RRecRepAD[aIndex: Integer]: IspdRRecRepADR5011 readonly dispid 203;
    function CountRTom: Integer; dispid 202;
    function CountRComl: Integer; dispid 204;
    function CountRCPRB: Integer; dispid 205;
    function CountRPrest: Integer; dispid 206;
    function CountRRecRepAD: Integer; dispid 208;
    property PeriodoApuracao: WideString readonly dispid 210;
    property RTom[aIndex: Integer]: IspdRTomR5011 readonly dispid 201;
    property IsEmpty: WordBool readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdRTomR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1DD33A5F-92CD-422C-ADB3-60321E4B2352}
// *********************************************************************//
  IspdRTomR5011 = interface(IDispatch)
    ['{1DD33A5F-92CD-422C-ADB3-60321E4B2352}']
    function Get_CnpjPrestador: WideString; safecall;
    function Get_VlrTotalBaseRet: WideString; safecall;
    function Get_InfoCRTom(aIndex: Integer): IspdInfoCRTomR5011; safecall;
    function CountInfoCRTom: Integer; safecall;
    function Get_CNO: WideString; safecall;
    property CnpjPrestador: WideString read Get_CnpjPrestador;
    property VlrTotalBaseRet: WideString read Get_VlrTotalBaseRet;
    property InfoCRTom[aIndex: Integer]: IspdInfoCRTomR5011 read Get_InfoCRTom;
    property CNO: WideString read Get_CNO;
  end;

// *********************************************************************//
// DispIntf:  IspdRTomR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1DD33A5F-92CD-422C-ADB3-60321E4B2352}
// *********************************************************************//
  IspdRTomR5011Disp = dispinterface
    ['{1DD33A5F-92CD-422C-ADB3-60321E4B2352}']
    property CnpjPrestador: WideString readonly dispid 201;
    property VlrTotalBaseRet: WideString readonly dispid 202;
    property InfoCRTom[aIndex: Integer]: IspdInfoCRTomR5011 readonly dispid 203;
    function CountInfoCRTom: Integer; dispid 204;
    property CNO: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IspdRPrestR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E485627E-1149-4A0D-B8F7-5C7DD1849927}
// *********************************************************************//
  IspdRPrestR5011 = interface(IDispatch)
    ['{E485627E-1149-4A0D-B8F7-5C7DD1849927}']
    function Get_TpInscTomador: WideString; safecall;
    function Get_NrInscTomador: WideString; safecall;
    function Get_VlrTotalBaseRet: WideString; safecall;
    function Get_VlrTotalRetAdic: WideString; safecall;
    function Get_VlrTotalNRetPrinc: WideString; safecall;
    function Get_VlrTotalNRetAdic: WideString; safecall;
    function Get_VlrTotalRetPrinc: WideString; safecall;
    property TpInscTomador: WideString read Get_TpInscTomador;
    property NrInscTomador: WideString read Get_NrInscTomador;
    property VlrTotalBaseRet: WideString read Get_VlrTotalBaseRet;
    property VlrTotalRetAdic: WideString read Get_VlrTotalRetAdic;
    property VlrTotalNRetPrinc: WideString read Get_VlrTotalNRetPrinc;
    property VlrTotalNRetAdic: WideString read Get_VlrTotalNRetAdic;
    property VlrTotalRetPrinc: WideString read Get_VlrTotalRetPrinc;
  end;

// *********************************************************************//
// DispIntf:  IspdRPrestR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E485627E-1149-4A0D-B8F7-5C7DD1849927}
// *********************************************************************//
  IspdRPrestR5011Disp = dispinterface
    ['{E485627E-1149-4A0D-B8F7-5C7DD1849927}']
    property TpInscTomador: WideString readonly dispid 201;
    property NrInscTomador: WideString readonly dispid 202;
    property VlrTotalBaseRet: WideString readonly dispid 203;
    property VlrTotalRetAdic: WideString readonly dispid 204;
    property VlrTotalNRetPrinc: WideString readonly dispid 205;
    property VlrTotalNRetAdic: WideString readonly dispid 206;
    property VlrTotalRetPrinc: WideString readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IspdRRecRepADR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FC92E65-2B1D-449D-9E96-FA6FA3A847E4}
// *********************************************************************//
  IspdRRecRepADR5011 = interface(IDispatch)
    ['{7FC92E65-2B1D-449D-9E96-FA6FA3A847E4}']
    function Get_CRRecRepAD: WideString; safecall;
    function Get_VlrCRRecRepAD: WideString; safecall;
    function Get_VlrCRRecRepADSusp: WideString; safecall;
    property CRRecRepAD: WideString read Get_CRRecRepAD;
    property VlrCRRecRepAD: WideString read Get_VlrCRRecRepAD;
    property VlrCRRecRepADSusp: WideString read Get_VlrCRRecRepADSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRRecRepADR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FC92E65-2B1D-449D-9E96-FA6FA3A847E4}
// *********************************************************************//
  IspdRRecRepADR5011Disp = dispinterface
    ['{7FC92E65-2B1D-449D-9E96-FA6FA3A847E4}']
    property CRRecRepAD: WideString readonly dispid 203;
    property VlrCRRecRepAD: WideString readonly dispid 204;
    property VlrCRRecRepADSusp: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IspdRComlR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FC51FFD-E0AE-4EA0-8A99-C39E2C224DD7}
// *********************************************************************//
  IspdRComlR5011 = interface(IDispatch)
    ['{7FC51FFD-E0AE-4EA0-8A99-C39E2C224DD7}']
    function Get_CRComl: WideString; safecall;
    function Get_VlrCRComl: WideString; safecall;
    function Get_VlrCRComlSusp: WideString; safecall;
    property CRComl: WideString read Get_CRComl;
    property VlrCRComl: WideString read Get_VlrCRComl;
    property VlrCRComlSusp: WideString read Get_VlrCRComlSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRComlR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FC51FFD-E0AE-4EA0-8A99-C39E2C224DD7}
// *********************************************************************//
  IspdRComlR5011Disp = dispinterface
    ['{7FC51FFD-E0AE-4EA0-8A99-C39E2C224DD7}']
    property CRComl: WideString readonly dispid 201;
    property VlrCRComl: WideString readonly dispid 202;
    property VlrCRComlSusp: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdRCPRBR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82925A9C-88EB-425E-9997-29305600CB80}
// *********************************************************************//
  IspdRCPRBR5011 = interface(IDispatch)
    ['{82925A9C-88EB-425E-9997-29305600CB80}']
    function Get_vlrCRCPRB: WideString; safecall;
    function Get_vlrCRCPRBSusp: WideString; safecall;
    function Get_CRCPRB: WideString; safecall;
    property vlrCRCPRB: WideString read Get_vlrCRCPRB;
    property vlrCRCPRBSusp: WideString read Get_vlrCRCPRBSusp;
    property CRCPRB: WideString read Get_CRCPRB;
  end;

// *********************************************************************//
// DispIntf:  IspdRCPRBR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82925A9C-88EB-425E-9997-29305600CB80}
// *********************************************************************//
  IspdRCPRBR5011Disp = dispinterface
    ['{82925A9C-88EB-425E-9997-29305600CB80}']
    property vlrCRCPRB: WideString readonly dispid 201;
    property vlrCRCPRBSusp: WideString readonly dispid 202;
    property CRCPRB: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B3EADAD7-4911-44C7-99DE-93BC14D9D4F9}
// *********************************************************************//
  IspdR5001 = interface(IDispatch)
    ['{B3EADAD7-4911-44C7-99DE-93BC14D9D4F9}']
    function Get_RTom(aIndex: Integer): IspdRTomR5001; safecall;
    function Get_RComl(aIndex: Integer): IspdRComlR5001; safecall;
    function Get_RCPRB(aIndex: Integer): IspdRCPRBR5001; safecall;
    function Get_RPrest(aIndex: Integer): IspdRPrestR5001; safecall;
    function Get_RRecRepAD(aIndex: Integer): IspdRRecRepADR5001; safecall;
    function CountRTom: Integer; safecall;
    function CountRComl: Integer; safecall;
    function CountRCPRB: Integer; safecall;
    function CountRPrest: Integer; safecall;
    function CountRRecRepAD: Integer; safecall;
    function Get_PeriodoApuracao: WideString; safecall;
    function Get_RRecEspetDesp(aIndex: Integer): IspdRRecEspetDespR5001; safecall;
    function CountRRecEspetDesp: Integer; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Get_IdeContri: IspdIdeContriR5001; safecall;
    function Get_InfoTotal: IspdInfoTotalR5001; safecall;
    function Get_IdeEmp: IspdIdeEstabR5001; safecall;
    property RTom[aIndex: Integer]: IspdRTomR5001 read Get_RTom;
    property RComl[aIndex: Integer]: IspdRComlR5001 read Get_RComl;
    property RCPRB[aIndex: Integer]: IspdRCPRBR5001 read Get_RCPRB;
    property RPrest[aIndex: Integer]: IspdRPrestR5001 read Get_RPrest;
    property RRecRepAD[aIndex: Integer]: IspdRRecRepADR5001 read Get_RRecRepAD;
    property PeriodoApuracao: WideString read Get_PeriodoApuracao;
    property RRecEspetDesp[aIndex: Integer]: IspdRRecEspetDespR5001 read Get_RRecEspetDesp;
    property IsEmpty: WordBool read Get_IsEmpty;
    property IdeContri: IspdIdeContriR5001 read Get_IdeContri;
    property InfoTotal: IspdInfoTotalR5001 read Get_InfoTotal;
    property IdeEmp: IspdIdeEstabR5001 read Get_IdeEmp;
  end;

// *********************************************************************//
// DispIntf:  IspdR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B3EADAD7-4911-44C7-99DE-93BC14D9D4F9}
// *********************************************************************//
  IspdR5001Disp = dispinterface
    ['{B3EADAD7-4911-44C7-99DE-93BC14D9D4F9}']
    property RTom[aIndex: Integer]: IspdRTomR5001 readonly dispid 201;
    property RComl[aIndex: Integer]: IspdRComlR5001 readonly dispid 202;
    property RCPRB[aIndex: Integer]: IspdRCPRBR5001 readonly dispid 203;
    property RPrest[aIndex: Integer]: IspdRPrestR5001 readonly dispid 204;
    property RRecRepAD[aIndex: Integer]: IspdRRecRepADR5001 readonly dispid 205;
    function CountRTom: Integer; dispid 206;
    function CountRComl: Integer; dispid 207;
    function CountRCPRB: Integer; dispid 208;
    function CountRPrest: Integer; dispid 209;
    function CountRRecRepAD: Integer; dispid 210;
    property PeriodoApuracao: WideString readonly dispid 211;
    property RRecEspetDesp[aIndex: Integer]: IspdRRecEspetDespR5001 readonly dispid 214;
    function CountRRecEspetDesp: Integer; dispid 215;
    property IsEmpty: WordBool readonly dispid 217;
    property IdeContri: IspdIdeContriR5001 readonly dispid 218;
    property InfoTotal: IspdInfoTotalR5001 readonly dispid 212;
    property IdeEmp: IspdIdeEstabR5001 readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IspdInfoCRTomR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E658D4DD-9631-4AC1-8B1B-704ED4BAF747}
// *********************************************************************//
  IspdInfoCRTomR5001 = interface(IDispatch)
    ['{E658D4DD-9631-4AC1-8B1B-704ED4BAF747}']
    function Get_CRTom: WideString; safecall;
    function Get_VlrCRTom: WideString; safecall;
    function Get_VlrCRTomSusp: WideString; safecall;
    property CRTom: WideString read Get_CRTom;
    property VlrCRTom: WideString read Get_VlrCRTom;
    property VlrCRTomSusp: WideString read Get_VlrCRTomSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdInfoCRTomR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E658D4DD-9631-4AC1-8B1B-704ED4BAF747}
// *********************************************************************//
  IspdInfoCRTomR5001Disp = dispinterface
    ['{E658D4DD-9631-4AC1-8B1B-704ED4BAF747}']
    property CRTom: WideString readonly dispid 201;
    property VlrCRTom: WideString readonly dispid 202;
    property VlrCRTomSusp: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdRTomR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45D4688C-D2C5-4EC8-B13B-65FEF41AC629}
// *********************************************************************//
  IspdRTomR5001 = interface(IDispatch)
    ['{45D4688C-D2C5-4EC8-B13B-65FEF41AC629}']
    function Get_CnpjPrestador: WideString; safecall;
    function Get_VlrTotalBaseRet: WideString; safecall;
    function Get_InfoCRTom(aIndex: Integer): IspdInfoCRTomR5001; safecall;
    function CountInfoCRTom: Integer; safecall;
    function Get_CNO: WideString; safecall;
    property CnpjPrestador: WideString read Get_CnpjPrestador;
    property VlrTotalBaseRet: WideString read Get_VlrTotalBaseRet;
    property InfoCRTom[aIndex: Integer]: IspdInfoCRTomR5001 read Get_InfoCRTom;
    property CNO: WideString read Get_CNO;
  end;

// *********************************************************************//
// DispIntf:  IspdRTomR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45D4688C-D2C5-4EC8-B13B-65FEF41AC629}
// *********************************************************************//
  IspdRTomR5001Disp = dispinterface
    ['{45D4688C-D2C5-4EC8-B13B-65FEF41AC629}']
    property CnpjPrestador: WideString readonly dispid 201;
    property VlrTotalBaseRet: WideString readonly dispid 202;
    property InfoCRTom[aIndex: Integer]: IspdInfoCRTomR5001 readonly dispid 203;
    function CountInfoCRTom: Integer; dispid 204;
    property CNO: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IspdRPrestR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C8ED912-C050-4555-AFD1-06CB0F86468C}
// *********************************************************************//
  IspdRPrestR5001 = interface(IDispatch)
    ['{1C8ED912-C050-4555-AFD1-06CB0F86468C}']
    function Get_TpInscTomador: WideString; safecall;
    function Get_NrInscTomador: WideString; safecall;
    function Get_VlrTotalBaseRet: WideString; safecall;
    function Get_VlrTotalRetPrinc: WideString; safecall;
    function Get_VlrTotalRetAdic: WideString; safecall;
    function Get_VlrTotalNRetPrinc: WideString; safecall;
    function Get_VlrTotalNRetAdic: WideString; safecall;
    property TpInscTomador: WideString read Get_TpInscTomador;
    property NrInscTomador: WideString read Get_NrInscTomador;
    property VlrTotalBaseRet: WideString read Get_VlrTotalBaseRet;
    property VlrTotalRetPrinc: WideString read Get_VlrTotalRetPrinc;
    property VlrTotalRetAdic: WideString read Get_VlrTotalRetAdic;
    property VlrTotalNRetPrinc: WideString read Get_VlrTotalNRetPrinc;
    property VlrTotalNRetAdic: WideString read Get_VlrTotalNRetAdic;
  end;

// *********************************************************************//
// DispIntf:  IspdRPrestR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C8ED912-C050-4555-AFD1-06CB0F86468C}
// *********************************************************************//
  IspdRPrestR5001Disp = dispinterface
    ['{1C8ED912-C050-4555-AFD1-06CB0F86468C}']
    property TpInscTomador: WideString readonly dispid 201;
    property NrInscTomador: WideString readonly dispid 202;
    property VlrTotalBaseRet: WideString readonly dispid 203;
    property VlrTotalRetPrinc: WideString readonly dispid 204;
    property VlrTotalRetAdic: WideString readonly dispid 205;
    property VlrTotalNRetPrinc: WideString readonly dispid 206;
    property VlrTotalNRetAdic: WideString readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IspdRRecRepADR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09FDF988-493B-4768-AE08-E7FE0392F931}
// *********************************************************************//
  IspdRRecRepADR5001 = interface(IDispatch)
    ['{09FDF988-493B-4768-AE08-E7FE0392F931}']
    function Get_CnpjAssocDesp: WideString; safecall;
    function Get_VlrTotalRep: WideString; safecall;
    function Get_CRRecRepAD: WideString; safecall;
    function Get_VlrCRRecRepAD: WideString; safecall;
    function Get_VlrCRRecRepADSusp: WideString; safecall;
    property CnpjAssocDesp: WideString read Get_CnpjAssocDesp;
    property VlrTotalRep: WideString read Get_VlrTotalRep;
    property CRRecRepAD: WideString read Get_CRRecRepAD;
    property VlrCRRecRepAD: WideString read Get_VlrCRRecRepAD;
    property VlrCRRecRepADSusp: WideString read Get_VlrCRRecRepADSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRRecRepADR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09FDF988-493B-4768-AE08-E7FE0392F931}
// *********************************************************************//
  IspdRRecRepADR5001Disp = dispinterface
    ['{09FDF988-493B-4768-AE08-E7FE0392F931}']
    property CnpjAssocDesp: WideString readonly dispid 201;
    property VlrTotalRep: WideString readonly dispid 202;
    property CRRecRepAD: WideString readonly dispid 203;
    property VlrCRRecRepAD: WideString readonly dispid 204;
    property VlrCRRecRepADSusp: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IspdRComlR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A825066-9DA2-493B-A7EB-CCCB5902B7D7}
// *********************************************************************//
  IspdRComlR5001 = interface(IDispatch)
    ['{5A825066-9DA2-493B-A7EB-CCCB5902B7D7}']
    function Get_CRComl: WideString; safecall;
    function Get_VlrCRComl: WideString; safecall;
    function Get_VlrCRComlSusp: WideString; safecall;
    property CRComl: WideString read Get_CRComl;
    property VlrCRComl: WideString read Get_VlrCRComl;
    property VlrCRComlSusp: WideString read Get_VlrCRComlSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRComlR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A825066-9DA2-493B-A7EB-CCCB5902B7D7}
// *********************************************************************//
  IspdRComlR5001Disp = dispinterface
    ['{5A825066-9DA2-493B-A7EB-CCCB5902B7D7}']
    property CRComl: WideString readonly dispid 201;
    property VlrCRComl: WideString readonly dispid 202;
    property VlrCRComlSusp: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdRCPRBR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6DE27B8C-84AA-4334-8681-33AEACD5B262}
// *********************************************************************//
  IspdRCPRBR5001 = interface(IDispatch)
    ['{6DE27B8C-84AA-4334-8681-33AEACD5B262}']
    function Get_CRCPRB: WideString; safecall;
    function Get_vlrCRCPRB: WideString; safecall;
    function Get_vlrCRCPRBSusp: WideString; safecall;
    property CRCPRB: WideString read Get_CRCPRB;
    property vlrCRCPRB: WideString read Get_vlrCRCPRB;
    property vlrCRCPRBSusp: WideString read Get_vlrCRCPRBSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRCPRBR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6DE27B8C-84AA-4334-8681-33AEACD5B262}
// *********************************************************************//
  IspdRCPRBR5001Disp = dispinterface
    ['{6DE27B8C-84AA-4334-8681-33AEACD5B262}']
    property CRCPRB: WideString readonly dispid 201;
    property vlrCRCPRB: WideString readonly dispid 202;
    property vlrCRCPRBSusp: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdRRecEspetDespR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3670AE84-C63A-4762-ACFB-71FD15254650}
// *********************************************************************//
  IspdRRecEspetDespR5001 = interface(IDispatch)
    ['{3670AE84-C63A-4762-ACFB-71FD15254650}']
    function Get_CRRecEspetDesp: WideString; safecall;
    function Get_VlrReceitaTotal: WideString; safecall;
    function Get_VlrCRRecEspetDesp: WideString; safecall;
    function Get_VlrCRRecEspetDespSusp: WideString; safecall;
    property CRRecEspetDesp: WideString read Get_CRRecEspetDesp;
    property VlrReceitaTotal: WideString read Get_VlrReceitaTotal;
    property VlrCRRecEspetDesp: WideString read Get_VlrCRRecEspetDesp;
    property VlrCRRecEspetDespSusp: WideString read Get_VlrCRRecEspetDespSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdRRecEspetDespR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3670AE84-C63A-4762-ACFB-71FD15254650}
// *********************************************************************//
  IspdRRecEspetDespR5001Disp = dispinterface
    ['{3670AE84-C63A-4762-ACFB-71FD15254650}']
    property CRRecEspetDesp: WideString readonly dispid 201;
    property VlrReceitaTotal: WideString readonly dispid 202;
    property VlrCRRecEspetDesp: WideString readonly dispid 203;
    property VlrCRRecEspetDespSusp: WideString readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IspdInfoCRTomR5011
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A352025-DC09-470D-B973-31D6B73673E1}
// *********************************************************************//
  IspdInfoCRTomR5011 = interface(IDispatch)
    ['{2A352025-DC09-470D-B973-31D6B73673E1}']
    function Get_CRTom: WideString; safecall;
    function Get_VlrCRTom: WideString; safecall;
    function Get_VlrCRTomSusp: WideString; safecall;
    property CRTom: WideString read Get_CRTom;
    property VlrCRTom: WideString read Get_VlrCRTom;
    property VlrCRTomSusp: WideString read Get_VlrCRTomSusp;
  end;

// *********************************************************************//
// DispIntf:  IspdInfoCRTomR5011Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A352025-DC09-470D-B973-31D6B73673E1}
// *********************************************************************//
  IspdInfoCRTomR5011Disp = dispinterface
    ['{2A352025-DC09-470D-B973-31D6B73673E1}']
    property CRTom: WideString readonly dispid 201;
    property VlrCRTom: WideString readonly dispid 202;
    property VlrCRTomSusp: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IspdIdeContriR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0BEE9DC8-CC9D-46C0-8A64-870EBCE792D9}
// *********************************************************************//
  IspdIdeContriR5001 = interface(IDispatch)
    ['{0BEE9DC8-CC9D-46C0-8A64-870EBCE792D9}']
    function Get_NrInsc: WideString; safecall;
    function Get_TpInsc: WideString; safecall;
    property NrInsc: WideString read Get_NrInsc;
    property TpInsc: WideString read Get_TpInsc;
  end;

// *********************************************************************//
// DispIntf:  IspdIdeContriR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0BEE9DC8-CC9D-46C0-8A64-870EBCE792D9}
// *********************************************************************//
  IspdIdeContriR5001Disp = dispinterface
    ['{0BEE9DC8-CC9D-46C0-8A64-870EBCE792D9}']
    property NrInsc: WideString readonly dispid 201;
    property TpInsc: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IspdInfoTotalR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F7404B3-CD03-4850-AAAA-2ED67104785A}
// *********************************************************************//
  IspdInfoTotalR5001 = interface(IDispatch)
    ['{9F7404B3-CD03-4850-AAAA-2ED67104785A}']
    function Get_NrRecArqBase: WideString; safecall;
    property NrRecArqBase: WideString read Get_NrRecArqBase;
  end;

// *********************************************************************//
// DispIntf:  IspdInfoTotalR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F7404B3-CD03-4850-AAAA-2ED67104785A}
// *********************************************************************//
  IspdInfoTotalR5001Disp = dispinterface
    ['{9F7404B3-CD03-4850-AAAA-2ED67104785A}']
    property NrRecArqBase: WideString readonly dispid 201;
  end;

// *********************************************************************//
// Interface: IspdIdeEstabR5001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DA5E8F3-F723-4131-B714-6300F413196F}
// *********************************************************************//
  IspdIdeEstabR5001 = interface(IDispatch)
    ['{9DA5E8F3-F723-4131-B714-6300F413196F}']
    function Get_NrInsc: WideString; safecall;
    function Get_TpInsc: WideString; safecall;
    property NrInsc: WideString read Get_NrInsc;
    property TpInsc: WideString read Get_TpInsc;
  end;

// *********************************************************************//
// DispIntf:  IspdIdeEstabR5001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DA5E8F3-F723-4131-B714-6300F413196F}
// *********************************************************************//
  IspdIdeEstabR5001Disp = dispinterface
    ['{9DA5E8F3-F723-4131-B714-6300F413196F}']
    property NrInsc: WideString readonly dispid 201;
    property TpInsc: WideString readonly dispid 202;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TspdReinfClientX
// Help String      : 
// Default Interface: IspdReinfClientX
// Def. Intf. DISP? : No
// Event   Interface: IspdReinfClientXEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TspdReinfClientX = class(TOleControl)
  private
    FIntf: IspdReinfClientX;
    function  GetControlInterface: IspdReinfClientX;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function AssinarEvento(const aXML: WideString): WideString;
    function ListarCertificados(const aDelimitador: WideString): WideString;
    function GerarXMLporTx2(const aTX2Content: WideString): WideString;
    function EnviarLoteEventos(const aXmlLote: WideString): IspdReinfRetEnviarLoteEventos;
    function ConsultarLoteEventos(const aIdLoteEventos: WideString): IspdReinfRetConsultarLote;
    procedure ConfigurarSoftwareHouse(const aCpfCnpjSH: WideString; const aTokenSH: WideString);
    function GetVencimentoCertificado: WideString;
    function ListarVersaoManual(const aDelimitador: WideString): WideString;
    function ConsultarIdEvento(const aIdEvento: WideString): IspdReinfRetConsultarLote;
    function ConsultarEventoPorRecibo(const aNumeroRecibo: WideString): IspdReinfRetConsultarLote;
    property  ControlInterface: IspdReinfClientX read GetControlInterface;
    property  DefaultInterface: IspdReinfClientX read GetControlInterface;
    property Versao: WideString index 242 read GetWideStringProp;
  published
    property Anchors;
    property DiretorioEsquemas: WideString index 201 read GetWideStringProp write SetWideStringProp stored False;
    property DiretorioTemplates: WideString index 202 read GetWideStringProp write SetWideStringProp stored False;
    property DiretorioLogErro: WideString index 204 read GetWideStringProp write SetWideStringProp stored False;
    property TipoCertificado: TOleEnum index 208 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property NomeCertificado: WideString index 209 read GetWideStringProp write SetWideStringProp stored False;
    property Ambiente: TOleEnum index 203 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Pincode: WideString index 205 read GetWideStringProp write SetWideStringProp stored False;
    property CpfCnpjEmpregador: WideString index 207 read GetWideStringProp write SetWideStringProp stored False;
    property ProxyServidor: WideString index 206 read GetWideStringProp write SetWideStringProp stored False;
    property ProxyUsuario: WideString index 216 read GetWideStringProp write SetWideStringProp stored False;
    property ProxySenha: WideString index 218 read GetWideStringProp write SetWideStringProp stored False;
    property CaminhoCertificado: WideString index 215 read GetWideStringProp write SetWideStringProp stored False;
    property SenhaCertificado: WideString index 219 read GetWideStringProp write SetWideStringProp stored False;
    property VersaoManual: WideString index 211 read GetWideStringProp write SetWideStringProp stored False;
  end;

// *********************************************************************//
// The Class CospdReinfRetEnviarLoteEventos provides a Create and CreateRemote method to          
// create instances of the default interface IspdReinfRetEnviarLoteEventos exposed by              
// the CoClass spdReinfRetEnviarLoteEventos. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdReinfRetEnviarLoteEventos = class
    class function Create: IspdReinfRetEnviarLoteEventos;
    class function CreateRemote(const MachineName: string): IspdReinfRetEnviarLoteEventos;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TspdReinfRetConsultarLote
// Help String      : 
// Default Interface: IspdReinfRetConsultarLote
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TspdReinfRetConsultarLote = class(TOleControl)
  private
    FIntf: IspdReinfRetConsultarLote;
    function  GetControlInterface: IspdReinfRetConsultarLote;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Eventos(aIndex: Integer): IspdReinfRetConsultarLoteItem;
    function Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrenciaEnvio;
  public
    function Count: Integer;
    function CountOcorrencias: Integer;
    property  ControlInterface: IspdReinfRetConsultarLote read GetControlInterface;
    property  DefaultInterface: IspdReinfRetConsultarLote read GetControlInterface;
    property NumeroProtocolo: WideString index 201 read GetWideStringProp;
    property Mensagem: WideString index 203 read GetWideStringProp;
    property Eventos[aIndex: Integer]: IspdReinfRetConsultarLoteItem read Get_Eventos;
    property Situacao: WideString index 206 read GetWideStringProp;
    property Status: WideString index 207 read GetWideStringProp;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrenciaEnvio read Get_Ocorrencias;
    property XmlRetorno: WideString index 209 read GetWideStringProp;
    property XmlEnviado: WideString index 210 read GetWideStringProp;
    property JsonRetorno: WideString index 211 read GetWideStringProp;
  published
    property Anchors;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TspdReinfRetConsultarLoteItem
// Help String      : 
// Default Interface: IspdReinfRetConsultarLoteItem
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TspdReinfRetConsultarLoteItem = class(TOleControl)
  private
    FIntf: IspdReinfRetConsultarLoteItem;
    function  GetControlInterface: IspdReinfRetConsultarLoteItem;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrencia;
    function Get_R5011: IspdR5011;
    function Get_R5001: IspdR5001;
  public
    function Count: Integer;
    property  ControlInterface: IspdReinfRetConsultarLoteItem read GetControlInterface;
    property  DefaultInterface: IspdReinfRetConsultarLoteItem read GetControlInterface;
    property NumeroRecibo: WideString index 201 read GetWideStringProp;
    property IdEvento: WideString index 202 read GetWideStringProp;
    property cStat: WideString index 203 read GetWideStringProp;
    property Mensagem: WideString index 204 read GetWideStringProp;
    property Ocorrencias[aIndex: Integer]: IspdReinfRetConsultarLoteOcorrencia read Get_Ocorrencias;
    property Situacao: WideString index 207 read GetWideStringProp;
    property Status: WideString index 208 read GetWideStringProp;
    property R5011: IspdR5011 read Get_R5011;
    property R5001: IspdR5001 read Get_R5001;
  published
    property Anchors;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TspdReinfRetConsultarLoteOcorrencia
// Help String      : 
// Default Interface: IspdReinfRetConsultarLoteOcorrencia
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TspdReinfRetConsultarLoteOcorrencia = class(TOleControl)
  private
    FIntf: IspdReinfRetConsultarLoteOcorrencia;
    function  GetControlInterface: IspdReinfRetConsultarLoteOcorrencia;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    property  ControlInterface: IspdReinfRetConsultarLoteOcorrencia read GetControlInterface;
    property  DefaultInterface: IspdReinfRetConsultarLoteOcorrencia read GetControlInterface;
    property Codigo: WideString index 201 read GetWideStringProp;
    property Descricao: WideString index 202 read GetWideStringProp;
  published
    property Anchors;
  end;

// *********************************************************************//
// The Class CospdReinfRetConsultarLoteOcorrenciaEnvio provides a Create and CreateRemote method to          
// create instances of the default interface IspdReinfRetConsultarLoteOcorrenciaEnvio exposed by              
// the CoClass spdReinfRetConsultarLoteOcorrenciaEnvio. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdReinfRetConsultarLoteOcorrenciaEnvio = class
    class function Create: IspdReinfRetConsultarLoteOcorrenciaEnvio;
    class function CreateRemote(const MachineName: string): IspdReinfRetConsultarLoteOcorrenciaEnvio;
  end;

// *********************************************************************//
// The Class CospdR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdR5011 exposed by              
// the CoClass spdR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdR5011 = class
    class function Create: IspdR5011;
    class function CreateRemote(const MachineName: string): IspdR5011;
  end;

// *********************************************************************//
// The Class CospdRTomR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRTomR5011 exposed by              
// the CoClass spdRTomR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRTomR5011 = class
    class function Create: IspdRTomR5011;
    class function CreateRemote(const MachineName: string): IspdRTomR5011;
  end;

// *********************************************************************//
// The Class CospdRPrestR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRPrestR5011 exposed by              
// the CoClass spdRPrestR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRPrestR5011 = class
    class function Create: IspdRPrestR5011;
    class function CreateRemote(const MachineName: string): IspdRPrestR5011;
  end;

// *********************************************************************//
// The Class CospdRRecRepADR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRRecRepADR5011 exposed by              
// the CoClass spdRRecRepADR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRRecRepADR5011 = class
    class function Create: IspdRRecRepADR5011;
    class function CreateRemote(const MachineName: string): IspdRRecRepADR5011;
  end;

// *********************************************************************//
// The Class CospdRComlR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRComlR5011 exposed by              
// the CoClass spdRComlR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRComlR5011 = class
    class function Create: IspdRComlR5011;
    class function CreateRemote(const MachineName: string): IspdRComlR5011;
  end;

// *********************************************************************//
// The Class CospdRCPRBR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRCPRBR5011 exposed by              
// the CoClass spdRCPRBR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRCPRBR5011 = class
    class function Create: IspdRCPRBR5011;
    class function CreateRemote(const MachineName: string): IspdRCPRBR5011;
  end;

// *********************************************************************//
// The Class CospdR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdR5001 exposed by              
// the CoClass spdR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdR5001 = class
    class function Create: IspdR5001;
    class function CreateRemote(const MachineName: string): IspdR5001;
  end;

// *********************************************************************//
// The Class CospdInfoCRTomR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdInfoCRTomR5001 exposed by              
// the CoClass spdInfoCRTomR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdInfoCRTomR5001 = class
    class function Create: IspdInfoCRTomR5001;
    class function CreateRemote(const MachineName: string): IspdInfoCRTomR5001;
  end;

// *********************************************************************//
// The Class CospdRTomR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRTomR5001 exposed by              
// the CoClass spdRTomR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRTomR5001 = class
    class function Create: IspdRTomR5001;
    class function CreateRemote(const MachineName: string): IspdRTomR5001;
  end;

// *********************************************************************//
// The Class CospdRPrestR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRPrestR5001 exposed by              
// the CoClass spdRPrestR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRPrestR5001 = class
    class function Create: IspdRPrestR5001;
    class function CreateRemote(const MachineName: string): IspdRPrestR5001;
  end;

// *********************************************************************//
// The Class CospdRRecRepADR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRRecRepADR5001 exposed by              
// the CoClass spdRRecRepADR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRRecRepADR5001 = class
    class function Create: IspdRRecRepADR5001;
    class function CreateRemote(const MachineName: string): IspdRRecRepADR5001;
  end;

// *********************************************************************//
// The Class CospdRComlR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRComlR5001 exposed by              
// the CoClass spdRComlR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRComlR5001 = class
    class function Create: IspdRComlR5001;
    class function CreateRemote(const MachineName: string): IspdRComlR5001;
  end;

// *********************************************************************//
// The Class CospdRCPRBR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRCPRBR5001 exposed by              
// the CoClass spdRCPRBR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRCPRBR5001 = class
    class function Create: IspdRCPRBR5001;
    class function CreateRemote(const MachineName: string): IspdRCPRBR5001;
  end;

// *********************************************************************//
// The Class CospdRRecEspetDespR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdRRecEspetDespR5001 exposed by              
// the CoClass spdRRecEspetDespR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRRecEspetDespR5001 = class
    class function Create: IspdRRecEspetDespR5001;
    class function CreateRemote(const MachineName: string): IspdRRecEspetDespR5001;
  end;

// *********************************************************************//
// The Class CospdInfoCRTomR5011 provides a Create and CreateRemote method to          
// create instances of the default interface IspdInfoCRTomR5011 exposed by              
// the CoClass spdInfoCRTomR5011. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdInfoCRTomR5011 = class
    class function Create: IspdInfoCRTomR5011;
    class function CreateRemote(const MachineName: string): IspdInfoCRTomR5011;
  end;

// *********************************************************************//
// The Class CospdIdeContriR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdIdeContriR5001 exposed by              
// the CoClass spdIdeContriR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdIdeContriR5001 = class
    class function Create: IspdIdeContriR5001;
    class function CreateRemote(const MachineName: string): IspdIdeContriR5001;
  end;

// *********************************************************************//
// The Class CospdInfoTotalR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdInfoTotalR5001 exposed by              
// the CoClass spdInfoTotalR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdInfoTotalR5001 = class
    class function Create: IspdInfoTotalR5001;
    class function CreateRemote(const MachineName: string): IspdInfoTotalR5001;
  end;

// *********************************************************************//
// The Class CospdIdeEstabR5001 provides a Create and CreateRemote method to          
// create instances of the default interface IspdIdeEstabR5001 exposed by              
// the CoClass spdIdeEstabR5001. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdIdeEstabR5001 = class
    class function Create: IspdIdeEstabR5001;
    class function CreateRemote(const MachineName: string): IspdIdeEstabR5001;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TspdReinfClientX.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{52D1204A-B80F-4B91-B4D7-38E235C26BD2}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TspdReinfClientX.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IspdReinfClientX;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TspdReinfClientX.GetControlInterface: IspdReinfClientX;
begin
  CreateControl;
  Result := FIntf;
end;

function TspdReinfClientX.AssinarEvento(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.AssinarEvento(aXML);
end;

function TspdReinfClientX.ListarCertificados(const aDelimitador: WideString): WideString;
begin
  Result := DefaultInterface.ListarCertificados(aDelimitador);
end;

function TspdReinfClientX.GerarXMLporTx2(const aTX2Content: WideString): WideString;
begin
  Result := DefaultInterface.GerarXMLporTx2(aTX2Content);
end;

function TspdReinfClientX.EnviarLoteEventos(const aXmlLote: WideString): IspdReinfRetEnviarLoteEventos;
begin
  Result := DefaultInterface.EnviarLoteEventos(aXmlLote);
end;

function TspdReinfClientX.ConsultarLoteEventos(const aIdLoteEventos: WideString): IspdReinfRetConsultarLote;
begin
  Result := DefaultInterface.ConsultarLoteEventos(aIdLoteEventos);
end;

procedure TspdReinfClientX.ConfigurarSoftwareHouse(const aCpfCnpjSH: WideString; 
                                                   const aTokenSH: WideString);
begin
  DefaultInterface.ConfigurarSoftwareHouse(aCpfCnpjSH, aTokenSH);
end;

function TspdReinfClientX.GetVencimentoCertificado: WideString;
begin
  Result := DefaultInterface.GetVencimentoCertificado;
end;

function TspdReinfClientX.ListarVersaoManual(const aDelimitador: WideString): WideString;
begin
  Result := DefaultInterface.ListarVersaoManual(aDelimitador);
end;

function TspdReinfClientX.ConsultarIdEvento(const aIdEvento: WideString): IspdReinfRetConsultarLote;
begin
  Result := DefaultInterface.ConsultarIdEvento(aIdEvento);
end;

function TspdReinfClientX.ConsultarEventoPorRecibo(const aNumeroRecibo: WideString): IspdReinfRetConsultarLote;
begin
  Result := DefaultInterface.ConsultarEventoPorRecibo(aNumeroRecibo);
end;

class function CospdReinfRetEnviarLoteEventos.Create: IspdReinfRetEnviarLoteEventos;
begin
  Result := CreateComObject(CLASS_spdReinfRetEnviarLoteEventos) as IspdReinfRetEnviarLoteEventos;
end;

class function CospdReinfRetEnviarLoteEventos.CreateRemote(const MachineName: string): IspdReinfRetEnviarLoteEventos;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdReinfRetEnviarLoteEventos) as IspdReinfRetEnviarLoteEventos;
end;

procedure TspdReinfRetConsultarLote.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{6A503CF9-6517-4394-BFA1-CFDF8EE023A0}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$80040154*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TspdReinfRetConsultarLote.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IspdReinfRetConsultarLote;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TspdReinfRetConsultarLote.GetControlInterface: IspdReinfRetConsultarLote;
begin
  CreateControl;
  Result := FIntf;
end;

function TspdReinfRetConsultarLote.Get_Eventos(aIndex: Integer): IspdReinfRetConsultarLoteItem;
begin
    Result := DefaultInterface.Eventos[aIndex];
end;

function TspdReinfRetConsultarLote.Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrenciaEnvio;
begin
    Result := DefaultInterface.Ocorrencias[aIndex];
end;

function TspdReinfRetConsultarLote.Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TspdReinfRetConsultarLote.CountOcorrencias: Integer;
begin
  Result := DefaultInterface.CountOcorrencias;
end;

procedure TspdReinfRetConsultarLoteItem.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{1935EAD3-2285-4235-97AC-9A9A9E7F0A48}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TspdReinfRetConsultarLoteItem.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IspdReinfRetConsultarLoteItem;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TspdReinfRetConsultarLoteItem.GetControlInterface: IspdReinfRetConsultarLoteItem;
begin
  CreateControl;
  Result := FIntf;
end;

function TspdReinfRetConsultarLoteItem.Get_Ocorrencias(aIndex: Integer): IspdReinfRetConsultarLoteOcorrencia;
begin
    Result := DefaultInterface.Ocorrencias[aIndex];
end;

function TspdReinfRetConsultarLoteItem.Get_R5011: IspdR5011;
begin
    Result := DefaultInterface.R5011;
end;

function TspdReinfRetConsultarLoteItem.Get_R5001: IspdR5001;
begin
    Result := DefaultInterface.R5001;
end;

function TspdReinfRetConsultarLoteItem.Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

procedure TspdReinfRetConsultarLoteOcorrencia.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{B5CFC863-FC4B-4113-96CE-76FAC83235BA}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TspdReinfRetConsultarLoteOcorrencia.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IspdReinfRetConsultarLoteOcorrencia;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TspdReinfRetConsultarLoteOcorrencia.GetControlInterface: IspdReinfRetConsultarLoteOcorrencia;
begin
  CreateControl;
  Result := FIntf;
end;

class function CospdReinfRetConsultarLoteOcorrenciaEnvio.Create: IspdReinfRetConsultarLoteOcorrenciaEnvio;
begin
  Result := CreateComObject(CLASS_spdReinfRetConsultarLoteOcorrenciaEnvio) as IspdReinfRetConsultarLoteOcorrenciaEnvio;
end;

class function CospdReinfRetConsultarLoteOcorrenciaEnvio.CreateRemote(const MachineName: string): IspdReinfRetConsultarLoteOcorrenciaEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdReinfRetConsultarLoteOcorrenciaEnvio) as IspdReinfRetConsultarLoteOcorrenciaEnvio;
end;

class function CospdR5011.Create: IspdR5011;
begin
  Result := CreateComObject(CLASS_spdR5011) as IspdR5011;
end;

class function CospdR5011.CreateRemote(const MachineName: string): IspdR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdR5011) as IspdR5011;
end;

class function CospdRTomR5011.Create: IspdRTomR5011;
begin
  Result := CreateComObject(CLASS_spdRTomR5011) as IspdRTomR5011;
end;

class function CospdRTomR5011.CreateRemote(const MachineName: string): IspdRTomR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRTomR5011) as IspdRTomR5011;
end;

class function CospdRPrestR5011.Create: IspdRPrestR5011;
begin
  Result := CreateComObject(CLASS_spdRPrestR5011) as IspdRPrestR5011;
end;

class function CospdRPrestR5011.CreateRemote(const MachineName: string): IspdRPrestR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRPrestR5011) as IspdRPrestR5011;
end;

class function CospdRRecRepADR5011.Create: IspdRRecRepADR5011;
begin
  Result := CreateComObject(CLASS_spdRRecRepADR5011) as IspdRRecRepADR5011;
end;

class function CospdRRecRepADR5011.CreateRemote(const MachineName: string): IspdRRecRepADR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRRecRepADR5011) as IspdRRecRepADR5011;
end;

class function CospdRComlR5011.Create: IspdRComlR5011;
begin
  Result := CreateComObject(CLASS_spdRComlR5011) as IspdRComlR5011;
end;

class function CospdRComlR5011.CreateRemote(const MachineName: string): IspdRComlR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRComlR5011) as IspdRComlR5011;
end;

class function CospdRCPRBR5011.Create: IspdRCPRBR5011;
begin
  Result := CreateComObject(CLASS_spdRCPRBR5011) as IspdRCPRBR5011;
end;

class function CospdRCPRBR5011.CreateRemote(const MachineName: string): IspdRCPRBR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRCPRBR5011) as IspdRCPRBR5011;
end;

class function CospdR5001.Create: IspdR5001;
begin
  Result := CreateComObject(CLASS_spdR5001) as IspdR5001;
end;

class function CospdR5001.CreateRemote(const MachineName: string): IspdR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdR5001) as IspdR5001;
end;

class function CospdInfoCRTomR5001.Create: IspdInfoCRTomR5001;
begin
  Result := CreateComObject(CLASS_spdInfoCRTomR5001) as IspdInfoCRTomR5001;
end;

class function CospdInfoCRTomR5001.CreateRemote(const MachineName: string): IspdInfoCRTomR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdInfoCRTomR5001) as IspdInfoCRTomR5001;
end;

class function CospdRTomR5001.Create: IspdRTomR5001;
begin
  Result := CreateComObject(CLASS_spdRTomR5001) as IspdRTomR5001;
end;

class function CospdRTomR5001.CreateRemote(const MachineName: string): IspdRTomR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRTomR5001) as IspdRTomR5001;
end;

class function CospdRPrestR5001.Create: IspdRPrestR5001;
begin
  Result := CreateComObject(CLASS_spdRPrestR5001) as IspdRPrestR5001;
end;

class function CospdRPrestR5001.CreateRemote(const MachineName: string): IspdRPrestR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRPrestR5001) as IspdRPrestR5001;
end;

class function CospdRRecRepADR5001.Create: IspdRRecRepADR5001;
begin
  Result := CreateComObject(CLASS_spdRRecRepADR5001) as IspdRRecRepADR5001;
end;

class function CospdRRecRepADR5001.CreateRemote(const MachineName: string): IspdRRecRepADR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRRecRepADR5001) as IspdRRecRepADR5001;
end;

class function CospdRComlR5001.Create: IspdRComlR5001;
begin
  Result := CreateComObject(CLASS_spdRComlR5001) as IspdRComlR5001;
end;

class function CospdRComlR5001.CreateRemote(const MachineName: string): IspdRComlR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRComlR5001) as IspdRComlR5001;
end;

class function CospdRCPRBR5001.Create: IspdRCPRBR5001;
begin
  Result := CreateComObject(CLASS_spdRCPRBR5001) as IspdRCPRBR5001;
end;

class function CospdRCPRBR5001.CreateRemote(const MachineName: string): IspdRCPRBR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRCPRBR5001) as IspdRCPRBR5001;
end;

class function CospdRRecEspetDespR5001.Create: IspdRRecEspetDespR5001;
begin
  Result := CreateComObject(CLASS_spdRRecEspetDespR5001) as IspdRRecEspetDespR5001;
end;

class function CospdRRecEspetDespR5001.CreateRemote(const MachineName: string): IspdRRecEspetDespR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRRecEspetDespR5001) as IspdRRecEspetDespR5001;
end;

class function CospdInfoCRTomR5011.Create: IspdInfoCRTomR5011;
begin
  Result := CreateComObject(CLASS_spdInfoCRTomR5011) as IspdInfoCRTomR5011;
end;

class function CospdInfoCRTomR5011.CreateRemote(const MachineName: string): IspdInfoCRTomR5011;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdInfoCRTomR5011) as IspdInfoCRTomR5011;
end;

class function CospdIdeContriR5001.Create: IspdIdeContriR5001;
begin
  Result := CreateComObject(CLASS_spdIdeContriR5001) as IspdIdeContriR5001;
end;

class function CospdIdeContriR5001.CreateRemote(const MachineName: string): IspdIdeContriR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdIdeContriR5001) as IspdIdeContriR5001;
end;

class function CospdInfoTotalR5001.Create: IspdInfoTotalR5001;
begin
  Result := CreateComObject(CLASS_spdInfoTotalR5001) as IspdInfoTotalR5001;
end;

class function CospdInfoTotalR5001.CreateRemote(const MachineName: string): IspdInfoTotalR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdInfoTotalR5001) as IspdInfoTotalR5001;
end;

class function CospdIdeEstabR5001.Create: IspdIdeEstabR5001;
begin
  Result := CreateComObject(CLASS_spdIdeEstabR5001) as IspdIdeEstabR5001;
end;

class function CospdIdeEstabR5001.CreateRemote(const MachineName: string): IspdIdeEstabR5001;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdIdeEstabR5001) as IspdIdeEstabR5001;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TspdReinfClientX, TspdReinfRetConsultarLote, TspdReinfRetConsultarLoteItem, TspdReinfRetConsultarLoteOcorrencia]);
end;

end.

unit CTe_Util_TLB;

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

// $Rev: 52393 $
// File generated on 21/07/2026 14:53:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Projects\ERP-Importa\CTe_Util.tlb (1)
// LIBID: {C54F6D8C-FF7E-4568-B457-6B8FCBCEF438}
// LCID: 0
// Helpfile: 
// HelpString: Biblioteca de utilidades do CT-e - vers�o 4.01i (4.0.1.9)
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'mod' of CTe_Util_Interface.infNF_2G changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.identificador300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideVFP300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOS changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOSVFP changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.infCteOSSub_refNF changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.infCteSub_refNF300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideGTVe changed to 'mod_'
//   Error creating palette bitmap of (TUtil) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TQREncoderTables) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TQREncoder) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TQRCodeEncoder) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteStatusServico) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteStatusServicoCT_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteStatusServicoCTCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteStatusServicoCTCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteRetRecepcao) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteRetRecepcaoLote_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRetRecepcaoCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRetRecepcaoCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteRecepcaoSinc) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoSincCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoSincCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteRecepcaoOS) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteRecepcaoOS_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoOSCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoOSCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteRecepcao) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteRecepcaoLote_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoLoteCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoLoteCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTeRecepcaoGTVe) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoGTVeCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoGTVeCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteRecepcaoEvento) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteRecepcaoEvento_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoEventoCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteRecepcaoEventoCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteInutilizacao) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteInutilizacaoCT_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteInutilizacaoCTCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteInutilizacaoCTCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTeDistribuicaoDFe) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteDistDFeInteresseCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteDistDFeInteresseCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteConsulta) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteConsultaCT_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteConsultaCTCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteConsultaCTCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCteCancelamento) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCTe_Util_cteCancelamentoCT_cteCabecMsg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteCancelamentoCTCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcteCancelamentoCTCompletedEventArgs) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TCleCadastro) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcleCadastroLote) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcleCadastroLoteResponse) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcleCadastroLoteCompletedEventHandler) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TcleCadastroLoteCompletedEventArgs) : Server mscoree.dll contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_TLB, Vcl.Graphics, Vcl.OleServer, 
Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CTe_UtilMajorVersion = 4;
  CTe_UtilMinorVersion = 0;

  LIBID_CTe_Util: TGUID = '{C54F6D8C-FF7E-4568-B457-6B8FCBCEF438}';

  IID_CTe_Util_Interface: TGUID = '{4B11037F-2F15-4558-A7B7-BA46801844A7}';
  DIID_CTe_Util_Events: TGUID = '{2C49EADB-6764-4F8D-982F-A6591DB65612}';
  CLASS_Util: TGUID = '{25567DA7-17E9-46D5-BFA8-8AE4CC7DA6E1}';
  IID__QREncoderTables: TGUID = '{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}';
  IID__QREncoder: TGUID = '{A1447CA0-E1BC-3250-9EA3-1A8649418D87}';
  IID__QRCodeEncoder: TGUID = '{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}';
  IID__CteStatusServico: TGUID = '{6A952BD0-43A0-3A50-9619-F16301F2E1FA}';
  IID__CTe_Util_cteStatusServicoCT_cteCabecMsg: TGUID = '{847DEFCB-3AC3-399C-BD03-504C0F141220}';
  IID__cteStatusServicoCTCompletedEventHandler: TGUID = '{59D057C1-370C-3F25-B217-7A84DB8E85DB}';
  IID__cteStatusServicoCTCompletedEventArgs: TGUID = '{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}';
  IID__CteRetRecepcao: TGUID = '{65507007-2035-30A1-BFE8-F631A0E220F2}';
  IID__CTe_Util_cteRetRecepcaoLote_cteCabecMsg: TGUID = '{BAB213D3-5D20-3233-A7E8-C39F8180FED5}';
  IID__cteRetRecepcaoCompletedEventHandler: TGUID = '{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}';
  IID__cteRetRecepcaoCompletedEventArgs: TGUID = '{858F6CC8-BC36-356A-AF92-04A9F957D769}';
  IID__CteRecepcaoSinc: TGUID = '{A2E51C1A-034A-3847-8E28-8C8A20A16A95}';
  IID__cteRecepcaoSincCompletedEventHandler: TGUID = '{4CF0878D-C2C2-30BC-B82F-45684EA895C7}';
  IID__cteRecepcaoSincCompletedEventArgs: TGUID = '{08AC3581-4CCD-3730-BA72-C61E1D7C8681}';
  IID__CteRecepcaoOS: TGUID = '{2F0A7796-6E0E-364B-B819-BCB868CD8269}';
  IID__CTe_Util_cteRecepcaoOS_cteCabecMsg: TGUID = '{63A1F467-E5AA-3EF5-B81B-47D93720AACF}';
  IID__cteRecepcaoOSCompletedEventHandler: TGUID = '{59EAF3B4-8EF2-3756-A22E-455047913FD6}';
  IID__cteRecepcaoOSCompletedEventArgs: TGUID = '{11EADA4E-50B0-3414-8264-C36B94087502}';
  IID__CteRecepcao: TGUID = '{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}';
  IID__CTe_Util_cteRecepcaoLote_cteCabecMsg: TGUID = '{6DB8CE00-960E-334C-A60C-2E928442E3FD}';
  IID__cteRecepcaoLoteCompletedEventHandler: TGUID = '{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}';
  IID__cteRecepcaoLoteCompletedEventArgs: TGUID = '{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}';
  IID__CTeRecepcaoGTVe: TGUID = '{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}';
  IID__cteRecepcaoGTVeCompletedEventHandler: TGUID = '{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}';
  IID__cteRecepcaoGTVeCompletedEventArgs: TGUID = '{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}';
  IID__CteRecepcaoEvento: TGUID = '{A7D94986-710B-362A-9265-88D9EEF55BD3}';
  IID__CTe_Util_cteRecepcaoEvento_cteCabecMsg: TGUID = '{38DFE93D-4280-3B6C-B097-9CA7E00C5257}';
  IID__cteRecepcaoEventoCompletedEventHandler: TGUID = '{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}';
  IID__cteRecepcaoEventoCompletedEventArgs: TGUID = '{93575C24-56C5-38FD-B97C-4AB177BBA901}';
  IID__CteInutilizacao: TGUID = '{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}';
  IID__CTe_Util_cteInutilizacaoCT_cteCabecMsg: TGUID = '{4E1F52E5-5867-3780-A112-9D571FC5DC93}';
  IID__cteInutilizacaoCTCompletedEventHandler: TGUID = '{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}';
  IID__cteInutilizacaoCTCompletedEventArgs: TGUID = '{3247FA06-2826-3461-A438-45216B23B312}';
  IID__CTeDistribuicaoDFe: TGUID = '{7184C361-EC57-31B9-B82A-09F0FD03E017}';
  IID__cteDistDFeInteresseCompletedEventHandler: TGUID = '{57C9BADF-EBD8-36CD-BC72-067086BACB78}';
  IID__cteDistDFeInteresseCompletedEventArgs: TGUID = '{76DB3240-4D3D-3AC7-B1AD-997200D83830}';
  IID__CteConsulta: TGUID = '{44357119-80F8-349D-8DF6-8C1F53DA92D2}';
  IID__CTe_Util_cteConsultaCT_cteCabecMsg: TGUID = '{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}';
  IID__cteConsultaCTCompletedEventHandler: TGUID = '{F5F0BB47-7B02-39EC-A9BD-E5486D594103}';
  IID__cteConsultaCTCompletedEventArgs: TGUID = '{632B4661-5E5D-3322-967D-508DC95484E1}';
  IID__CteCancelamento: TGUID = '{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}';
  IID__CTe_Util_cteCancelamentoCT_cteCabecMsg: TGUID = '{0B27A478-3330-33B1-B3B9-796BEBDEB03E}';
  IID__cteCancelamentoCTCompletedEventHandler: TGUID = '{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}';
  IID__cteCancelamentoCTCompletedEventArgs: TGUID = '{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}';
  IID__CleCadastro: TGUID = '{DC271E4C-CD2B-34F4-97D4-35B28D211156}';
  IID__cleCadastroLote: TGUID = '{597DCBFC-3975-3E79-8EF2-8D2D397DD491}';
  IID__cleCadastroLoteResponse: TGUID = '{5EDD54AD-6D4A-33FE-84DF-808131515507}';
  IID__cleCadastroLoteCompletedEventHandler: TGUID = '{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}';
  IID__cleCadastroLoteCompletedEventArgs: TGUID = '{4E8011FA-2284-3F29-97B8-0C439807FCDD}';
  CLASS_QREncoderTables: TGUID = '{70CAA16B-AB1E-3C36-BD2A-9C55AE7C4C4E}';
  CLASS_QREncoder: TGUID = '{CF26E423-0D61-3B8C-9372-5026925FAA98}';
  CLASS_QRCodeEncoder: TGUID = '{FB2F367B-9850-3AF6-85F1-29A94E1AEC9E}';
  CLASS_CteStatusServico: TGUID = '{39006516-82F9-3F3A-A7CE-6D9A1A1FDE2F}';
  CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg: TGUID = '{0C70969E-A347-3E42-914E-F8164C31757C}';
  CLASS_cteStatusServicoCTCompletedEventHandler: TGUID = '{1ADC8333-E4EB-363F-9BC7-9A4C9F3B7D8F}';
  CLASS_cteStatusServicoCTCompletedEventArgs: TGUID = '{1F403818-E8EF-3A07-A8C3-34D831FF4D71}';
  CLASS_CteRetRecepcao: TGUID = '{68A52E5F-F036-3ACE-A994-5BF14BD8A1FD}';
  CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg: TGUID = '{214C5E1B-0843-3C00-AE6A-64CD1D48751C}';
  CLASS_cteRetRecepcaoCompletedEventHandler: TGUID = '{238914A5-1AEF-3052-99FD-00D1A87AD6E3}';
  CLASS_cteRetRecepcaoCompletedEventArgs: TGUID = '{FDB5EB17-E9DF-35F7-B45A-6ED3F0470462}';
  CLASS_CteRecepcaoSinc: TGUID = '{2D8A4A53-C494-3FD5-81E7-0EFE3E230042}';
  CLASS_cteRecepcaoSincCompletedEventHandler: TGUID = '{06B06180-C9BF-31A5-9504-2E368960F774}';
  CLASS_cteRecepcaoSincCompletedEventArgs: TGUID = '{AB043F21-A37A-347C-9740-58CAF868311B}';
  CLASS_CteRecepcaoOS: TGUID = '{A27B92AF-5393-35D6-8C7B-1120F6C3388D}';
  CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg: TGUID = '{E8C9A24E-6C24-30D2-A996-36ABA28A58E3}';
  CLASS_cteRecepcaoOSCompletedEventHandler: TGUID = '{2CA735CB-8F56-3090-B7E4-74E28142F08D}';
  CLASS_cteRecepcaoOSCompletedEventArgs: TGUID = '{628A270E-F7AE-36B0-8A8E-14599F9B9329}';
  CLASS_CteRecepcao: TGUID = '{EFE0C4A8-652E-3CE1-9423-5089AB87D114}';
  CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg: TGUID = '{5B93730D-E59D-3801-BE58-BE49ED6DAC75}';
  CLASS_cteRecepcaoLoteCompletedEventHandler: TGUID = '{18348A14-BA6F-31B3-A721-A489436657D5}';
  CLASS_cteRecepcaoLoteCompletedEventArgs: TGUID = '{586773A8-2D30-3B63-9C7E-1286864AB876}';
  CLASS_CTeRecepcaoGTVe: TGUID = '{6418C51A-C03C-3A5C-801F-9036D650FF76}';
  CLASS_cteRecepcaoGTVeCompletedEventHandler: TGUID = '{5A5918B0-F894-3C0A-AE82-E2F61C7BD7A5}';
  CLASS_cteRecepcaoGTVeCompletedEventArgs: TGUID = '{06E63438-0D83-33CB-8FCC-7FB052788565}';
  CLASS_CteRecepcaoEvento: TGUID = '{3BEB4E34-E91B-3F0C-BF8B-9F7A7CDC1B26}';
  CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg: TGUID = '{98DB2190-12EB-3D2E-B987-CAADB0A1F362}';
  CLASS_cteRecepcaoEventoCompletedEventHandler: TGUID = '{A57977EF-00DB-3EAE-867B-35045A1D47B0}';
  CLASS_cteRecepcaoEventoCompletedEventArgs: TGUID = '{187653E4-189A-3956-8924-BA48EAACCDE1}';
  CLASS_CteInutilizacao: TGUID = '{C5AB0F1E-3AD1-375F-B06F-B8AF3AD1F75C}';
  CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg: TGUID = '{EBA509BE-BE14-3D62-8F6E-AF173E6E79C5}';
  CLASS_cteInutilizacaoCTCompletedEventHandler: TGUID = '{2647FA6E-F762-3B3D-B27D-1F640F767A62}';
  CLASS_cteInutilizacaoCTCompletedEventArgs: TGUID = '{150C1D86-BE6E-3733-AA9B-84B1ECEFA7B5}';
  CLASS_CTeDistribuicaoDFe: TGUID = '{96FAB068-93AE-3030-AAF9-55D1744AC9C0}';
  CLASS_cteDistDFeInteresseCompletedEventHandler: TGUID = '{2FEB5F98-8640-3C43-BC28-0AB2BD88AA74}';
  CLASS_cteDistDFeInteresseCompletedEventArgs: TGUID = '{717D3DF0-0401-3D18-AD1D-9F348FC9079E}';
  CLASS_CteConsulta: TGUID = '{6DC81889-EC33-389D-A456-7F153D6075DF}';
  CLASS_CTe_Util_cteConsultaCT_cteCabecMsg: TGUID = '{DEA31BE4-30A3-308B-838E-E7366B0DD209}';
  CLASS_cteConsultaCTCompletedEventHandler: TGUID = '{4042C91A-38FA-30CF-B870-20A1EC92B103}';
  CLASS_cteConsultaCTCompletedEventArgs: TGUID = '{EF09DFCD-E191-3E1D-9F24-994D093B74CC}';
  CLASS_CteCancelamento: TGUID = '{6A1E2592-842F-3106-99D0-0B7EDC050D15}';
  CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg: TGUID = '{7E857911-7D0E-3625-9DCE-90F7C629135F}';
  CLASS_cteCancelamentoCTCompletedEventHandler: TGUID = '{ECFEAAE1-BCD7-3E89-8953-272965BB668A}';
  CLASS_cteCancelamentoCTCompletedEventArgs: TGUID = '{B05B710B-17D8-3C28-ADA1-CB2E3EA54842}';
  CLASS_CleCadastro: TGUID = '{0B4384D1-CCB4-3098-B9D2-C0610F1C754C}';
  CLASS_cleCadastroLote: TGUID = '{6DB96952-FBCB-3BD2-80FF-76BA93B5E3A0}';
  CLASS_cleCadastroLoteResponse: TGUID = '{C5247592-1ABF-3738-A9C4-B46F712A1951}';
  CLASS_cleCadastroLoteCompletedEventHandler: TGUID = '{5A9AB422-FD0D-3A10-8DB2-067BCB58D9F5}';
  CLASS_cleCadastroLoteCompletedEventArgs: TGUID = '{FABFB68A-411F-375F-A4A9-879E1499B82E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum ErrorCorrection
type
  ErrorCorrection = TOleEnum;
const
  ErrorCorrection_L = $00000000;
  ErrorCorrection_M = $00000001;
  ErrorCorrection_Q = $00000002;
  ErrorCorrection_H = $00000003;

// Constants for enum EncodingMode
type
  EncodingMode = TOleEnum;
const
  EncodingMode_Terminator = $00000000;
  EncodingMode_Numeric = $00000001;
  EncodingMode_AlphaNumeric = $00000002;
  EncodingMode_Append = $00000003;
  EncodingMode_Byte = $00000004;
  EncodingMode_FNC1First = $00000005;
  EncodingMode_Unknown6 = $00000006;
  EncodingMode_ECI = $00000007;
  EncodingMode_Kanji = $00000008;
  EncodingMode_FNC1Second = $00000009;
  EncodingMode_Unknown10 = $0000000A;
  EncodingMode_Unknown11 = $0000000B;
  EncodingMode_Unknown12 = $0000000C;
  EncodingMode_Unknown13 = $0000000D;
  EncodingMode_Unknown14 = $0000000E;
  EncodingMode_Unknown15 = $0000000F;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  CTe_Util_Interface = interface;
  CTe_Util_InterfaceDisp = dispinterface;
  CTe_Util_Events = dispinterface;
  _QREncoderTables = interface;
  _QREncoderTablesDisp = dispinterface;
  _QREncoder = interface;
  _QREncoderDisp = dispinterface;
  _QRCodeEncoder = interface;
  _QRCodeEncoderDisp = dispinterface;
  _CteStatusServico = interface;
  _CteStatusServicoDisp = dispinterface;
  _CTe_Util_cteStatusServicoCT_cteCabecMsg = interface;
  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp = dispinterface;
  _cteStatusServicoCTCompletedEventHandler = interface;
  _cteStatusServicoCTCompletedEventHandlerDisp = dispinterface;
  _cteStatusServicoCTCompletedEventArgs = interface;
  _cteStatusServicoCTCompletedEventArgsDisp = dispinterface;
  _CteRetRecepcao = interface;
  _CteRetRecepcaoDisp = dispinterface;
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsg = interface;
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp = dispinterface;
  _cteRetRecepcaoCompletedEventHandler = interface;
  _cteRetRecepcaoCompletedEventHandlerDisp = dispinterface;
  _cteRetRecepcaoCompletedEventArgs = interface;
  _cteRetRecepcaoCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoSinc = interface;
  _CteRecepcaoSincDisp = dispinterface;
  _cteRecepcaoSincCompletedEventHandler = interface;
  _cteRecepcaoSincCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoSincCompletedEventArgs = interface;
  _cteRecepcaoSincCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoOS = interface;
  _CteRecepcaoOSDisp = dispinterface;
  _CTe_Util_cteRecepcaoOS_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoOSCompletedEventHandler = interface;
  _cteRecepcaoOSCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoOSCompletedEventArgs = interface;
  _cteRecepcaoOSCompletedEventArgsDisp = dispinterface;
  _CteRecepcao = interface;
  _CteRecepcaoDisp = dispinterface;
  _CTe_Util_cteRecepcaoLote_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoLoteCompletedEventHandler = interface;
  _cteRecepcaoLoteCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoLoteCompletedEventArgs = interface;
  _cteRecepcaoLoteCompletedEventArgsDisp = dispinterface;
  _CTeRecepcaoGTVe = interface;
  _CTeRecepcaoGTVeDisp = dispinterface;
  _cteRecepcaoGTVeCompletedEventHandler = interface;
  _cteRecepcaoGTVeCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoGTVeCompletedEventArgs = interface;
  _cteRecepcaoGTVeCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoEvento = interface;
  _CteRecepcaoEventoDisp = dispinterface;
  _CTe_Util_cteRecepcaoEvento_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventHandler = interface;
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventArgs = interface;
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _CteInutilizacao = interface;
  _CteInutilizacaoDisp = dispinterface;
  _CTe_Util_cteInutilizacaoCT_cteCabecMsg = interface;
  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp = dispinterface;
  _cteInutilizacaoCTCompletedEventHandler = interface;
  _cteInutilizacaoCTCompletedEventHandlerDisp = dispinterface;
  _cteInutilizacaoCTCompletedEventArgs = interface;
  _cteInutilizacaoCTCompletedEventArgsDisp = dispinterface;
  _CTeDistribuicaoDFe = interface;
  _CTeDistribuicaoDFeDisp = dispinterface;
  _cteDistDFeInteresseCompletedEventHandler = interface;
  _cteDistDFeInteresseCompletedEventHandlerDisp = dispinterface;
  _cteDistDFeInteresseCompletedEventArgs = interface;
  _cteDistDFeInteresseCompletedEventArgsDisp = dispinterface;
  _CteConsulta = interface;
  _CteConsultaDisp = dispinterface;
  _CTe_Util_cteConsultaCT_cteCabecMsg = interface;
  _CTe_Util_cteConsultaCT_cteCabecMsgDisp = dispinterface;
  _cteConsultaCTCompletedEventHandler = interface;
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface;
  _cteConsultaCTCompletedEventArgs = interface;
  _cteConsultaCTCompletedEventArgsDisp = dispinterface;
  _CteCancelamento = interface;
  _CteCancelamentoDisp = dispinterface;
  _CTe_Util_cteCancelamentoCT_cteCabecMsg = interface;
  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp = dispinterface;
  _cteCancelamentoCTCompletedEventHandler = interface;
  _cteCancelamentoCTCompletedEventHandlerDisp = dispinterface;
  _cteCancelamentoCTCompletedEventArgs = interface;
  _cteCancelamentoCTCompletedEventArgsDisp = dispinterface;
  _CleCadastro = interface;
  _CleCadastroDisp = dispinterface;
  _cleCadastroLote = interface;
  _cleCadastroLoteDisp = dispinterface;
  _cleCadastroLoteResponse = interface;
  _cleCadastroLoteResponseDisp = dispinterface;
  _cleCadastroLoteCompletedEventHandler = interface;
  _cleCadastroLoteCompletedEventHandlerDisp = dispinterface;
  _cleCadastroLoteCompletedEventArgs = interface;
  _cleCadastroLoteCompletedEventArgsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Util = CTe_Util_Interface;
  QREncoderTables = _QREncoderTables;
  QREncoder = _QREncoder;
  QRCodeEncoder = _QRCodeEncoder;
  CteStatusServico = _CteStatusServico;
  CTe_Util_cteStatusServicoCT_cteCabecMsg = _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  cteStatusServicoCTCompletedEventHandler = _cteStatusServicoCTCompletedEventHandler;
  cteStatusServicoCTCompletedEventArgs = _cteStatusServicoCTCompletedEventArgs;
  CteRetRecepcao = _CteRetRecepcao;
  CTe_Util_cteRetRecepcaoLote_cteCabecMsg = _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  cteRetRecepcaoCompletedEventHandler = _cteRetRecepcaoCompletedEventHandler;
  cteRetRecepcaoCompletedEventArgs = _cteRetRecepcaoCompletedEventArgs;
  CteRecepcaoSinc = _CteRecepcaoSinc;
  cteRecepcaoSincCompletedEventHandler = _cteRecepcaoSincCompletedEventHandler;
  cteRecepcaoSincCompletedEventArgs = _cteRecepcaoSincCompletedEventArgs;
  CteRecepcaoOS = _CteRecepcaoOS;
  CTe_Util_cteRecepcaoOS_cteCabecMsg = _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  cteRecepcaoOSCompletedEventHandler = _cteRecepcaoOSCompletedEventHandler;
  cteRecepcaoOSCompletedEventArgs = _cteRecepcaoOSCompletedEventArgs;
  CteRecepcao = _CteRecepcao;
  CTe_Util_cteRecepcaoLote_cteCabecMsg = _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  cteRecepcaoLoteCompletedEventHandler = _cteRecepcaoLoteCompletedEventHandler;
  cteRecepcaoLoteCompletedEventArgs = _cteRecepcaoLoteCompletedEventArgs;
  CTeRecepcaoGTVe = _CTeRecepcaoGTVe;
  cteRecepcaoGTVeCompletedEventHandler = _cteRecepcaoGTVeCompletedEventHandler;
  cteRecepcaoGTVeCompletedEventArgs = _cteRecepcaoGTVeCompletedEventArgs;
  CteRecepcaoEvento = _CteRecepcaoEvento;
  CTe_Util_cteRecepcaoEvento_cteCabecMsg = _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  cteRecepcaoEventoCompletedEventHandler = _cteRecepcaoEventoCompletedEventHandler;
  cteRecepcaoEventoCompletedEventArgs = _cteRecepcaoEventoCompletedEventArgs;
  CteInutilizacao = _CteInutilizacao;
  CTe_Util_cteInutilizacaoCT_cteCabecMsg = _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  cteInutilizacaoCTCompletedEventHandler = _cteInutilizacaoCTCompletedEventHandler;
  cteInutilizacaoCTCompletedEventArgs = _cteInutilizacaoCTCompletedEventArgs;
  CTeDistribuicaoDFe = _CTeDistribuicaoDFe;
  cteDistDFeInteresseCompletedEventHandler = _cteDistDFeInteresseCompletedEventHandler;
  cteDistDFeInteresseCompletedEventArgs = _cteDistDFeInteresseCompletedEventArgs;
  CteConsulta = _CteConsulta;
  CTe_Util_cteConsultaCT_cteCabecMsg = _CTe_Util_cteConsultaCT_cteCabecMsg;
  cteConsultaCTCompletedEventHandler = _cteConsultaCTCompletedEventHandler;
  cteConsultaCTCompletedEventArgs = _cteConsultaCTCompletedEventArgs;
  CteCancelamento = _CteCancelamento;
  CTe_Util_cteCancelamentoCT_cteCabecMsg = _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  cteCancelamentoCTCompletedEventHandler = _cteCancelamentoCTCompletedEventHandler;
  cteCancelamentoCTCompletedEventArgs = _cteCancelamentoCTCompletedEventArgs;
  CleCadastro = _CleCadastro;
  cleCadastroLote = _cleCadastroLote;
  cleCadastroLoteResponse = _cleCadastroLoteResponse;
  cleCadastroLoteCompletedEventHandler = _cleCadastroLoteCompletedEventHandler;
  cleCadastroLoteCompletedEventArgs = _cleCadastroLoteCompletedEventArgs;


// *********************************************************************//
// Interface: CTe_Util_Interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B11037F-2F15-4558-A7B7-BA46801844A7}
// *********************************************************************//
  CTe_Util_Interface = interface(IDispatch)
    ['{4B11037F-2F15-4558-A7B7-BA46801844A7}']
    function Versao: WideString; safecall;
    function Assinar(const XMLString: WideString; const RefUri: WideString; const Nome: WideString; 
                     out XMLAssinado: WideString; out msgResultado: WideString): Integer; safecall;
    function PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer; safecall;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const codigoSeguranca: WideString; out msgResultado: WideString; 
                          out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer; safecall;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; safecall;
    function ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString): Integer; safecall;
    function EnviaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       var msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function BuscaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const nroRecibo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        const chaveCTe: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString): Integer; safecall;
    function CancelaCT(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out procCanc: WideString; 
                       const chaveCTe: WideString; const nProtocolo: WideString; 
                       const justificativa: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            out procInut: WideString; const cUF: WideString; const Ano: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const nroCTeInicial: WideString; 
                            const nroCTeFinal: WideString; const justificativa: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): Integer; safecall;
    function EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out CTeAssinado: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString; 
                      const licenca: WideString): Integer; safecall;
    function BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; const siglaUF: WideString; 
                      var CTeAssinado: WideString; var nroRecibo: WideString; 
                      out procCTe: WideString; out nroProtocolo: WideString; 
                      out dAutorizacao: WideString; const nomeCertificado: WideString; 
                      const Versao: WideString; out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; 
                           out msgResultado: WideString; const tpArgumento: WideString; 
                           const argumento: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): Integer; safecall;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out chvCLe: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                              const CNPJ: WideString; const modelo: WideString; 
                              const serie: WideString; const numero: WideString; 
                              const tpEmis: WideString; const codigoSeguranca: WideString; 
                              out msgResultado: WideString; out cCT: WideString; 
                              out cDV: WideString; out chaveCTe: WideString): Integer; safecall;
    function CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString; 
                         out protocolo: WideString; out retCancCTe: WideString; 
                         out resultado: Integer; const nomeCertificado: WideString; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; safecall;
    function CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString; 
                             out protocolo: WideString; out retCancCTe: WideString; 
                             out resultado: Integer; const nomeCertificado: WideString; 
                             out msgResultado: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString): WideString; safecall;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString; 
                      const emailDestinatario: WideString; const emailBcc: WideString; 
                      const assunto: WideString; const mensagem: WideString; 
                      const arquivos: WideString; const smtpCliente: WideString; 
                      const smtpPorta: WideString; const smtpSSL: WideString; 
                      const smtpUsuario: WideString; const smtpSenha: WideString; 
                      const HTML: WideString; const confirmacao: WideString; 
                      out msgResultado: WideString): Integer; safecall;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString; safecall;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString; safecall;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString; safecall;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; safecall;
    function MontaLoteCTe(const Versao: WideString; const idLote: WideString; 
                          const CTe: WideString; out quantidadeCTe: Integer; 
                          out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString; 
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function MontaProcCTe(const Versao: WideString; const enviCTe: WideString; 
                          const retConsReciCTe: WideString; out qtdeCTe: Integer; 
                          out qtdeProcCTe: Integer; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                      const _xFant_Opc: WideString; const _xLgr: WideString; 
                      const _nro: WideString; const _xCpl_Opc: WideString; 
                      const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                      const _CEP_Opc: WideString; const _UF: WideString; const _fone_Opc: WideString): WideString; safecall;
    function remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _xFant_Opc: WideString; 
                       const _fone_Opc: WideString; const _xLgr: WideString; 
                       const _nro: WideString; const _xCpl_Opc: WideString; 
                       const _xBairro: WideString; const _cMun: WideString; 
                       const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString; const _infnotas: WideString): WideString; safecall;
    function expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString; safecall;
    function recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString; safecall;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                          const _xNome: WideString; const _fone_Opc: WideString; 
                          const _ISUF_Opc: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _CEP_Opc: WideString; 
                          const _UF: WideString; const _cPais_Opc: WideString; 
                          const _xPais_Opc: WideString; const _email_Opc: WideString; 
                          const _locEnt_Opc: WideString): WideString; safecall;
    function localEntrega(const _CNPJ: WideString; const _CPF: WideString; 
                          const _xNome: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function compVPrest(const _xNome: WideString; _vComp: Double): WideString; safecall;
    function vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString; safecall;
    function ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                       const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; safecall;
    function ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                       _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                            _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                            const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSSN(const _infAdFisco_Opc: WideString): WideString; safecall;
    function identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                           const _natOp: WideString; _forPag: Integer; _mod: Integer; 
                           _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; 
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; 
                           _procEmi: Integer; const _verProc: WideString; 
                           const _refCTe_Opc: WideString; const _cMunEnv: WideString; 
                           const _xMunEnv: WideString; const _UFEnv: WideString; 
                           const _modal: WideString; _tpServ: Integer; const _cMunIni: WideString; 
                           const _xMunIni: WideString; const _UFIni: WideString; 
                           const _cMunFim: WideString; const _xMunFim: WideString; 
                           const _UFFim: WideString; _retira: Integer; 
                           const _xDetRetira: WideString; const _tomador: WideString; 
                           _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; safecall;
    function tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString; 
                     const _IE_Opc: WideString; const _xNome: WideString; 
                     const _xFant_Opc: WideString; const _fone_Opc: WideString; 
                     const _xLgr: WideString; const _nro: WideString; const _xCpl_Opc: WideString; 
                     const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                     const _CEP_Opc: WideString; const _UF: WideString; 
                     const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                     const _email_Opc: WideString): WideString; safecall;
    function compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString; 
                   const _xEmi_Opc: WideString; const _fluxo_Opc: WideString; 
                   const _entrega_Opc: WideString; const _origCalc_Opc: WideString; 
                   const _destCalc_Opc: WideString; const xObs_Opc: WideString; 
                   const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString; safecall;
    function fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString; 
                   const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString; safecall;
    function pass(const _xPass_Opc: WideString): WideString; safecall;
    function Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer; 
                     _hIni: TDateTime; _hFim: TDateTime): WideString; safecall;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString; 
                        const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                        const _infModal: WideString; const _peri_Opc: WideString; 
                        const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                        const _infCteSub_Opc: WideString): WideString; safecall;
    function infCarga(_vCarga_Opc: Double; const _prodPred: WideString; 
                      const _xOutCat_Opc: WideString; const _infQ: WideString): WideString; safecall;
    function infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString; safecall;
    function contQt(const _nCont: WideString; const _lacContQt_Opc: WideString; 
                    _dPrev_Opc: TDateTime): WideString; safecall;
    function lacContQt(const _nLacre: WideString): WideString; safecall;
    function EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; const _IE_Opc: WideString; 
                       const _UF_Opc: WideString; const _xNome: WideString; 
                       const _idDocAnt1: WideString; const _idDocAnt2: WideString): WideString; safecall;
    function idDocAntPap(_tpDoc: Integer; const _serie: WideString; 
                         const _subSerie_Opc: WideString; const _nDoc: WideString; _dEmi: TDateTime): WideString; safecall;
    function idDocAntEle(const _chave: WideString): WideString; safecall;
    function seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString; 
                 const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString; safecall;
    function peri(const _nOnu: WideString; const _xNomeAE: WideString; 
                  const _xClaRisco: WideString; const _grEmb_Opc: WideString; 
                  const _qTotProd: WideString; const _qVolTipo_Opc: WideString; 
                  const _pontoFulgor_Opc: WideString): WideString; safecall;
    function veicNovos(const _chassi: WideString; const _cCor: WideString; const _xCor: WideString; 
                       const _cMod: WideString; _vUnit: Double; _vFrete: Double): WideString; safecall;
    function cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double; 
                  _vLiq_Opc: Double; const _dup_Opc: WideString): WideString; safecall;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; safecall;
    function infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString; safecall;
    function infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString; 
                             const _mod: WideString; const _serie: WideString; 
                             const _subSerie_Opc: WideString; const _nro: WideString; 
                             _valor: Double; _dEmi: TDateTime): WideString; safecall;
    function infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString; safecall;
    function infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString; safecall;
    function infCteComp(const _chave: WideString; const _vPresComp: WideString; 
                        const _impComp: WideString): WideString; safecall;
    function vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString; safecall;
    function compComp(const _xNome: WideString; _vComp: Double): WideString; safecall;
    function ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                           const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; safecall;
    function ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                           _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; 
                                _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                                const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString; safecall;
    function infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString; safecall;
    function rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime; 
                 _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString; 
                 const _valePed_Opc: WideString; const _veic_Opc: WideString; 
                 const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString; safecall;
    function occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime; 
                 const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString; 
                 const _UF: WideString; const _fone_Opc: WideString): WideString; safecall;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                     const _CNPJPg_Opc: WideString): WideString; safecall;
    function veic(const _cInt_Opc: WideString; const _RENAVAM: WideString; 
                  const _placa: WideString; const _tara: WideString; const _capKG: WideString; 
                  const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer; 
                  const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString; 
                  const _prop_Opc: WideString): WideString; safecall;
    function prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                  const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString; 
                  _tpProp: Integer): WideString; safecall;
    function lacRodo(const _nLacre: WideString): WideString; safecall;
    function moto(const _xNome: WideString; const _CPF: WideString): WideString; safecall;
    function CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                 const _compl_Opc: WideString; const _emit: WideString; const _rem_Opc: WideString; 
                 const _exped_Opc: WideString; const _receb_Opc: WideString; 
                 const _dest_Opc: WideString; const _vPrest: WideString; const _imp: WideString; 
                 const _infCTe: WideString): WideString; safecall;
    function infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString; 
                   const _mod: WideString; const _serie: WideString; const _nDoc: WideString; 
                   _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; 
                   _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double; 
                   const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString; safecall;
    function infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString; safecall;
    function infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString; 
                       const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString; safecall;
    function localRetirada(const _CNPJ: WideString; const _CPF: WideString; 
                           const _xNome: WideString; const _xLgr: WideString; 
                           const _nro: WideString; const _xCpl_Opc: WideString; 
                           const _xBairro: WideString; const _cMun: WideString; 
                           const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double; 
                   const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString; 
                   const _xNavio: WideString; const _balsa_Opc: WideString; 
                   const _nViag_Opc: WideString; const _direc: WideString; 
                   const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString; 
                   const _prtDest_Opc: WideString; const _tpNav_Opc: WideString; 
                   const _irin: WideString; const _detCont_Opc: WideString): WideString; safecall;
    function balsa(const _xBalsa: WideString): WideString; safecall;
    function detCont(const _nCont: WideString; const _lacres_Opc: WideString; 
                     const _infDoc_Opc: WideString): WideString; safecall;
    function lacre(const _nLacre: WideString): WideString; safecall;
    function infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString; safecall;
    function infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString; safecall;
    function geraPdfDACTE(const XML: WideString; const logo: WideString; 
                          const quadroRecibo: WideString; const visualizar: WideString; 
                          const parametros: WideString; out msgResultado: WideString): Integer; safecall;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                      out DLL_data: WideString; out DLL_dataValidade: WideString; 
                      out URL_versao: WideString; out URL_data: WideString): WideString; safecall;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                out msgErro: WideString): Integer; safecall;
    function WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString; 
                         const mensagemXML: WideString; out resultado: Integer; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString; safecall;
    function ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                    const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer; 
                    _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer; 
                    _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer; 
                    const _verProc: WideString; const _refCTe_Opc: WideString; 
                    const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer; 
                    const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer; 
                    const _xDetRetira: WideString; const _tomador: WideString; 
                    _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; safecall;
    function aereo(const versaoModal: WideString; const nMinu_Opc: WideString; 
                   const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString; 
                   const IdT_Opc: WideString; const CL_tarifa: WideString; 
                   const cTar_tarifa_Opc: WideString; vTar_tarifa: Double; 
                   const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                   const cIMP_Opc: WideString): WideString; safecall;
    function cInfManu(const cInfManu: WideString): WideString; safecall;
    function cIMP(const cIMP: WideString): WideString; safecall;
    function AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString; 
                         const Atributo: WideString; const nomeCertificado: WideString; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                          _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                          const _infAdFisco: WideString): WideString; safecall;
    function ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                          _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                               _pICMSOutraUF: Double; _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                               const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                              const _infAdFisco: WideString): WideString; safecall;
    function ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                              _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vCred: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; 
                                   _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                   _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer; 
                       out msgResultado: WideString; const XMLCTe: WideString; 
                       const xJust: WideString; const dhEvento: WideString; 
                       out nProtocoloEPEC: WideString; out dProtocoloEPEC: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; safecall;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                          const CNPJ: WideString; valorTotalCTe: Double; 
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                          dataEmissaoCTe: TDateTime; out codigoBarras: WideString; 
                                          out msgResultado: WideString): Integer; safecall;
    function CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveCTe: WideString; const nProtocolo: WideString; 
                             const justificativa: WideString; const dhEvento: WideString; 
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; safecall;
    function RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer; 
                                const nomeCertificado: WideString; const Versao: WideString; 
                                out msgDados: WideString; out msgRetWS: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const chaveCTe: WideString; const nDoc_Opc: WideString; 
                                const xRegistro: WideString; nroRegistro: Integer; 
                                const dhEvento: WideString; out nProtocolo: WideString; 
                                out dProtocolo: WideString; const proxy: WideString; 
                                const usuario: WideString; const senha: WideString; 
                                const licenca: WideString): WideString; safecall;
    function EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                      out msgResultado: WideString; const chaveCTe: WideString; 
                      const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                      const dataCorrecao: WideString; out nroProtocolo: WideString; 
                      out dhProtocolo: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; safecall;
    function geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString; 
                             const valorAlterado: WideString; const nroItemAlterado_Opc: WideString): WideString; safecall;
    function remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const fone_Opc: WideString; const xLgr: WideString; const nro: WideString; 
                         const xCpl_Opc: WideString; const xBairro: WideString; 
                         const cMun: WideString; const xMun: WideString; const CEP_Opc: WideString; 
                         const UF: WideString; const cPais_Opc: WideString; 
                         const xPais_Opc: WideString; const email_Opc: WideString; 
                         const locColeta_Opc: WideString): WideString; safecall;
    function locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                       const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                       const UF: WideString): WideString; safecall;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; safecall;
    function CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const remOpc: WideString; 
                   const expedOpc: WideString; const recebOpc: WideString; 
                   const destOpc: WideString; const vPrest: WideString; const imp: WideString; 
                   const infCTe: WideString; const autXMLOpc: WideString): WideString; safecall;
    function infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString; 
                      const mod_: WideString; const serie: WideString; const nDoc: WideString; 
                      dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                      vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double; 
                      const PINOpc: WideString; dPrevOpc: TDateTime; 
                      const unidCargaTranspOpc: WideString): WideString; safecall;
    function infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime; 
                       const unidCargaTranspOpc: WideString): WideString; safecall;
    function infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString; 
                          const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double; 
                          dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString; safecall;
    function lacreUnidCarga(const nLacre: WideString): WideString; safecall;
    function lacreUnidTransp(const nLacre: WideString): WideString; safecall;
    function infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString; 
                          const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString; safecall;
    function infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString; 
                           const lacUnidTransp_Opc: WideString; const infUnidCarga_Opc: WideString; 
                           const qtdRat_Opc: WideString): WideString; safecall;
    function infCteComp_2G(const _chave: WideString): WideString; safecall;
    function infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString; 
                           const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                           const _infModal: WideString; const _peri_Opc: WideString; 
                           const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                           const _infCteSub_Opc: WideString): WideString; safecall;
    function aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xLAgEmi_Opc: WideString; const IdT_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const xDime_natCarga_Opc: WideString; 
                      const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString; safecall;
    function valePed_2G(const CNPJForn: WideString; const nCompra: WideString; 
                        const CNPJPg_Opc: WideString; vValePed: Double): WideString; safecall;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                       const emailDestinatario: WideString; const emailBcc: WideString; 
                       const assunto: WideString; const mensagem: WideString; 
                       const arquivos: WideString; const smtpCliente: WideString; 
                       const smtpPorta: WideString; const smtpSSL: WideString; 
                       const smtpUsuario: WideString; const smtpSenha: WideString; 
                       const HTML: WideString; const confirmacao: WideString; 
                       out msgResultado: WideString; const timeout: WideString): Integer; safecall;
    function ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; pICMSInter: Double; 
                       pICMSInterPart: Double; vFCPUFFim: Double; vICMSUFFim: Double; 
                       vICMSUFIni: Double): WideString; safecall;
    function ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double; 
                                 _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double; 
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vCred: Double; 
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double; 
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                      const _infAdFisco_Opc: WideString; 
                                      const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString; safecall;
    function identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; 
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                              const verProc: WideString; const indGlobalizado: WideString; 
                              const cMunEnv: WideString; const xMunEnv: WideString; 
                              const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                              const cMunIni: WideString; const xMunIni: WideString; 
                              const UFIni: WideString; const cMunFim: WideString; 
                              const xMunFim: WideString; const UFFim: WideString; retira: Integer; 
                              const xDetRetira: WideString; indIEToma: Integer; 
                              const tomador: WideString; const dhCont_Opc: WideString; 
                              const xJust_Opc: WideString): WideString; safecall;
    function ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                       tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                       const indGlobalizado: WideString; const xMunEnv: WideString; 
                       const modal: WideString; tpServ: Integer; const xMunIni: WideString; 
                       const xMunFim: WideString; retira: Integer; const xDetRetira: WideString; 
                       indIEToma: Integer; const tomador: WideString; const dhCont_Opc: WideString; 
                       const xJust_Opc: WideString): WideString; safecall;
    function emitente300(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                        const IE_Opc: WideString; const xNome: WideString; 
                        const xFant_Opc: WideString; const fone_Opc: WideString; 
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                        const CEP_Opc: WideString; const UF: WideString; 
                        const cPais_Opc: WideString; const xPais_Opc: WideString; 
                        const email_Opc: WideString): WideString; safecall;
    function remetente300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; safecall;
    function expedidor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; safecall;
    function recebedor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; safecall;
    function destinatario300(const CNPJ: WideString; const CPF: WideString; 
                             const IE_Opc: WideString; const xNome: WideString; 
                             const fone_Opc: WideString; const ISUF_Opc: WideString; 
                             const xLgr: WideString; const nro: WideString; 
                             const xCpl_Opc: WideString; const xBairro: WideString; 
                             const cMun: WideString; const xMun: WideString; 
                             const CEP_Opc: WideString; const UF: WideString; 
                             const cPais_Opc: WideString; const xPais_Opc: WideString; 
                             const email_Opc: WideString): WideString; safecall;
    function infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString; 
                           const emiDocAnt_Opc: WideString; const infModal: WideString; 
                           const veicNovos_Opc: WideString; const cobr_Opc: WideString; 
                           const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString; 
                           const infCTeMultimodal_Opc: WideString): WideString; safecall;
    function infCarga300(vCarga_Opc: Double; const prodPred: WideString; 
                         const xOutCat_Opc: WideString; const infQ: WideString; 
                         vCargaAverb_Opc: Double): WideString; safecall;
    function rod300(const versaoModal: WideString; const RNTRC: WideString; 
                    const occ_Opc: WideString): WideString; safecall;
    function aereo300(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const peri_Opc: WideString): WideString; safecall;
    function peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double; 
                     const uniAP: WideString): WideString; safecall;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveCTe: WideString; const CNPJTomador: WideString; 
                                 const xObs: WideString; const dhEvento: WideString; 
                                 out nProtocolo: WideString; out dProtocolo: WideString; 
                                 const proxy: WideString; const usuario: WideString; 
                                 const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCTeOS(const siglaWS: WideString; const Versao: WideString; 
                        const nomeCertificado: WideString; const CTeOS: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out CTeOSAssinado: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const chaveCTe: WideString; 
                         nroInfGTV: Integer; const XMLInfGTV: WideString; 
                         const dhEvento: WideString; out nProtocolo: WideString; 
                         out dProtocolo: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString; safecall;
    function infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString; 
                    const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString; 
                    const qCarga: WideString; const infEspecie: WideString; 
                    const CNPJRem: WideString; const CPFRem: WideString; 
                    const IERemOpc: WideString; const UFRem: WideString; 
                    const xNomeRem: WideString; const CNPJDest: WideString; 
                    const CPFDest: WideString; const IEDestOpc: WideString; 
                    const UFDest: WideString; const xNomeDest: WideString; 
                    const placaOpc: WideString; const UFOpc: WideString; const RNTRCOpc: WideString): WideString; safecall;
    function infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString; safecall;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString; 
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString; 
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const ultNSURecebido: WideString; out verAplic: WideString; 
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString; 
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                      const cMunEnv: WideString; const xMunEnv: WideString; 
                      const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                      indIEToma: Integer; const cMunIni_Opc: WideString; 
                      const xMunIni_Opc: WideString; const UFIni_Opc: WideString; 
                      const cMunFim_Opc: WideString; const xMunFim_Opc: WideString; 
                      const UFFim_Opc: WideString; const infPercurso_Opc: WideString; 
                      const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                         const verProc: WideString; const xMunEnv: WideString; 
                         const modal: WideString; tpServ: Integer; indIEToma: Integer; 
                         const xMunIni: WideString; const xMunFim: WideString; 
                         const infPercurso_Opc: WideString; const dhCont_Opc: WideString; 
                         const xJust_Opc: WideString): WideString; safecall;
    function complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString; 
                        const xEmi_Opc: WideString; const xObs_Opc: WideString; 
                        const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; safecall;
    function tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; safecall;
    function ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double; 
                            vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double; 
                            const infAdFisco: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double; 
                            vICMS: Double; vCred: Double; vTotTrib_Opc: Double; 
                            const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double; 
                                 pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double; 
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                                 const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; safecall;
    function InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; vINSS_Opc: Double; 
                        vCSLL_Opc: Double): WideString; safecall;
    function infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString; safecall;
    function infQCteOS(const qCarga: WideString): WideString; safecall;
    function infDocRef(const nDoc: WideString; const serie_Opc: WideString; 
                       const subSerie_Opc: WideString; const dEmi: WideString; 
                       const vDoc_Opc: WideString): WideString; safecall;
    function segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString; 
                      const nApol_Opc: WideString): WideString; safecall;
    function infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString; safecall;
    function infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString; 
                               const CPF: WideString; const mod_: WideString; 
                               const serie: WideString; const subSerie_Opc: WideString; 
                               const nro: WideString; valor: Double; const dEmi: WideString): WideString; safecall;
    function infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString; safecall;
    function infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString; safecall;
    function infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString; 
                          const seg_Opc: WideString; const infModal_Opc: WideString; 
                          const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString; safecall;
    function rodOS(const _versaoModal: WideString; const TAF: WideString; 
                   const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString; safecall;
    function veicOS(const placa: WideString; const RENAVAM_Opc: WideString; 
                    const propOS_Opc: WideString; const UF_Opc: WideString): WideString; safecall;
    function propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString; 
                    const NroRegEstadual: WideString; const xNome: WideString; 
                    const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString; safecall;
    function CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const tomaOpc: WideString; 
                   const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                   const autXMLOpc: WideString): WideString; safecall;
    function infPercurso(const UFPer: WideString): WideString; safecall;
    function ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                          const ICMSUFFim_Opc: WideString): WideString; safecall;
    function infCteComp300(const chCte: WideString): WideString; safecall;
    function idDocAntEle300(const chCte: WideString): WideString; safecall;
    function fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString; 
                      const xDest_Opc: WideString; const xRota_Opc: WideString): WideString; safecall;
    function infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString; 
                                const mod_: WideString; const serie: WideString; 
                                const subSerie_Opc: WideString; const nro: WideString; 
                                valor: Double; dEmi: TDateTime; const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refCTe300(const chCte: WideString; const refCte: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString; 
                                    const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString; safecall;
    function aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double; 
                           const xNavio: WideString; const balsa_Opc: WideString; 
                           const nViag_Opc: WideString; const direc: WideString; 
                           const irin: WideString; const detCont_Opc: WideString; 
                           const _tpNav_Opc: WideString): WideString; safecall;
    function infCTeMultimodal(const chCte: WideString): WideString; safecall;
    function infRespTec(const CNPJ: WideString; const xContato: WideString; 
                        const email: WideString; const fone: WideString; 
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; safecall;
    function CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                         const complOpc: WideString; const emit: WideString; 
                         const remOpc: WideString; const expedOpc: WideString; 
                         const recebOpc: WideString; const destOpc: WideString; 
                         const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                         const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                           const complOpc: WideString; const emit: WideString; 
                           const tomaOpc: WideString; const vPrest: WideString; 
                           const imp: WideString; const infCTe: WideString; 
                           const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString; safecall;
    function rodOS_2018002(const versaoModal: WideString; const TAF: WideString; 
                           const NroRegEstadual: WideString; const veicOS_Opc: WideString; 
                           const infFretamento_Opc: WideString): WideString; safecall;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString; 
                         const email: WideString; const fone: WideString; 
                         const idCSRT_Opc: WideString; const CSRT_Opc: WideString; 
                         const chaveCTe_Opc: WideString): WideString; safecall;
    function CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                     const compl_Opc: WideString; const emit: WideString; 
                     const rem_Opc: WideString; const exped_Opc: WideString; 
                     const receb_Opc: WideString; const dest_Opc: WideString; 
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                     const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                     const infSuplCTe_Opc: WideString): WideString; safecall;
    function CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const complOpc: WideString; const emit: WideString; 
                       const tomaOpc: WideString; const vPrest: WideString; const imp: WideString; 
                       const infCTe: WideString; const autXMLOpc: WideString; 
                       const infRespTecOpc: WideString; const infSuplCTeOpc: WideString): WideString; safecall;
    function infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; out qrCode: WideString; 
                        out resultado: Integer; out msgResultado: WideString): WideString; safecall;
    function EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroCECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhEntrega: WideString; const nDoc: WideString; 
                        const xNome: WideString; latitude: Double; longitude: Double; 
                        const hashEntrega: WideString; const dhHashEntrega: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function infEntrega(const chNFe: WideString): WideString; safecall;
    function calcSha1(const texto: WideString): WideString; safecall;
    function EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; nroCancCE: Integer; 
                         const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                         const nProtocoloCE: WideString; const dhEvento: WideString; 
                         out nProtocolo: WideString; out dProtocolo: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString; 
                          const nomeCertificado: WideString; const CTe: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; out CTeAssinado: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaGTVe(const siglaWS: WideString; const Versao: WideString; 
                       const nomeCertificado: WideString; const GTVe: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; out GTVeAssinado: WideString; 
                       out nProtocolo: WideString; out dProtocolo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; safecall;
    function GTVe(const Versao: WideString; const Id: WideString; const ide: WideString; 
                  const compl_Opc: WideString; const emit: WideString; const rem: WideString; 
                  const dest: WideString; const origem_Opc: WideString; 
                  const destino_Opc: WideString; const detGTV: WideString; 
                  const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                  const infSuplCTe_Opc: WideString): WideString; safecall;
    function ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                     mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                     tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer; 
                     const verProc: WideString; const cMunEnv: WideString; 
                     const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString; 
                     tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString; 
                     const dhChegadaDest: WideString; const tomador: WideString; 
                     const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                         const IE_Opc: WideString; const xNome: WideString; 
                         const xFant_Opc: WideString; const fone_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const cPais_Opc: WideString; const xPais_Opc: WideString; 
                         const email_Opc: WideString): WideString; safecall;
    function origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                    const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                    const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                     const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                     const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function detGTV(const infEspecie: WideString; const qCarga: WideString; 
                    const infVeiculo: WideString): WideString; safecall;
    function infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString; 
                          const tpNumerario: WideString; const xMoedaEstr: WideString): WideString; safecall;
    function infVeiculo(const placa: WideString; const UF_Opc: WideString; 
                        const RNTRC_Opc: WideString): WideString; safecall;
    function infDocRefChBPe(const chBPe: WideString): WideString; safecall;
    function comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; safecall;
    function infGTVe(const chCte: WideString; const comp: WideString): WideString; safecall;
    function infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString; 
                                  const infGTVe_Opc: WideString): WideString; safecall;
    function emitenteCRT(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const fone_Opc: WideString; const CRT_Opc: WideString): WideString; safecall;
    function EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                     const nomeCertificado: WideString; const Versao: WideString; 
                                     out msgDados: WideString; out msgRetWS: WideString; 
                                     out cStat: Integer; out msgResultado: WideString; 
                                     const chaveCTe: WideString; const CNPJTomador: WideString; 
                                     const nProtEvPrestDes: WideString; const dhEvento: WideString; 
                                     out nProtocolo: WideString; out dProtocolo: WideString; 
                                     const proxy: WideString; const usuario: WideString; 
                                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString; safecall;
    function EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroIECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhTentativaEntrega: WideString; nroTentativa: Integer; 
                        tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double; 
                        longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString; 
                        const dhHashTentativaEntrega_Opc: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; nroCancIECTe: Integer; 
                            const chaveCTe: WideString; const nProt: WideString; 
                            const nProtIE: WideString; const dhEvento: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  CTe_Util_InterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B11037F-2F15-4558-A7B7-BA46801844A7}
// *********************************************************************//
  CTe_Util_InterfaceDisp = dispinterface
    ['{4B11037F-2F15-4558-A7B7-BA46801844A7}']
    function Versao: WideString; dispid 1;
    function Assinar(const XMLString: WideString; const RefUri: WideString; const Nome: WideString; 
                     out XMLAssinado: WideString; out msgResultado: WideString): Integer; dispid 2;
    function PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer; dispid 3;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 4;
    function CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const codigoSeguranca: WideString; out msgResultado: WideString; 
                          out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer; dispid 5;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; dispid 6;
    function ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString): Integer; dispid 7;
    function EnviaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       var msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 8;
    function BuscaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const nroRecibo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 9;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        const chaveCTe: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString): Integer; dispid 10;
    function CancelaCT(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out procCanc: WideString; 
                       const chaveCTe: WideString; const nProtocolo: WideString; 
                       const justificativa: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 11;
    function InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            out procInut: WideString; const cUF: WideString; const Ano: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const nroCTeInicial: WideString; 
                            const nroCTeFinal: WideString; const justificativa: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): Integer; dispid 12;
    function EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out CTeAssinado: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString; 
                      const licenca: WideString): Integer; dispid 13;
    function BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; const siglaUF: WideString; 
                      var CTeAssinado: WideString; var nroRecibo: WideString; 
                      out procCTe: WideString; out nroProtocolo: WideString; 
                      out dAutorizacao: WideString; const nomeCertificado: WideString; 
                      const Versao: WideString; out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 14;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; 
                           out msgResultado: WideString; const tpArgumento: WideString; 
                           const argumento: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): Integer; dispid 15;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out chvCLe: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 16;
    function CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                              const CNPJ: WideString; const modelo: WideString; 
                              const serie: WideString; const numero: WideString; 
                              const tpEmis: WideString; const codigoSeguranca: WideString; 
                              out msgResultado: WideString; out cCT: WideString; 
                              out cDV: WideString; out chaveCTe: WideString): Integer; dispid 100;
    function CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString; 
                         out protocolo: WideString; out retCancCTe: WideString; 
                         out resultado: Integer; const nomeCertificado: WideString; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; dispid 101;
    function CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString; 
                             out protocolo: WideString; out retCancCTe: WideString; 
                             out resultado: Integer; const nomeCertificado: WideString; 
                             out msgResultado: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString): WideString; dispid 102;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString; 
                      const emailDestinatario: WideString; const emailBcc: WideString; 
                      const assunto: WideString; const mensagem: WideString; 
                      const arquivos: WideString; const smtpCliente: WideString; 
                      const smtpPorta: WideString; const smtpSSL: WideString; 
                      const smtpUsuario: WideString; const smtpSenha: WideString; 
                      const HTML: WideString; const confirmacao: WideString; 
                      out msgResultado: WideString): Integer; dispid 103;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString; dispid 104;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString; dispid 105;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString; dispid 106;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 107;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 108;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; dispid 109;
    function MontaLoteCTe(const Versao: WideString; const idLote: WideString; 
                          const CTe: WideString; out quantidadeCTe: Integer; 
                          out cResultado: Integer; out msgResultado: WideString): WideString; dispid 110;
    function PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString; 
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; dispid 111;
    function MontaProcCTe(const Versao: WideString; const enviCTe: WideString; 
                          const retConsReciCTe: WideString; out qtdeCTe: Integer; 
                          out qtdeProcCTe: Integer; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 112;
    function emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                      const _xFant_Opc: WideString; const _xLgr: WideString; 
                      const _nro: WideString; const _xCpl_Opc: WideString; 
                      const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                      const _CEP_Opc: WideString; const _UF: WideString; const _fone_Opc: WideString): WideString; dispid 300;
    function remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _xFant_Opc: WideString; 
                       const _fone_Opc: WideString; const _xLgr: WideString; 
                       const _nro: WideString; const _xCpl_Opc: WideString; 
                       const _xBairro: WideString; const _cMun: WideString; 
                       const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString; const _infnotas: WideString): WideString; dispid 301;
    function expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString; dispid 302;
    function recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString; dispid 303;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                          const _xNome: WideString; const _fone_Opc: WideString; 
                          const _ISUF_Opc: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _CEP_Opc: WideString; 
                          const _UF: WideString; const _cPais_Opc: WideString; 
                          const _xPais_Opc: WideString; const _email_Opc: WideString; 
                          const _locEnt_Opc: WideString): WideString; dispid 304;
    function localEntrega(const _CNPJ: WideString; const _CPF: WideString; 
                          const _xNome: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _UF: WideString): WideString; dispid 305;
    function compVPrest(const _xNome: WideString; _vComp: Double): WideString; dispid 306;
    function vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString; dispid 307;
    function ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                       const _infAdFisco_Opc: WideString): WideString; dispid 308;
    function ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; dispid 309;
    function ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; dispid 310;
    function ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                       _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 311;
    function ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 312;
    function ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                            _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                            const _infAdFisco_Opc: WideString): WideString; dispid 313;
    function ImpICMSSN(const _infAdFisco_Opc: WideString): WideString; dispid 314;
    function identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                           const _natOp: WideString; _forPag: Integer; _mod: Integer; 
                           _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; 
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; 
                           _procEmi: Integer; const _verProc: WideString; 
                           const _refCTe_Opc: WideString; const _cMunEnv: WideString; 
                           const _xMunEnv: WideString; const _UFEnv: WideString; 
                           const _modal: WideString; _tpServ: Integer; const _cMunIni: WideString; 
                           const _xMunIni: WideString; const _UFIni: WideString; 
                           const _cMunFim: WideString; const _xMunFim: WideString; 
                           const _UFFim: WideString; _retira: Integer; 
                           const _xDetRetira: WideString; const _tomador: WideString; 
                           _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; dispid 315;
    function tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString; 
                     const _IE_Opc: WideString; const _xNome: WideString; 
                     const _xFant_Opc: WideString; const _fone_Opc: WideString; 
                     const _xLgr: WideString; const _nro: WideString; const _xCpl_Opc: WideString; 
                     const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                     const _CEP_Opc: WideString; const _UF: WideString; 
                     const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                     const _email_Opc: WideString): WideString; dispid 316;
    function compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString; 
                   const _xEmi_Opc: WideString; const _fluxo_Opc: WideString; 
                   const _entrega_Opc: WideString; const _origCalc_Opc: WideString; 
                   const _destCalc_Opc: WideString; const xObs_Opc: WideString; 
                   const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString; dispid 317;
    function fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString; 
                   const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString; dispid 318;
    function pass(const _xPass_Opc: WideString): WideString; dispid 319;
    function Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer; 
                     _hIni: TDateTime; _hFim: TDateTime): WideString; dispid 320;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 321;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 322;
    function infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString; 
                        const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                        const _infModal: WideString; const _peri_Opc: WideString; 
                        const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                        const _infCteSub_Opc: WideString): WideString; dispid 323;
    function infCarga(_vCarga_Opc: Double; const _prodPred: WideString; 
                      const _xOutCat_Opc: WideString; const _infQ: WideString): WideString; dispid 324;
    function infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString; dispid 325;
    function contQt(const _nCont: WideString; const _lacContQt_Opc: WideString; 
                    _dPrev_Opc: TDateTime): WideString; dispid 326;
    function lacContQt(const _nLacre: WideString): WideString; dispid 327;
    function EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; const _IE_Opc: WideString; 
                       const _UF_Opc: WideString; const _xNome: WideString; 
                       const _idDocAnt1: WideString; const _idDocAnt2: WideString): WideString; dispid 328;
    function idDocAntPap(_tpDoc: Integer; const _serie: WideString; 
                         const _subSerie_Opc: WideString; const _nDoc: WideString; _dEmi: TDateTime): WideString; dispid 329;
    function idDocAntEle(const _chave: WideString): WideString; dispid 330;
    function seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString; 
                 const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString; dispid 331;
    function peri(const _nOnu: WideString; const _xNomeAE: WideString; 
                  const _xClaRisco: WideString; const _grEmb_Opc: WideString; 
                  const _qTotProd: WideString; const _qVolTipo_Opc: WideString; 
                  const _pontoFulgor_Opc: WideString): WideString; dispid 332;
    function veicNovos(const _chassi: WideString; const _cCor: WideString; const _xCor: WideString; 
                       const _cMod: WideString; _vUnit: Double; _vFrete: Double): WideString; dispid 333;
    function cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double; 
                  _vLiq_Opc: Double; const _dup_Opc: WideString): WideString; dispid 334;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; dispid 335;
    function infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString; dispid 336;
    function infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString; 
                             const _mod: WideString; const _serie: WideString; 
                             const _subSerie_Opc: WideString; const _nro: WideString; 
                             _valor: Double; _dEmi: TDateTime): WideString; dispid 338;
    function infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString; dispid 339;
    function infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString; dispid 340;
    function infCteComp(const _chave: WideString; const _vPresComp: WideString; 
                        const _impComp: WideString): WideString; dispid 341;
    function vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString; dispid 342;
    function compComp(const _xNome: WideString; _vComp: Double): WideString; dispid 343;
    function ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                           const _infAdFisco_Opc: WideString): WideString; dispid 344;
    function ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; dispid 345;
    function ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; dispid 346;
    function ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                           _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 347;
    function ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 348;
    function ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; 
                                _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                                const _infAdFisco_Opc: WideString): WideString; dispid 349;
    function ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString; dispid 350;
    function infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString; dispid 351;
    function rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime; 
                 _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString; 
                 const _valePed_Opc: WideString; const _veic_Opc: WideString; 
                 const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString; dispid 352;
    function occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime; 
                 const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString; 
                 const _UF: WideString; const _fone_Opc: WideString): WideString; dispid 353;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                     const _CNPJPg_Opc: WideString): WideString; dispid 354;
    function veic(const _cInt_Opc: WideString; const _RENAVAM: WideString; 
                  const _placa: WideString; const _tara: WideString; const _capKG: WideString; 
                  const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer; 
                  const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString; 
                  const _prop_Opc: WideString): WideString; dispid 355;
    function prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                  const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString; 
                  _tpProp: Integer): WideString; dispid 356;
    function lacRodo(const _nLacre: WideString): WideString; dispid 357;
    function moto(const _xNome: WideString; const _CPF: WideString): WideString; dispid 358;
    function CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                 const _compl_Opc: WideString; const _emit: WideString; const _rem_Opc: WideString; 
                 const _exped_Opc: WideString; const _receb_Opc: WideString; 
                 const _dest_Opc: WideString; const _vPrest: WideString; const _imp: WideString; 
                 const _infCTe: WideString): WideString; dispid 359;
    function infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString; 
                   const _mod: WideString; const _serie: WideString; const _nDoc: WideString; 
                   _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; 
                   _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double; 
                   const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString; dispid 360;
    function infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString; dispid 361;
    function infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString; 
                       const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString; dispid 362;
    function localRetirada(const _CNPJ: WideString; const _CPF: WideString; 
                           const _xNome: WideString; const _xLgr: WideString; 
                           const _nro: WideString; const _xCpl_Opc: WideString; 
                           const _xBairro: WideString; const _cMun: WideString; 
                           const _xMun: WideString; const _UF: WideString): WideString; dispid 363;
    function aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double; 
                   const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString; 
                   const _xNavio: WideString; const _balsa_Opc: WideString; 
                   const _nViag_Opc: WideString; const _direc: WideString; 
                   const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString; 
                   const _prtDest_Opc: WideString; const _tpNav_Opc: WideString; 
                   const _irin: WideString; const _detCont_Opc: WideString): WideString; dispid 364;
    function balsa(const _xBalsa: WideString): WideString; dispid 365;
    function detCont(const _nCont: WideString; const _lacres_Opc: WideString; 
                     const _infDoc_Opc: WideString): WideString; dispid 366;
    function lacre(const _nLacre: WideString): WideString; dispid 367;
    function infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString; dispid 368;
    function infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString; dispid 369;
    function geraPdfDACTE(const XML: WideString; const logo: WideString; 
                          const quadroRecibo: WideString; const visualizar: WideString; 
                          const parametros: WideString; out msgResultado: WideString): Integer; dispid 400;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                      out DLL_data: WideString; out DLL_dataValidade: WideString; 
                      out URL_versao: WideString; out URL_data: WideString): WideString; dispid 500;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                out msgErro: WideString): Integer; dispid 501;
    function WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString; 
                         const mensagemXML: WideString; out resultado: Integer; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString; dispid 502;
    function ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                    const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer; 
                    _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer; 
                    _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer; 
                    const _verProc: WideString; const _refCTe_Opc: WideString; 
                    const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer; 
                    const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer; 
                    const _xDetRetira: WideString; const _tomador: WideString; 
                    _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; dispid 503;
    function aereo(const versaoModal: WideString; const nMinu_Opc: WideString; 
                   const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString; 
                   const IdT_Opc: WideString; const CL_tarifa: WideString; 
                   const cTar_tarifa_Opc: WideString; vTar_tarifa: Double; 
                   const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                   const cIMP_Opc: WideString): WideString; dispid 504;
    function cInfManu(const cInfManu: WideString): WideString; dispid 505;
    function cIMP(const cIMP: WideString): WideString; dispid 506;
    function AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString; 
                         const Atributo: WideString; const nomeCertificado: WideString; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; dispid 507;
    function ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                          _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 508;
    function ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 509;
    function ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                          const _infAdFisco: WideString): WideString; dispid 510;
    function ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                          _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString; dispid 511;
    function ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString; dispid 512;
    function ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                               _pICMSOutraUF: Double; _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                               const _infAdFisco_Opc: WideString): WideString; dispid 513;
    function ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 514;
    function ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 515;
    function ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString; dispid 516;
    function ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                              const _infAdFisco: WideString): WideString; dispid 517;
    function ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                              _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString; dispid 518;
    function ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vCred: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 519;
    function ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; 
                                   _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                   _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString): WideString; dispid 520;
    function ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 521;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer; 
                       out msgResultado: WideString; const XMLCTe: WideString; 
                       const xJust: WideString; const dhEvento: WideString; 
                       out nProtocoloEPEC: WideString; out dProtocoloEPEC: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; dispid 530;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                          const CNPJ: WideString; valorTotalCTe: Double; 
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                          dataEmissaoCTe: TDateTime; out codigoBarras: WideString; 
                                          out msgResultado: WideString): Integer; dispid 540;
    function CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveCTe: WideString; const nProtocolo: WideString; 
                             const justificativa: WideString; const dhEvento: WideString; 
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; dispid 550;
    function RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer; 
                                const nomeCertificado: WideString; const Versao: WideString; 
                                out msgDados: WideString; out msgRetWS: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const chaveCTe: WideString; const nDoc_Opc: WideString; 
                                const xRegistro: WideString; nroRegistro: Integer; 
                                const dhEvento: WideString; out nProtocolo: WideString; 
                                out dProtocolo: WideString; const proxy: WideString; 
                                const usuario: WideString; const senha: WideString; 
                                const licenca: WideString): WideString; dispid 551;
    function EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                      out msgResultado: WideString; const chaveCTe: WideString; 
                      const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                      const dataCorrecao: WideString; out nroProtocolo: WideString; 
                      out dhProtocolo: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; dispid 552;
    function geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString; 
                             const valorAlterado: WideString; const nroItemAlterado_Opc: WideString): WideString; dispid 553;
    function remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const fone_Opc: WideString; const xLgr: WideString; const nro: WideString; 
                         const xCpl_Opc: WideString; const xBairro: WideString; 
                         const cMun: WideString; const xMun: WideString; const CEP_Opc: WideString; 
                         const UF: WideString; const cPais_Opc: WideString; 
                         const xPais_Opc: WideString; const email_Opc: WideString; 
                         const locColeta_Opc: WideString): WideString; dispid 554;
    function locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                       const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                       const UF: WideString): WideString; dispid 555;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; dispid 556;
    function CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const remOpc: WideString; 
                   const expedOpc: WideString; const recebOpc: WideString; 
                   const destOpc: WideString; const vPrest: WideString; const imp: WideString; 
                   const infCTe: WideString; const autXMLOpc: WideString): WideString; dispid 560;
    function infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString; 
                      const mod_: WideString; const serie: WideString; const nDoc: WideString; 
                      dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                      vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double; 
                      const PINOpc: WideString; dPrevOpc: TDateTime; 
                      const unidCargaTranspOpc: WideString): WideString; dispid 561;
    function infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime; 
                       const unidCargaTranspOpc: WideString): WideString; dispid 562;
    function infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString; 
                          const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double; 
                          dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString; dispid 563;
    function lacreUnidCarga(const nLacre: WideString): WideString; dispid 564;
    function lacreUnidTransp(const nLacre: WideString): WideString; dispid 565;
    function infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString; 
                          const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString; dispid 566;
    function infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString; 
                           const lacUnidTransp_Opc: WideString; const infUnidCarga_Opc: WideString; 
                           const qtdRat_Opc: WideString): WideString; dispid 567;
    function infCteComp_2G(const _chave: WideString): WideString; dispid 568;
    function infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString; 
                           const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                           const _infModal: WideString; const _peri_Opc: WideString; 
                           const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                           const _infCteSub_Opc: WideString): WideString; dispid 569;
    function aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xLAgEmi_Opc: WideString; const IdT_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const xDime_natCarga_Opc: WideString; 
                      const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString; dispid 570;
    function valePed_2G(const CNPJForn: WideString; const nCompra: WideString; 
                        const CNPJPg_Opc: WideString; vValePed: Double): WideString; dispid 571;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                       const emailDestinatario: WideString; const emailBcc: WideString; 
                       const assunto: WideString; const mensagem: WideString; 
                       const arquivos: WideString; const smtpCliente: WideString; 
                       const smtpPorta: WideString; const smtpSSL: WideString; 
                       const smtpUsuario: WideString; const smtpSenha: WideString; 
                       const HTML: WideString; const confirmacao: WideString; 
                       out msgResultado: WideString; const timeout: WideString): Integer; dispid 572;
    function ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; pICMSInter: Double; 
                       pICMSInterPart: Double; vFCPUFFim: Double; vICMSUFFim: Double; 
                       vICMSUFIni: Double): WideString; dispid 573;
    function ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double; 
                                 _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 574;
    function ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 575;
    function ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double; 
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 576;
    function ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 577;
    function ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vCred: Double; 
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString; dispid 578;
    function ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double; 
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                      const _infAdFisco_Opc: WideString; 
                                      const ICMSUFFim_Opc: WideString): WideString; dispid 579;
    function ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString; dispid 580;
    function identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; 
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                              const verProc: WideString; const indGlobalizado: WideString; 
                              const cMunEnv: WideString; const xMunEnv: WideString; 
                              const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                              const cMunIni: WideString; const xMunIni: WideString; 
                              const UFIni: WideString; const cMunFim: WideString; 
                              const xMunFim: WideString; const UFFim: WideString; retira: Integer; 
                              const xDetRetira: WideString; indIEToma: Integer; 
                              const tomador: WideString; const dhCont_Opc: WideString; 
                              const xJust_Opc: WideString): WideString; dispid 581;
    function ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                       tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                       const indGlobalizado: WideString; const xMunEnv: WideString; 
                       const modal: WideString; tpServ: Integer; const xMunIni: WideString; 
                       const xMunFim: WideString; retira: Integer; const xDetRetira: WideString; 
                       indIEToma: Integer; const tomador: WideString; const dhCont_Opc: WideString; 
                       const xJust_Opc: WideString): WideString; dispid 582;
    function emitente300(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 583;
    function tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                        const IE_Opc: WideString; const xNome: WideString; 
                        const xFant_Opc: WideString; const fone_Opc: WideString; 
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                        const CEP_Opc: WideString; const UF: WideString; 
                        const cPais_Opc: WideString; const xPais_Opc: WideString; 
                        const email_Opc: WideString): WideString; dispid 584;
    function remetente300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; dispid 585;
    function expedidor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; dispid 586;
    function recebedor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; dispid 587;
    function destinatario300(const CNPJ: WideString; const CPF: WideString; 
                             const IE_Opc: WideString; const xNome: WideString; 
                             const fone_Opc: WideString; const ISUF_Opc: WideString; 
                             const xLgr: WideString; const nro: WideString; 
                             const xCpl_Opc: WideString; const xBairro: WideString; 
                             const cMun: WideString; const xMun: WideString; 
                             const CEP_Opc: WideString; const UF: WideString; 
                             const cPais_Opc: WideString; const xPais_Opc: WideString; 
                             const email_Opc: WideString): WideString; dispid 588;
    function infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString; 
                           const emiDocAnt_Opc: WideString; const infModal: WideString; 
                           const veicNovos_Opc: WideString; const cobr_Opc: WideString; 
                           const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString; 
                           const infCTeMultimodal_Opc: WideString): WideString; dispid 589;
    function infCarga300(vCarga_Opc: Double; const prodPred: WideString; 
                         const xOutCat_Opc: WideString; const infQ: WideString; 
                         vCargaAverb_Opc: Double): WideString; dispid 599;
    function rod300(const versaoModal: WideString; const RNTRC: WideString; 
                    const occ_Opc: WideString): WideString; dispid 600;
    function aereo300(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const peri_Opc: WideString): WideString; dispid 601;
    function peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double; 
                     const uniAP: WideString): WideString; dispid 602;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveCTe: WideString; const CNPJTomador: WideString; 
                                 const xObs: WideString; const dhEvento: WideString; 
                                 out nProtocolo: WideString; out dProtocolo: WideString; 
                                 const proxy: WideString; const usuario: WideString; 
                                 const senha: WideString; const licenca: WideString): WideString; dispid 603;
    function EnviaCTeOS(const siglaWS: WideString; const Versao: WideString; 
                        const nomeCertificado: WideString; const CTeOS: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out CTeOSAssinado: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; dispid 604;
    function EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const chaveCTe: WideString; 
                         nroInfGTV: Integer; const XMLInfGTV: WideString; 
                         const dhEvento: WideString; out nProtocolo: WideString; 
                         out dProtocolo: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString; dispid 605;
    function infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString; 
                    const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString; 
                    const qCarga: WideString; const infEspecie: WideString; 
                    const CNPJRem: WideString; const CPFRem: WideString; 
                    const IERemOpc: WideString; const UFRem: WideString; 
                    const xNomeRem: WideString; const CNPJDest: WideString; 
                    const CPFDest: WideString; const IEDestOpc: WideString; 
                    const UFDest: WideString; const xNomeDest: WideString; 
                    const placaOpc: WideString; const UFOpc: WideString; const RNTRCOpc: WideString): WideString; dispid 606;
    function infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString; dispid 607;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString; 
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString; 
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; dispid 608;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const ultNSURecebido: WideString; out verAplic: WideString; 
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString; 
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; dispid 609;
    function ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                      const cMunEnv: WideString; const xMunEnv: WideString; 
                      const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                      indIEToma: Integer; const cMunIni_Opc: WideString; 
                      const xMunIni_Opc: WideString; const UFIni_Opc: WideString; 
                      const cMunFim_Opc: WideString; const xMunFim_Opc: WideString; 
                      const UFFim_Opc: WideString; const infPercurso_Opc: WideString; 
                      const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 610;
    function ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                         const verProc: WideString; const xMunEnv: WideString; 
                         const modal: WideString; tpServ: Integer; indIEToma: Integer; 
                         const xMunIni: WideString; const xMunFim: WideString; 
                         const infPercurso_Opc: WideString; const dhCont_Opc: WideString; 
                         const xJust_Opc: WideString): WideString; dispid 611;
    function complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString; 
                        const xEmi_Opc: WideString; const xObs_Opc: WideString; 
                        const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; dispid 612;
    function tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString; dispid 613;
    function ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double; 
                            vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; dispid 614;
    function ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double; 
                            const infAdFisco: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString; dispid 615;
    function ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double; 
                            vICMS: Double; vCred: Double; vTotTrib_Opc: Double; 
                            const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString; dispid 616;
    function ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double; 
                                 pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double; 
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                                 const infTribFed_Opc: WideString): WideString; dispid 617;
    function ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; dispid 618;
    function InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; vINSS_Opc: Double; 
                        vCSLL_Opc: Double): WideString; dispid 619;
    function infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString; dispid 620;
    function infQCteOS(const qCarga: WideString): WideString; dispid 621;
    function infDocRef(const nDoc: WideString; const serie_Opc: WideString; 
                       const subSerie_Opc: WideString; const dEmi: WideString; 
                       const vDoc_Opc: WideString): WideString; dispid 622;
    function segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString; 
                      const nApol_Opc: WideString): WideString; dispid 623;
    function infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString; dispid 624;
    function infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString; 
                               const CPF: WideString; const mod_: WideString; 
                               const serie: WideString; const subSerie_Opc: WideString; 
                               const nro: WideString; valor: Double; const dEmi: WideString): WideString; dispid 625;
    function infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString; dispid 626;
    function infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString; dispid 627;
    function infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString; 
                          const seg_Opc: WideString; const infModal_Opc: WideString; 
                          const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString; dispid 628;
    function rodOS(const _versaoModal: WideString; const TAF: WideString; 
                   const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString; dispid 629;
    function veicOS(const placa: WideString; const RENAVAM_Opc: WideString; 
                    const propOS_Opc: WideString; const UF_Opc: WideString): WideString; dispid 630;
    function propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString; 
                    const NroRegEstadual: WideString; const xNome: WideString; 
                    const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString; dispid 631;
    function CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const tomaOpc: WideString; 
                   const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                   const autXMLOpc: WideString): WideString; dispid 632;
    function infPercurso(const UFPer: WideString): WideString; dispid 633;
    function ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                          const ICMSUFFim_Opc: WideString): WideString; dispid 634;
    function infCteComp300(const chCte: WideString): WideString; dispid 635;
    function idDocAntEle300(const chCte: WideString): WideString; dispid 636;
    function fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString; 
                      const xDest_Opc: WideString; const xRota_Opc: WideString): WideString; dispid 637;
    function infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString; dispid 638;
    function infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString; 
                                const mod_: WideString; const serie: WideString; 
                                const subSerie_Opc: WideString; const nro: WideString; 
                                valor: Double; dEmi: TDateTime; const indAlteraToma_Opc: WideString): WideString; dispid 639;
    function infCteSub_refCTe300(const chCte: WideString; const refCte: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString; dispid 640;
    function infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString; 
                                    const indAlteraToma_Opc: WideString): WideString; dispid 641;
    function infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString; dispid 642;
    function aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double; 
                           const xNavio: WideString; const balsa_Opc: WideString; 
                           const nViag_Opc: WideString; const direc: WideString; 
                           const irin: WideString; const detCont_Opc: WideString; 
                           const _tpNav_Opc: WideString): WideString; dispid 643;
    function infCTeMultimodal(const chCte: WideString): WideString; dispid 644;
    function infRespTec(const CNPJ: WideString; const xContato: WideString; 
                        const email: WideString; const fone: WideString; 
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; dispid 645;
    function CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                         const complOpc: WideString; const emit: WideString; 
                         const remOpc: WideString; const expedOpc: WideString; 
                         const recebOpc: WideString; const destOpc: WideString; 
                         const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                         const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; dispid 646;
    function CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                           const complOpc: WideString; const emit: WideString; 
                           const tomaOpc: WideString; const vPrest: WideString; 
                           const imp: WideString; const infCTe: WideString; 
                           const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; dispid 647;
    function infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString; dispid 648;
    function rodOS_2018002(const versaoModal: WideString; const TAF: WideString; 
                           const NroRegEstadual: WideString; const veicOS_Opc: WideString; 
                           const infFretamento_Opc: WideString): WideString; dispid 649;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString; 
                         const email: WideString; const fone: WideString; 
                         const idCSRT_Opc: WideString; const CSRT_Opc: WideString; 
                         const chaveCTe_Opc: WideString): WideString; dispid 650;
    function CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                     const compl_Opc: WideString; const emit: WideString; 
                     const rem_Opc: WideString; const exped_Opc: WideString; 
                     const receb_Opc: WideString; const dest_Opc: WideString; 
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                     const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                     const infSuplCTe_Opc: WideString): WideString; dispid 651;
    function CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const complOpc: WideString; const emit: WideString; 
                       const tomaOpc: WideString; const vPrest: WideString; const imp: WideString; 
                       const infCTe: WideString; const autXMLOpc: WideString; 
                       const infRespTecOpc: WideString; const infSuplCTeOpc: WideString): WideString; dispid 652;
    function infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; out qrCode: WideString; 
                        out resultado: Integer; out msgResultado: WideString): WideString; dispid 653;
    function EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroCECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhEntrega: WideString; const nDoc: WideString; 
                        const xNome: WideString; latitude: Double; longitude: Double; 
                        const hashEntrega: WideString; const dhHashEntrega: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; dispid 654;
    function infEntrega(const chNFe: WideString): WideString; dispid 655;
    function calcSha1(const texto: WideString): WideString; dispid 656;
    function EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; nroCancCE: Integer; 
                         const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                         const nProtocoloCE: WideString; const dhEvento: WideString; 
                         out nProtocolo: WideString; out dProtocolo: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; dispid 657;
    function EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString; 
                          const nomeCertificado: WideString; const CTe: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; out CTeAssinado: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString; dispid 658;
    function EnviaGTVe(const siglaWS: WideString; const Versao: WideString; 
                       const nomeCertificado: WideString; const GTVe: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; out GTVeAssinado: WideString; 
                       out nProtocolo: WideString; out dProtocolo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; dispid 659;
    function GTVe(const Versao: WideString; const Id: WideString; const ide: WideString; 
                  const compl_Opc: WideString; const emit: WideString; const rem: WideString; 
                  const dest: WideString; const origem_Opc: WideString; 
                  const destino_Opc: WideString; const detGTV: WideString; 
                  const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                  const infSuplCTe_Opc: WideString): WideString; dispid 660;
    function ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                     mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                     tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer; 
                     const verProc: WideString; const cMunEnv: WideString; 
                     const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString; 
                     tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString; 
                     const dhChegadaDest: WideString; const tomador: WideString; 
                     const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 670;
    function tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                         const IE_Opc: WideString; const xNome: WideString; 
                         const xFant_Opc: WideString; const fone_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const cPais_Opc: WideString; const xPais_Opc: WideString; 
                         const email_Opc: WideString): WideString; dispid 671;
    function origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                    const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                    const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 672;
    function destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                     const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                     const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 673;
    function detGTV(const infEspecie: WideString; const qCarga: WideString; 
                    const infVeiculo: WideString): WideString; dispid 674;
    function infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString; 
                          const tpNumerario: WideString; const xMoedaEstr: WideString): WideString; dispid 675;
    function infVeiculo(const placa: WideString; const UF_Opc: WideString; 
                        const RNTRC_Opc: WideString): WideString; dispid 676;
    function infDocRefChBPe(const chBPe: WideString): WideString; dispid 677;
    function comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; dispid 678;
    function infGTVe(const chCte: WideString; const comp: WideString): WideString; dispid 679;
    function infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString; 
                                  const infGTVe_Opc: WideString): WideString; dispid 680;
    function emitenteCRT(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const fone_Opc: WideString; const CRT_Opc: WideString): WideString; dispid 681;
    function EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                     const nomeCertificado: WideString; const Versao: WideString; 
                                     out msgDados: WideString; out msgRetWS: WideString; 
                                     out cStat: Integer; out msgResultado: WideString; 
                                     const chaveCTe: WideString; const CNPJTomador: WideString; 
                                     const nProtEvPrestDes: WideString; const dhEvento: WideString; 
                                     out nProtocolo: WideString; out dProtocolo: WideString; 
                                     const proxy: WideString; const usuario: WideString; 
                                     const senha: WideString; const licenca: WideString): WideString; dispid 682;
    function infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString; dispid 683;
    function EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroIECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhTentativaEntrega: WideString; nroTentativa: Integer; 
                        tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double; 
                        longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString; 
                        const dhHashTentativaEntrega_Opc: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; dispid 684;
    function EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; nroCancIECTe: Integer; 
                            const chaveCTe: WideString; const nProt: WideString; 
                            const nProtIE: WideString; const dhEvento: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; dispid 685;
  end;

// *********************************************************************//
// DispIntf:  CTe_Util_Events
// Flags:     (4096) Dispatchable
// GUID:      {2C49EADB-6764-4F8D-982F-A6591DB65612}
// *********************************************************************//
  CTe_Util_Events = dispinterface
    ['{2C49EADB-6764-4F8D-982F-A6591DB65612}']
  end;

// *********************************************************************//
// Interface: _QREncoderTables
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}
// *********************************************************************//
  _QREncoderTables = interface(IDispatch)
    ['{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderTablesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}
// *********************************************************************//
  _QREncoderTablesDisp = dispinterface
    ['{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}']
  end;

// *********************************************************************//
// Interface: _QREncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A1447CA0-E1BC-3250-9EA3-1A8649418D87}
// *********************************************************************//
  _QREncoder = interface(IDispatch)
    ['{A1447CA0-E1BC-3250-9EA3-1A8649418D87}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A1447CA0-E1BC-3250-9EA3-1A8649418D87}
// *********************************************************************//
  _QREncoderDisp = dispinterface
    ['{A1447CA0-E1BC-3250-9EA3-1A8649418D87}']
  end;

// *********************************************************************//
// Interface: _QRCodeEncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}
// *********************************************************************//
  _QRCodeEncoder = interface(IDispatch)
    ['{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}']
  end;

// *********************************************************************//
// DispIntf:  _QRCodeEncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}
// *********************************************************************//
  _QRCodeEncoderDisp = dispinterface
    ['{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}']
  end;

// *********************************************************************//
// Interface: _CteStatusServico
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6A952BD0-43A0-3A50-9619-F16301F2E1FA}
// *********************************************************************//
  _CteStatusServico = interface(IDispatch)
    ['{6A952BD0-43A0-3A50-9619-F16301F2E1FA}']
  end;

// *********************************************************************//
// DispIntf:  _CteStatusServicoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6A952BD0-43A0-3A50-9619-F16301F2E1FA}
// *********************************************************************//
  _CteStatusServicoDisp = dispinterface
    ['{6A952BD0-43A0-3A50-9619-F16301F2E1FA}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteStatusServicoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {847DEFCB-3AC3-399C-BD03-504C0F141220}
// *********************************************************************//
  _CTe_Util_cteStatusServicoCT_cteCabecMsg = interface(IDispatch)
    ['{847DEFCB-3AC3-399C-BD03-504C0F141220}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {847DEFCB-3AC3-399C-BD03-504C0F141220}
// *********************************************************************//
  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp = dispinterface
    ['{847DEFCB-3AC3-399C-BD03-504C0F141220}']
  end;

// *********************************************************************//
// Interface: _cteStatusServicoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59D057C1-370C-3F25-B217-7A84DB8E85DB}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventHandler = interface(IDispatch)
    ['{59D057C1-370C-3F25-B217-7A84DB8E85DB}']
  end;

// *********************************************************************//
// DispIntf:  _cteStatusServicoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59D057C1-370C-3F25-B217-7A84DB8E85DB}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventHandlerDisp = dispinterface
    ['{59D057C1-370C-3F25-B217-7A84DB8E85DB}']
  end;

// *********************************************************************//
// Interface: _cteStatusServicoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventArgs = interface(IDispatch)
    ['{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}']
  end;

// *********************************************************************//
// DispIntf:  _cteStatusServicoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventArgsDisp = dispinterface
    ['{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}']
  end;

// *********************************************************************//
// Interface: _CteRetRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {65507007-2035-30A1-BFE8-F631A0E220F2}
// *********************************************************************//
  _CteRetRecepcao = interface(IDispatch)
    ['{65507007-2035-30A1-BFE8-F631A0E220F2}']
  end;

// *********************************************************************//
// DispIntf:  _CteRetRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {65507007-2035-30A1-BFE8-F631A0E220F2}
// *********************************************************************//
  _CteRetRecepcaoDisp = dispinterface
    ['{65507007-2035-30A1-BFE8-F631A0E220F2}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BAB213D3-5D20-3233-A7E8-C39F8180FED5}
// *********************************************************************//
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsg = interface(IDispatch)
    ['{BAB213D3-5D20-3233-A7E8-C39F8180FED5}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BAB213D3-5D20-3233-A7E8-C39F8180FED5}
// *********************************************************************//
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp = dispinterface
    ['{BAB213D3-5D20-3233-A7E8-C39F8180FED5}']
  end;

// *********************************************************************//
// Interface: _cteRetRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {901D1FF9-7D35-3B68-8966-CABEFBDADCA8}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}']
  end;

// *********************************************************************//
// DispIntf:  _cteRetRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {901D1FF9-7D35-3B68-8966-CABEFBDADCA8}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}']
  end;

// *********************************************************************//
// Interface: _cteRetRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {858F6CC8-BC36-356A-AF92-04A9F957D769}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{858F6CC8-BC36-356A-AF92-04A9F957D769}']
  end;

// *********************************************************************//
// DispIntf:  _cteRetRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {858F6CC8-BC36-356A-AF92-04A9F957D769}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventArgsDisp = dispinterface
    ['{858F6CC8-BC36-356A-AF92-04A9F957D769}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoSinc
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2E51C1A-034A-3847-8E28-8C8A20A16A95}
// *********************************************************************//
  _CteRecepcaoSinc = interface(IDispatch)
    ['{A2E51C1A-034A-3847-8E28-8C8A20A16A95}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoSincDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2E51C1A-034A-3847-8E28-8C8A20A16A95}
// *********************************************************************//
  _CteRecepcaoSincDisp = dispinterface
    ['{A2E51C1A-034A-3847-8E28-8C8A20A16A95}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoSincCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4CF0878D-C2C2-30BC-B82F-45684EA895C7}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventHandler = interface(IDispatch)
    ['{4CF0878D-C2C2-30BC-B82F-45684EA895C7}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoSincCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4CF0878D-C2C2-30BC-B82F-45684EA895C7}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventHandlerDisp = dispinterface
    ['{4CF0878D-C2C2-30BC-B82F-45684EA895C7}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoSincCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08AC3581-4CCD-3730-BA72-C61E1D7C8681}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventArgs = interface(IDispatch)
    ['{08AC3581-4CCD-3730-BA72-C61E1D7C8681}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoSincCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08AC3581-4CCD-3730-BA72-C61E1D7C8681}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventArgsDisp = dispinterface
    ['{08AC3581-4CCD-3730-BA72-C61E1D7C8681}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoOS
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F0A7796-6E0E-364B-B819-BCB868CD8269}
// *********************************************************************//
  _CteRecepcaoOS = interface(IDispatch)
    ['{2F0A7796-6E0E-364B-B819-BCB868CD8269}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoOSDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F0A7796-6E0E-364B-B819-BCB868CD8269}
// *********************************************************************//
  _CteRecepcaoOSDisp = dispinterface
    ['{2F0A7796-6E0E-364B-B819-BCB868CD8269}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoOS_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {63A1F467-E5AA-3EF5-B81B-47D93720AACF}
// *********************************************************************//
  _CTe_Util_cteRecepcaoOS_cteCabecMsg = interface(IDispatch)
    ['{63A1F467-E5AA-3EF5-B81B-47D93720AACF}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {63A1F467-E5AA-3EF5-B81B-47D93720AACF}
// *********************************************************************//
  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp = dispinterface
    ['{63A1F467-E5AA-3EF5-B81B-47D93720AACF}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoOSCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59EAF3B4-8EF2-3756-A22E-455047913FD6}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventHandler = interface(IDispatch)
    ['{59EAF3B4-8EF2-3756-A22E-455047913FD6}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoOSCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59EAF3B4-8EF2-3756-A22E-455047913FD6}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventHandlerDisp = dispinterface
    ['{59EAF3B4-8EF2-3756-A22E-455047913FD6}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoOSCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {11EADA4E-50B0-3414-8264-C36B94087502}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventArgs = interface(IDispatch)
    ['{11EADA4E-50B0-3414-8264-C36B94087502}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoOSCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {11EADA4E-50B0-3414-8264-C36B94087502}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventArgsDisp = dispinterface
    ['{11EADA4E-50B0-3414-8264-C36B94087502}']
  end;

// *********************************************************************//
// Interface: _CteRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}
// *********************************************************************//
  _CteRecepcao = interface(IDispatch)
    ['{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}
// *********************************************************************//
  _CteRecepcaoDisp = dispinterface
    ['{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoLote_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6DB8CE00-960E-334C-A60C-2E928442E3FD}
// *********************************************************************//
  _CTe_Util_cteRecepcaoLote_cteCabecMsg = interface(IDispatch)
    ['{6DB8CE00-960E-334C-A60C-2E928442E3FD}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6DB8CE00-960E-334C-A60C-2E928442E3FD}
// *********************************************************************//
  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp = dispinterface
    ['{6DB8CE00-960E-334C-A60C-2E928442E3FD}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventHandler = interface(IDispatch)
    ['{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventHandlerDisp = dispinterface
    ['{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventArgs = interface(IDispatch)
    ['{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventArgsDisp = dispinterface
    ['{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}']
  end;

// *********************************************************************//
// Interface: _CTeRecepcaoGTVe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}
// *********************************************************************//
  _CTeRecepcaoGTVe = interface(IDispatch)
    ['{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}']
  end;

// *********************************************************************//
// DispIntf:  _CTeRecepcaoGTVeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}
// *********************************************************************//
  _CTeRecepcaoGTVeDisp = dispinterface
    ['{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoGTVeCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventHandler = interface(IDispatch)
    ['{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoGTVeCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventHandlerDisp = dispinterface
    ['{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoGTVeCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventArgs = interface(IDispatch)
    ['{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoGTVeCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventArgsDisp = dispinterface
    ['{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A7D94986-710B-362A-9265-88D9EEF55BD3}
// *********************************************************************//
  _CteRecepcaoEvento = interface(IDispatch)
    ['{A7D94986-710B-362A-9265-88D9EEF55BD3}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A7D94986-710B-362A-9265-88D9EEF55BD3}
// *********************************************************************//
  _CteRecepcaoEventoDisp = dispinterface
    ['{A7D94986-710B-362A-9265-88D9EEF55BD3}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {38DFE93D-4280-3B6C-B097-9CA7E00C5257}
// *********************************************************************//
  _CTe_Util_cteRecepcaoEvento_cteCabecMsg = interface(IDispatch)
    ['{38DFE93D-4280-3B6C-B097-9CA7E00C5257}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {38DFE93D-4280-3B6C-B097-9CA7E00C5257}
// *********************************************************************//
  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface
    ['{38DFE93D-4280-3B6C-B097-9CA7E00C5257}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B5AD9F3A-9050-3852-9205-45CBDFFF25CD}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B5AD9F3A-9050-3852-9205-45CBDFFF25CD}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93575C24-56C5-38FD-B97C-4AB177BBA901}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{93575C24-56C5-38FD-B97C-4AB177BBA901}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93575C24-56C5-38FD-B97C-4AB177BBA901}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{93575C24-56C5-38FD-B97C-4AB177BBA901}']
  end;

// *********************************************************************//
// Interface: _CteInutilizacao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}
// *********************************************************************//
  _CteInutilizacao = interface(IDispatch)
    ['{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}']
  end;

// *********************************************************************//
// DispIntf:  _CteInutilizacaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}
// *********************************************************************//
  _CteInutilizacaoDisp = dispinterface
    ['{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E1F52E5-5867-3780-A112-9D571FC5DC93}
// *********************************************************************//
  _CTe_Util_cteInutilizacaoCT_cteCabecMsg = interface(IDispatch)
    ['{4E1F52E5-5867-3780-A112-9D571FC5DC93}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E1F52E5-5867-3780-A112-9D571FC5DC93}
// *********************************************************************//
  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp = dispinterface
    ['{4E1F52E5-5867-3780-A112-9D571FC5DC93}']
  end;

// *********************************************************************//
// Interface: _cteInutilizacaoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventHandler = interface(IDispatch)
    ['{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}']
  end;

// *********************************************************************//
// DispIntf:  _cteInutilizacaoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventHandlerDisp = dispinterface
    ['{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}']
  end;

// *********************************************************************//
// Interface: _cteInutilizacaoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3247FA06-2826-3461-A438-45216B23B312}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventArgs = interface(IDispatch)
    ['{3247FA06-2826-3461-A438-45216B23B312}']
  end;

// *********************************************************************//
// DispIntf:  _cteInutilizacaoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3247FA06-2826-3461-A438-45216B23B312}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventArgsDisp = dispinterface
    ['{3247FA06-2826-3461-A438-45216B23B312}']
  end;

// *********************************************************************//
// Interface: _CTeDistribuicaoDFe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7184C361-EC57-31B9-B82A-09F0FD03E017}
// *********************************************************************//
  _CTeDistribuicaoDFe = interface(IDispatch)
    ['{7184C361-EC57-31B9-B82A-09F0FD03E017}']
  end;

// *********************************************************************//
// DispIntf:  _CTeDistribuicaoDFeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7184C361-EC57-31B9-B82A-09F0FD03E017}
// *********************************************************************//
  _CTeDistribuicaoDFeDisp = dispinterface
    ['{7184C361-EC57-31B9-B82A-09F0FD03E017}']
  end;

// *********************************************************************//
// Interface: _cteDistDFeInteresseCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {57C9BADF-EBD8-36CD-BC72-067086BACB78}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventHandler = interface(IDispatch)
    ['{57C9BADF-EBD8-36CD-BC72-067086BACB78}']
  end;

// *********************************************************************//
// DispIntf:  _cteDistDFeInteresseCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {57C9BADF-EBD8-36CD-BC72-067086BACB78}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventHandlerDisp = dispinterface
    ['{57C9BADF-EBD8-36CD-BC72-067086BACB78}']
  end;

// *********************************************************************//
// Interface: _cteDistDFeInteresseCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76DB3240-4D3D-3AC7-B1AD-997200D83830}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventArgs = interface(IDispatch)
    ['{76DB3240-4D3D-3AC7-B1AD-997200D83830}']
  end;

// *********************************************************************//
// DispIntf:  _cteDistDFeInteresseCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76DB3240-4D3D-3AC7-B1AD-997200D83830}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventArgsDisp = dispinterface
    ['{76DB3240-4D3D-3AC7-B1AD-997200D83830}']
  end;

// *********************************************************************//
// Interface: _CteConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {44357119-80F8-349D-8DF6-8C1F53DA92D2}
// *********************************************************************//
  _CteConsulta = interface(IDispatch)
    ['{44357119-80F8-349D-8DF6-8C1F53DA92D2}']
  end;

// *********************************************************************//
// DispIntf:  _CteConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {44357119-80F8-349D-8DF6-8C1F53DA92D2}
// *********************************************************************//
  _CteConsultaDisp = dispinterface
    ['{44357119-80F8-349D-8DF6-8C1F53DA92D2}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteConsultaCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}
// *********************************************************************//
  _CTe_Util_cteConsultaCT_cteCabecMsg = interface(IDispatch)
    ['{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteConsultaCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}
// *********************************************************************//
  _CTe_Util_cteConsultaCT_cteCabecMsgDisp = dispinterface
    ['{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5F0BB47-7B02-39EC-A9BD-E5486D594103}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandler = interface(IDispatch)
    ['{F5F0BB47-7B02-39EC-A9BD-E5486D594103}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5F0BB47-7B02-39EC-A9BD-E5486D594103}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface
    ['{F5F0BB47-7B02-39EC-A9BD-E5486D594103}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {632B4661-5E5D-3322-967D-508DC95484E1}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgs = interface(IDispatch)
    ['{632B4661-5E5D-3322-967D-508DC95484E1}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {632B4661-5E5D-3322-967D-508DC95484E1}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgsDisp = dispinterface
    ['{632B4661-5E5D-3322-967D-508DC95484E1}']
  end;

// *********************************************************************//
// Interface: _CteCancelamento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}
// *********************************************************************//
  _CteCancelamento = interface(IDispatch)
    ['{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}']
  end;

// *********************************************************************//
// DispIntf:  _CteCancelamentoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}
// *********************************************************************//
  _CteCancelamentoDisp = dispinterface
    ['{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteCancelamentoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0B27A478-3330-33B1-B3B9-796BEBDEB03E}
// *********************************************************************//
  _CTe_Util_cteCancelamentoCT_cteCabecMsg = interface(IDispatch)
    ['{0B27A478-3330-33B1-B3B9-796BEBDEB03E}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0B27A478-3330-33B1-B3B9-796BEBDEB03E}
// *********************************************************************//
  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp = dispinterface
    ['{0B27A478-3330-33B1-B3B9-796BEBDEB03E}']
  end;

// *********************************************************************//
// Interface: _cteCancelamentoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventHandler = interface(IDispatch)
    ['{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}']
  end;

// *********************************************************************//
// DispIntf:  _cteCancelamentoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventHandlerDisp = dispinterface
    ['{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}']
  end;

// *********************************************************************//
// Interface: _cteCancelamentoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventArgs = interface(IDispatch)
    ['{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}']
  end;

// *********************************************************************//
// DispIntf:  _cteCancelamentoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventArgsDisp = dispinterface
    ['{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}']
  end;

// *********************************************************************//
// Interface: _CleCadastro
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DC271E4C-CD2B-34F4-97D4-35B28D211156}
// *********************************************************************//
  _CleCadastro = interface(IDispatch)
    ['{DC271E4C-CD2B-34F4-97D4-35B28D211156}']
  end;

// *********************************************************************//
// DispIntf:  _CleCadastroDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DC271E4C-CD2B-34F4-97D4-35B28D211156}
// *********************************************************************//
  _CleCadastroDisp = dispinterface
    ['{DC271E4C-CD2B-34F4-97D4-35B28D211156}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLote
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {597DCBFC-3975-3E79-8EF2-8D2D397DD491}
// *********************************************************************//
  _cleCadastroLote = interface(IDispatch)
    ['{597DCBFC-3975-3E79-8EF2-8D2D397DD491}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {597DCBFC-3975-3E79-8EF2-8D2D397DD491}
// *********************************************************************//
  _cleCadastroLoteDisp = dispinterface
    ['{597DCBFC-3975-3E79-8EF2-8D2D397DD491}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteResponse
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EDD54AD-6D4A-33FE-84DF-808131515507}
// *********************************************************************//
  _cleCadastroLoteResponse = interface(IDispatch)
    ['{5EDD54AD-6D4A-33FE-84DF-808131515507}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteResponseDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EDD54AD-6D4A-33FE-84DF-808131515507}
// *********************************************************************//
  _cleCadastroLoteResponseDisp = dispinterface
    ['{5EDD54AD-6D4A-33FE-84DF-808131515507}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandler = interface(IDispatch)
    ['{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandlerDisp = dispinterface
    ['{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E8011FA-2284-3F29-97B8-0C439807FCDD}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgs = interface(IDispatch)
    ['{4E8011FA-2284-3F29-97B8-0C439807FCDD}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E8011FA-2284-3F29-97B8-0C439807FCDD}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgsDisp = dispinterface
    ['{4E8011FA-2284-3F29-97B8-0C439807FCDD}']
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to          
// create instances of the default interface CTe_Util_Interface exposed by              
// the CoClass Util. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUtil = class
    class function Create: CTe_Util_Interface;
    class function CreateRemote(const MachineName: string): CTe_Util_Interface;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUtil
// Help String      : 
// Default Interface: CTe_Util_Interface
// Def. Intf. DISP? : No
// Event   Interface: CTe_Util_Events
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUtil = class(TOleServer)
  private
    FIntf: CTe_Util_Interface;
    function GetDefaultInterface: CTe_Util_Interface;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CTe_Util_Interface);
    procedure Disconnect; override;
    function Versao: WideString;
    function Assinar(const XMLString: WideString; const RefUri: WideString; const Nome: WideString; 
                     out XMLAssinado: WideString; out msgResultado: WideString): Integer;
    function PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer;
    function CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const codigoSeguranca: WideString; out msgResultado: WideString; 
                          out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer;
    function ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString): Integer;
    function EnviaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       var msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer;
    function BuscaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; const nroRecibo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        const chaveCTe: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString): Integer;
    function CancelaCT(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out procCanc: WideString; 
                       const chaveCTe: WideString; const nProtocolo: WideString; 
                       const justificativa: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer;
    function InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out msgResultado: WideString; 
                            out procInut: WideString; const cUF: WideString; const Ano: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const nroCTeInicial: WideString; 
                            const nroCTeFinal: WideString; const justificativa: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): Integer;
    function EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out CTeAssinado: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString; 
                      const licenca: WideString): Integer;
    function BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; const siglaUF: WideString; 
                      var CTeAssinado: WideString; var nroRecibo: WideString; 
                      out procCTe: WideString; out nroProtocolo: WideString; 
                      out dAutorizacao: WideString; const nomeCertificado: WideString; 
                      const Versao: WideString; out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): Integer;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; 
                           out msgResultado: WideString; const tpArgumento: WideString; 
                           const argumento: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): Integer;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out chvCLe: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer;
    function CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                              const CNPJ: WideString; const modelo: WideString; 
                              const serie: WideString; const numero: WideString; 
                              const tpEmis: WideString; const codigoSeguranca: WideString; 
                              out msgResultado: WideString; out cCT: WideString; 
                              out cDV: WideString; out chaveCTe: WideString): Integer;
    function CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString; 
                         out protocolo: WideString; out retCancCTe: WideString; 
                         out resultado: Integer; const nomeCertificado: WideString; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString;
    function CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString; 
                             out protocolo: WideString; out retCancCTe: WideString; 
                             out resultado: Integer; const nomeCertificado: WideString; 
                             out msgResultado: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString): WideString;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString; 
                      const emailDestinatario: WideString; const emailBcc: WideString; 
                      const assunto: WideString; const mensagem: WideString; 
                      const arquivos: WideString; const smtpCliente: WideString; 
                      const smtpPorta: WideString; const smtpSSL: WideString; 
                      const smtpUsuario: WideString; const smtpSenha: WideString; 
                      const HTML: WideString; const confirmacao: WideString; 
                      out msgResultado: WideString): Integer;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString;
    function MontaLoteCTe(const Versao: WideString; const idLote: WideString; 
                          const CTe: WideString; out quantidadeCTe: Integer; 
                          out cResultado: Integer; out msgResultado: WideString): WideString;
    function PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString; 
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer; 
                         out cResultado: Integer; out msgResultado: WideString): WideString;
    function MontaProcCTe(const Versao: WideString; const enviCTe: WideString; 
                          const retConsReciCTe: WideString; out qtdeCTe: Integer; 
                          out qtdeProcCTe: Integer; out cResultado: Integer; 
                          out msgResultado: WideString): WideString;
    function emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                      const _xFant_Opc: WideString; const _xLgr: WideString; 
                      const _nro: WideString; const _xCpl_Opc: WideString; 
                      const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                      const _CEP_Opc: WideString; const _UF: WideString; const _fone_Opc: WideString): WideString;
    function remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _xFant_Opc: WideString; 
                       const _fone_Opc: WideString; const _xLgr: WideString; 
                       const _nro: WideString; const _xCpl_Opc: WideString; 
                       const _xBairro: WideString; const _cMun: WideString; 
                       const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString; const _infnotas: WideString): WideString;
    function expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString;
    function recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                       const _xNome: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                          const _xNome: WideString; const _fone_Opc: WideString; 
                          const _ISUF_Opc: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _CEP_Opc: WideString; 
                          const _UF: WideString; const _cPais_Opc: WideString; 
                          const _xPais_Opc: WideString; const _email_Opc: WideString; 
                          const _locEnt_Opc: WideString): WideString;
    function localEntrega(const _CNPJ: WideString; const _CPF: WideString; 
                          const _xNome: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl_Opc: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _UF: WideString): WideString;
    function compVPrest(const _xNome: WideString; _vComp: Double): WideString;
    function vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString;
    function ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                       const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString;
    function ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                       _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                       _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                            _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                            const _infAdFisco_Opc: WideString): WideString;
    function ImpICMSSN(const _infAdFisco_Opc: WideString): WideString;
    function identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                           const _natOp: WideString; _forPag: Integer; _mod: Integer; 
                           _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; 
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; 
                           _procEmi: Integer; const _verProc: WideString; 
                           const _refCTe_Opc: WideString; const _cMunEnv: WideString; 
                           const _xMunEnv: WideString; const _UFEnv: WideString; 
                           const _modal: WideString; _tpServ: Integer; const _cMunIni: WideString; 
                           const _xMunIni: WideString; const _UFIni: WideString; 
                           const _cMunFim: WideString; const _xMunFim: WideString; 
                           const _UFFim: WideString; _retira: Integer; 
                           const _xDetRetira: WideString; const _tomador: WideString; 
                           _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString;
    function tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString; 
                     const _IE_Opc: WideString; const _xNome: WideString; 
                     const _xFant_Opc: WideString; const _fone_Opc: WideString; 
                     const _xLgr: WideString; const _nro: WideString; const _xCpl_Opc: WideString; 
                     const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString; 
                     const _CEP_Opc: WideString; const _UF: WideString; 
                     const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                     const _email_Opc: WideString): WideString;
    function compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString; 
                   const _xEmi_Opc: WideString; const _fluxo_Opc: WideString; 
                   const _entrega_Opc: WideString; const _origCalc_Opc: WideString; 
                   const _destCalc_Opc: WideString; const xObs_Opc: WideString; 
                   const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString;
    function fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString; 
                   const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString;
    function pass(const _xPass_Opc: WideString): WideString;
    function Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer; 
                     _hIni: TDateTime; _hFim: TDateTime): WideString;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString;
    function infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString; 
                        const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                        const _infModal: WideString; const _peri_Opc: WideString; 
                        const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                        const _infCteSub_Opc: WideString): WideString;
    function infCarga(_vCarga_Opc: Double; const _prodPred: WideString; 
                      const _xOutCat_Opc: WideString; const _infQ: WideString): WideString;
    function infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString;
    function contQt(const _nCont: WideString; const _lacContQt_Opc: WideString; 
                    _dPrev_Opc: TDateTime): WideString;
    function lacContQt(const _nLacre: WideString): WideString;
    function EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; const _IE_Opc: WideString; 
                       const _UF_Opc: WideString; const _xNome: WideString; 
                       const _idDocAnt1: WideString; const _idDocAnt2: WideString): WideString;
    function idDocAntPap(_tpDoc: Integer; const _serie: WideString; 
                         const _subSerie_Opc: WideString; const _nDoc: WideString; _dEmi: TDateTime): WideString;
    function idDocAntEle(const _chave: WideString): WideString;
    function seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString; 
                 const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString;
    function peri(const _nOnu: WideString; const _xNomeAE: WideString; 
                  const _xClaRisco: WideString; const _grEmb_Opc: WideString; 
                  const _qTotProd: WideString; const _qVolTipo_Opc: WideString; 
                  const _pontoFulgor_Opc: WideString): WideString;
    function veicNovos(const _chassi: WideString; const _cCor: WideString; const _xCor: WideString; 
                       const _cMod: WideString; _vUnit: Double; _vFrete: Double): WideString;
    function cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double; 
                  _vLiq_Opc: Double; const _dup_Opc: WideString): WideString;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString;
    function infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString;
    function infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString; 
                             const _mod: WideString; const _serie: WideString; 
                             const _subSerie_Opc: WideString; const _nro: WideString; 
                             _valor: Double; _dEmi: TDateTime): WideString;
    function infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString;
    function infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString;
    function infCteComp(const _chave: WideString; const _vPresComp: WideString; 
                        const _impComp: WideString): WideString;
    function vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString;
    function compComp(const _xNome: WideString; _vComp: Double): WideString;
    function ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                           const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString;
    function ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                           _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                           _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; 
                                _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                                const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString;
    function infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString;
    function rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime; 
                 _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString; 
                 const _valePed_Opc: WideString; const _veic_Opc: WideString; 
                 const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString;
    function occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime; 
                 const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString; 
                 const _UF: WideString; const _fone_Opc: WideString): WideString;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                     const _CNPJPg_Opc: WideString): WideString;
    function veic(const _cInt_Opc: WideString; const _RENAVAM: WideString; 
                  const _placa: WideString; const _tara: WideString; const _capKG: WideString; 
                  const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer; 
                  const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString; 
                  const _prop_Opc: WideString): WideString;
    function prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                  const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString; 
                  _tpProp: Integer): WideString;
    function lacRodo(const _nLacre: WideString): WideString;
    function moto(const _xNome: WideString; const _CPF: WideString): WideString;
    function CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                 const _compl_Opc: WideString; const _emit: WideString; const _rem_Opc: WideString; 
                 const _exped_Opc: WideString; const _receb_Opc: WideString; 
                 const _dest_Opc: WideString; const _vPrest: WideString; const _imp: WideString; 
                 const _infCTe: WideString): WideString;
    function infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString; 
                   const _mod: WideString; const _serie: WideString; const _nDoc: WideString; 
                   _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; 
                   _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double; 
                   const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString;
    function infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString;
    function infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString; 
                       const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString;
    function localRetirada(const _CNPJ: WideString; const _CPF: WideString; 
                           const _xNome: WideString; const _xLgr: WideString; 
                           const _nro: WideString; const _xCpl_Opc: WideString; 
                           const _xBairro: WideString; const _cMun: WideString; 
                           const _xMun: WideString; const _UF: WideString): WideString;
    function aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double; 
                   const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString; 
                   const _xNavio: WideString; const _balsa_Opc: WideString; 
                   const _nViag_Opc: WideString; const _direc: WideString; 
                   const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString; 
                   const _prtDest_Opc: WideString; const _tpNav_Opc: WideString; 
                   const _irin: WideString; const _detCont_Opc: WideString): WideString;
    function balsa(const _xBalsa: WideString): WideString;
    function detCont(const _nCont: WideString; const _lacres_Opc: WideString; 
                     const _infDoc_Opc: WideString): WideString;
    function lacre(const _nLacre: WideString): WideString;
    function infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString;
    function infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString;
    function geraPdfDACTE(const XML: WideString; const logo: WideString; 
                          const quadroRecibo: WideString; const visualizar: WideString; 
                          const parametros: WideString; out msgResultado: WideString): Integer;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                      out DLL_data: WideString; out DLL_dataValidade: WideString; 
                      out URL_versao: WideString; out URL_data: WideString): WideString;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                out msgErro: WideString): Integer;
    function WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString; 
                         const mensagemXML: WideString; out resultado: Integer; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString;
    function ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                    const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer; 
                    _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer; 
                    _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer; 
                    const _verProc: WideString; const _refCTe_Opc: WideString; 
                    const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer; 
                    const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer; 
                    const _xDetRetira: WideString; const _tomador: WideString; 
                    _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString;
    function aereo(const versaoModal: WideString; const nMinu_Opc: WideString; 
                   const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString; 
                   const IdT_Opc: WideString; const CL_tarifa: WideString; 
                   const cTar_tarifa_Opc: WideString; vTar_tarifa: Double; 
                   const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                   const cIMP_Opc: WideString): WideString;
    function cInfManu(const cInfManu: WideString): WideString;
    function cIMP(const cIMP: WideString): WideString;
    function AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString; 
                         const Atributo: WideString; const nomeCertificado: WideString; 
                         out cResultado: Integer; out msgResultado: WideString): WideString;
    function ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                          _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                          const _infAdFisco: WideString): WideString;
    function ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                          _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString;
    function ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                          _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                          const _infAdFisco_Opc: WideString): WideString;
    function ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                               _pICMSOutraUF: Double; _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                               const _infAdFisco_Opc: WideString): WideString;
    function ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                              const _infAdFisco: WideString): WideString;
    function ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                              _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                              const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                              _pICMS: Double; _vICMS: Double; _vCred: Double; 
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; 
                                   _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                   _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString): WideString;
    function ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer; 
                       out msgResultado: WideString; const XMLCTe: WideString; 
                       const xJust: WideString; const dhEvento: WideString; 
                       out nProtocoloEPEC: WideString; out dProtocoloEPEC: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                          const CNPJ: WideString; valorTotalCTe: Double; 
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                          dataEmissaoCTe: TDateTime; out codigoBarras: WideString; 
                                          out msgResultado: WideString): Integer;
    function CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveCTe: WideString; const nProtocolo: WideString; 
                             const justificativa: WideString; const dhEvento: WideString; 
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString;
    function RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer; 
                                const nomeCertificado: WideString; const Versao: WideString; 
                                out msgDados: WideString; out msgRetWS: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const chaveCTe: WideString; const nDoc_Opc: WideString; 
                                const xRegistro: WideString; nroRegistro: Integer; 
                                const dhEvento: WideString; out nProtocolo: WideString; 
                                out dProtocolo: WideString; const proxy: WideString; 
                                const usuario: WideString; const senha: WideString; 
                                const licenca: WideString): WideString;
    function EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer; 
                      const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                      out msgResultado: WideString; const chaveCTe: WideString; 
                      const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                      const dataCorrecao: WideString; out nroProtocolo: WideString; 
                      out dhProtocolo: WideString; const proxy: WideString; 
                      const usuario: WideString; const senha: WideString; const licenca: WideString): WideString;
    function geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString; 
                             const valorAlterado: WideString; const nroItemAlterado_Opc: WideString): WideString;
    function remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const fone_Opc: WideString; const xLgr: WideString; const nro: WideString; 
                         const xCpl_Opc: WideString; const xBairro: WideString; 
                         const cMun: WideString; const xMun: WideString; const CEP_Opc: WideString; 
                         const UF: WideString; const cPais_Opc: WideString; 
                         const xPais_Opc: WideString; const email_Opc: WideString; 
                         const locColeta_Opc: WideString): WideString;
    function locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                       const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                       const UF: WideString): WideString;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString;
    function CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const remOpc: WideString; 
                   const expedOpc: WideString; const recebOpc: WideString; 
                   const destOpc: WideString; const vPrest: WideString; const imp: WideString; 
                   const infCTe: WideString; const autXMLOpc: WideString): WideString;
    function infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString; 
                      const mod_: WideString; const serie: WideString; const nDoc: WideString; 
                      dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                      vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double; 
                      const PINOpc: WideString; dPrevOpc: TDateTime; 
                      const unidCargaTranspOpc: WideString): WideString;
    function infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime; 
                       const unidCargaTranspOpc: WideString): WideString;
    function infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString; 
                          const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double; 
                          dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString;
    function lacreUnidCarga(const nLacre: WideString): WideString;
    function lacreUnidTransp(const nLacre: WideString): WideString;
    function infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString; 
                          const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString;
    function infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString; 
                           const lacUnidTransp_Opc: WideString; const infUnidCarga_Opc: WideString; 
                           const qtdRat_Opc: WideString): WideString;
    function infCteComp_2G(const _chave: WideString): WideString;
    function infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString; 
                           const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                           const _infModal: WideString; const _peri_Opc: WideString; 
                           const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                           const _infCteSub_Opc: WideString): WideString;
    function aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xLAgEmi_Opc: WideString; const IdT_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const xDime_natCarga_Opc: WideString; 
                      const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString;
    function valePed_2G(const CNPJForn: WideString; const nCompra: WideString; 
                        const CNPJPg_Opc: WideString; vValePed: Double): WideString;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                       const emailDestinatario: WideString; const emailBcc: WideString; 
                       const assunto: WideString; const mensagem: WideString; 
                       const arquivos: WideString; const smtpCliente: WideString; 
                       const smtpPorta: WideString; const smtpSSL: WideString; 
                       const smtpUsuario: WideString; const smtpSenha: WideString; 
                       const HTML: WideString; const confirmacao: WideString; 
                       out msgResultado: WideString; const timeout: WideString): Integer;
    function ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; pICMSInter: Double; 
                       pICMSInterPart: Double; vFCPUFFim: Double; vICMSUFFim: Double; 
                       vICMSUFIni: Double): WideString;
    function ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double; 
                                 _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double; 
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                 _pICMS: Double; _vICMS: Double; _vCred: Double; 
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double; 
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                      const _infAdFisco_Opc: WideString; 
                                      const ICMSUFFim_Opc: WideString): WideString;
    function ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                 const ICMSUFFim_Opc: WideString): WideString;
    function identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; 
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                              const verProc: WideString; const indGlobalizado: WideString; 
                              const cMunEnv: WideString; const xMunEnv: WideString; 
                              const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                              const cMunIni: WideString; const xMunIni: WideString; 
                              const UFIni: WideString; const cMunFim: WideString; 
                              const xMunFim: WideString; const UFFim: WideString; retira: Integer; 
                              const xDetRetira: WideString; indIEToma: Integer; 
                              const tomador: WideString; const dhCont_Opc: WideString; 
                              const xJust_Opc: WideString): WideString;
    function ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                       tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                       const indGlobalizado: WideString; const xMunEnv: WideString; 
                       const modal: WideString; tpServ: Integer; const xMunIni: WideString; 
                       const xMunFim: WideString; retira: Integer; const xDetRetira: WideString; 
                       indIEToma: Integer; const tomador: WideString; const dhCont_Opc: WideString; 
                       const xJust_Opc: WideString): WideString;
    function emitente300(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString;
    function tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                        const IE_Opc: WideString; const xNome: WideString; 
                        const xFant_Opc: WideString; const fone_Opc: WideString; 
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                        const CEP_Opc: WideString; const UF: WideString; 
                        const cPais_Opc: WideString; const xPais_Opc: WideString; 
                        const email_Opc: WideString): WideString;
    function remetente300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString;
    function expedidor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString;
    function recebedor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString;
    function destinatario300(const CNPJ: WideString; const CPF: WideString; 
                             const IE_Opc: WideString; const xNome: WideString; 
                             const fone_Opc: WideString; const ISUF_Opc: WideString; 
                             const xLgr: WideString; const nro: WideString; 
                             const xCpl_Opc: WideString; const xBairro: WideString; 
                             const cMun: WideString; const xMun: WideString; 
                             const CEP_Opc: WideString; const UF: WideString; 
                             const cPais_Opc: WideString; const xPais_Opc: WideString; 
                             const email_Opc: WideString): WideString;
    function infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString; 
                           const emiDocAnt_Opc: WideString; const infModal: WideString; 
                           const veicNovos_Opc: WideString; const cobr_Opc: WideString; 
                           const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString; 
                           const infCTeMultimodal_Opc: WideString): WideString;
    function infCarga300(vCarga_Opc: Double; const prodPred: WideString; 
                         const xOutCat_Opc: WideString; const infQ: WideString; 
                         vCargaAverb_Opc: Double): WideString;
    function rod300(const versaoModal: WideString; const RNTRC: WideString; 
                    const occ_Opc: WideString): WideString;
    function aereo300(const versaoModal: WideString; const nMinu_Opc: WideString; 
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                      const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                      vTar_tarifa: Double; const peri_Opc: WideString): WideString;
    function peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double; 
                     const uniAP: WideString): WideString;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveCTe: WideString; const CNPJTomador: WideString; 
                                 const xObs: WideString; const dhEvento: WideString; 
                                 out nProtocolo: WideString; out dProtocolo: WideString; 
                                 const proxy: WideString; const usuario: WideString; 
                                 const senha: WideString; const licenca: WideString): WideString;
    function EnviaCTeOS(const siglaWS: WideString; const Versao: WideString; 
                        const nomeCertificado: WideString; const CTeOS: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out CTeOSAssinado: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString;
    function EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const chaveCTe: WideString; 
                         nroInfGTV: Integer; const XMLInfGTV: WideString; 
                         const dhEvento: WideString; out nProtocolo: WideString; 
                         out dProtocolo: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString;
    function infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString; 
                    const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString; 
                    const qCarga: WideString; const infEspecie: WideString; 
                    const CNPJRem: WideString; const CPFRem: WideString; 
                    const IERemOpc: WideString; const UFRem: WideString; 
                    const xNomeRem: WideString; const CNPJDest: WideString; 
                    const CPFDest: WideString; const IEDestOpc: WideString; 
                    const UFDest: WideString; const xNomeDest: WideString; 
                    const placaOpc: WideString; const UFOpc: WideString; const RNTRCOpc: WideString): WideString;
    function infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString; 
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString; 
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const ultNSURecebido: WideString; out verAplic: WideString; 
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString; 
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString;
    function ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString; 
                      const cMunEnv: WideString; const xMunEnv: WideString; 
                      const UFEnv: WideString; const modal: WideString; tpServ: Integer; 
                      indIEToma: Integer; const cMunIni_Opc: WideString; 
                      const xMunIni_Opc: WideString; const UFIni_Opc: WideString; 
                      const cMunFim_Opc: WideString; const xMunFim_Opc: WideString; 
                      const UFFim_Opc: WideString; const infPercurso_Opc: WideString; 
                      const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString;
    function ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                         const verProc: WideString; const xMunEnv: WideString; 
                         const modal: WideString; tpServ: Integer; indIEToma: Integer; 
                         const xMunIni: WideString; const xMunFim: WideString; 
                         const infPercurso_Opc: WideString; const dhCont_Opc: WideString; 
                         const xJust_Opc: WideString): WideString;
    function complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString; 
                        const xEmi_Opc: WideString; const xObs_Opc: WideString; 
                        const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString;
    function tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString; 
                          const xNome: WideString; const xFant_Opc: WideString; 
                          const fone_Opc: WideString; const xLgr: WideString; 
                          const nro: WideString; const xCpl_Opc: WideString; 
                          const xBairro: WideString; const cMun: WideString; 
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString;
    function ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double; 
                            vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString;
    function ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double; 
                            const infAdFisco: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString;
    function ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double; 
                            vICMS: Double; vCred: Double; vTotTrib_Opc: Double; 
                            const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                            const infTribFed_Opc: WideString): WideString;
    function ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double; 
                                 pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double; 
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                                 const infTribFed_Opc: WideString): WideString;
    function ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString;
    function InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; vINSS_Opc: Double; 
                        vCSLL_Opc: Double): WideString;
    function infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString;
    function infQCteOS(const qCarga: WideString): WideString;
    function infDocRef(const nDoc: WideString; const serie_Opc: WideString; 
                       const subSerie_Opc: WideString; const dEmi: WideString; 
                       const vDoc_Opc: WideString): WideString;
    function segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString; 
                      const nApol_Opc: WideString): WideString;
    function infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString;
    function infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString; 
                               const CPF: WideString; const mod_: WideString; 
                               const serie: WideString; const subSerie_Opc: WideString; 
                               const nro: WideString; valor: Double; const dEmi: WideString): WideString;
    function infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString;
    function infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString;
    function infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString; 
                          const seg_Opc: WideString; const infModal_Opc: WideString; 
                          const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString;
    function rodOS(const _versaoModal: WideString; const TAF: WideString; 
                   const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString;
    function veicOS(const placa: WideString; const RENAVAM_Opc: WideString; 
                    const propOS_Opc: WideString; const UF_Opc: WideString): WideString;
    function propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString; 
                    const NroRegEstadual: WideString; const xNome: WideString; 
                    const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString;
    function CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString; 
                   const complOpc: WideString; const emit: WideString; const tomaOpc: WideString; 
                   const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                   const autXMLOpc: WideString): WideString;
    function infPercurso(const UFPer: WideString): WideString;
    function ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                          const ICMSUFFim_Opc: WideString): WideString;
    function infCteComp300(const chCte: WideString): WideString;
    function idDocAntEle300(const chCte: WideString): WideString;
    function fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString; 
                      const xDest_Opc: WideString; const xRota_Opc: WideString): WideString;
    function infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString;
    function infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString; 
                                const mod_: WideString; const serie: WideString; 
                                const subSerie_Opc: WideString; const nro: WideString; 
                                valor: Double; dEmi: TDateTime; const indAlteraToma_Opc: WideString): WideString;
    function infCteSub_refCTe300(const chCte: WideString; const refCte: WideString; 
                                 const indAlteraToma_Opc: WideString): WideString;
    function infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString; 
                                    const indAlteraToma_Opc: WideString): WideString;
    function infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString;
    function aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double; 
                           const xNavio: WideString; const balsa_Opc: WideString; 
                           const nViag_Opc: WideString; const direc: WideString; 
                           const irin: WideString; const detCont_Opc: WideString; 
                           const _tpNav_Opc: WideString): WideString;
    function infCTeMultimodal(const chCte: WideString): WideString;
    function infRespTec(const CNPJ: WideString; const xContato: WideString; 
                        const email: WideString; const fone: WideString; 
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString;
    function CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                         const complOpc: WideString; const emit: WideString; 
                         const remOpc: WideString; const expedOpc: WideString; 
                         const recebOpc: WideString; const destOpc: WideString; 
                         const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                         const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString;
    function CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                           const complOpc: WideString; const emit: WideString; 
                           const tomaOpc: WideString; const vPrest: WideString; 
                           const imp: WideString; const infCTe: WideString; 
                           const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString;
    function infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString;
    function rodOS_2018002(const versaoModal: WideString; const TAF: WideString; 
                           const NroRegEstadual: WideString; const veicOS_Opc: WideString; 
                           const infFretamento_Opc: WideString): WideString;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString; 
                         const email: WideString; const fone: WideString; 
                         const idCSRT_Opc: WideString; const CSRT_Opc: WideString; 
                         const chaveCTe_Opc: WideString): WideString;
    function CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                     const compl_Opc: WideString; const emit: WideString; 
                     const rem_Opc: WideString; const exped_Opc: WideString; 
                     const receb_Opc: WideString; const dest_Opc: WideString; 
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                     const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                     const infSuplCTe_Opc: WideString): WideString;
    function CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const complOpc: WideString; const emit: WideString; 
                       const tomaOpc: WideString; const vPrest: WideString; const imp: WideString; 
                       const infCTe: WideString; const autXMLOpc: WideString; 
                       const infRespTecOpc: WideString; const infSuplCTeOpc: WideString): WideString;
    function infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; out qrCode: WideString; 
                        out resultado: Integer; out msgResultado: WideString): WideString;
    function EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroCECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhEntrega: WideString; const nDoc: WideString; 
                        const xNome: WideString; latitude: Double; longitude: Double; 
                        const hashEntrega: WideString; const dhHashEntrega: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString;
    function infEntrega(const chNFe: WideString): WideString;
    function calcSha1(const texto: WideString): WideString;
    function EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; nroCancCE: Integer; 
                         const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                         const nProtocoloCE: WideString; const dhEvento: WideString; 
                         out nProtocolo: WideString; out dProtocolo: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString;
    function EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString; 
                          const nomeCertificado: WideString; const CTe: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; out CTeAssinado: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString;
    function EnviaGTVe(const siglaWS: WideString; const Versao: WideString; 
                       const nomeCertificado: WideString; const GTVe: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; out GTVeAssinado: WideString; 
                       out nProtocolo: WideString; out dProtocolo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString;
    function GTVe(const Versao: WideString; const Id: WideString; const ide: WideString; 
                  const compl_Opc: WideString; const emit: WideString; const rem: WideString; 
                  const dest: WideString; const origem_Opc: WideString; 
                  const destino_Opc: WideString; const detGTV: WideString; 
                  const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                  const infSuplCTe_Opc: WideString): WideString;
    function ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                     mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                     tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer; 
                     const verProc: WideString; const cMunEnv: WideString; 
                     const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString; 
                     tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString; 
                     const dhChegadaDest: WideString; const tomador: WideString; 
                     const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString;
    function tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                         const IE_Opc: WideString; const xNome: WideString; 
                         const xFant_Opc: WideString; const fone_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const cPais_Opc: WideString; const xPais_Opc: WideString; 
                         const email_Opc: WideString): WideString;
    function origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                    const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                    const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString;
    function destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                     const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                     const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString;
    function detGTV(const infEspecie: WideString; const qCarga: WideString; 
                    const infVeiculo: WideString): WideString;
    function infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString; 
                          const tpNumerario: WideString; const xMoedaEstr: WideString): WideString;
    function infVeiculo(const placa: WideString; const UF_Opc: WideString; 
                        const RNTRC_Opc: WideString): WideString;
    function infDocRefChBPe(const chBPe: WideString): WideString;
    function comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString;
    function infGTVe(const chCte: WideString; const comp: WideString): WideString;
    function infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString; 
                                  const seg_Opc: WideString; const infModal_Opc: WideString; 
                                  const infCteSub_Opc: WideString; 
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString; 
                                  const infGTVe_Opc: WideString): WideString;
    function emitenteCRT(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString; 
                         const xNome: WideString; const xFant_Opc: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const CEP_Opc: WideString; const UF: WideString; 
                         const fone_Opc: WideString; const CRT_Opc: WideString): WideString;
    function EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                     const nomeCertificado: WideString; const Versao: WideString; 
                                     out msgDados: WideString; out msgRetWS: WideString; 
                                     out cStat: Integer; out msgResultado: WideString; 
                                     const chaveCTe: WideString; const CNPJTomador: WideString; 
                                     const nProtEvPrestDes: WideString; const dhEvento: WideString; 
                                     out nProtocolo: WideString; out dProtocolo: WideString; 
                                     const proxy: WideString; const usuario: WideString; 
                                     const senha: WideString; const licenca: WideString): WideString;
    function infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString;
    function EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; nroIECTe: Integer; 
                        const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                        const dhTentativaEntrega: WideString; nroTentativa: Integer; 
                        tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double; 
                        longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString; 
                        const dhHashTentativaEntrega_Opc: WideString; 
                        const XMLInfEntrega: WideString; const dhEvento: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString;
    function EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; nroCancIECTe: Integer; 
                            const chaveCTe: WideString; const nProt: WideString; 
                            const nProtIE: WideString; const dhEvento: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString;
    property DefaultInterface: CTe_Util_Interface read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoQREncoderTables provides a Create and CreateRemote method to          
// create instances of the default interface _QREncoderTables exposed by              
// the CoClass QREncoderTables. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQREncoderTables = class
    class function Create: _QREncoderTables;
    class function CreateRemote(const MachineName: string): _QREncoderTables;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TQREncoderTables
// Help String      : 
// Default Interface: _QREncoderTables
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TQREncoderTables = class(TOleServer)
  private
    FIntf: _QREncoderTables;
    function GetDefaultInterface: _QREncoderTables;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _QREncoderTables);
    procedure Disconnect; override;
    property DefaultInterface: _QREncoderTables read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoQREncoder provides a Create and CreateRemote method to          
// create instances of the default interface _QREncoder exposed by              
// the CoClass QREncoder. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQREncoder = class
    class function Create: _QREncoder;
    class function CreateRemote(const MachineName: string): _QREncoder;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TQREncoder
// Help String      : 
// Default Interface: _QREncoder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TQREncoder = class(TOleServer)
  private
    FIntf: _QREncoder;
    function GetDefaultInterface: _QREncoder;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _QREncoder);
    procedure Disconnect; override;
    property DefaultInterface: _QREncoder read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoQRCodeEncoder provides a Create and CreateRemote method to          
// create instances of the default interface _QRCodeEncoder exposed by              
// the CoClass QRCodeEncoder. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQRCodeEncoder = class
    class function Create: _QRCodeEncoder;
    class function CreateRemote(const MachineName: string): _QRCodeEncoder;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TQRCodeEncoder
// Help String      : 
// Default Interface: _QRCodeEncoder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TQRCodeEncoder = class(TOleServer)
  private
    FIntf: _QRCodeEncoder;
    function GetDefaultInterface: _QRCodeEncoder;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _QRCodeEncoder);
    procedure Disconnect; override;
    property DefaultInterface: _QRCodeEncoder read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteStatusServico provides a Create and CreateRemote method to          
// create instances of the default interface _CteStatusServico exposed by              
// the CoClass CteStatusServico. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteStatusServico = class
    class function Create: _CteStatusServico;
    class function CreateRemote(const MachineName: string): _CteStatusServico;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteStatusServico
// Help String      : 
// Default Interface: _CteStatusServico
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteStatusServico = class(TOleServer)
  private
    FIntf: _CteStatusServico;
    function GetDefaultInterface: _CteStatusServico;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteStatusServico);
    procedure Disconnect; override;
    property DefaultInterface: _CteStatusServico read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteStatusServicoCT_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteStatusServicoCT_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteStatusServicoCT_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteStatusServicoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteStatusServicoCT_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteStatusServicoCT_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteStatusServicoCT_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteStatusServicoCT_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteStatusServicoCT_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteStatusServicoCTCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteStatusServicoCTCompletedEventHandler exposed by              
// the CoClass cteStatusServicoCTCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteStatusServicoCTCompletedEventHandler = class
    class function Create: _cteStatusServicoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteStatusServicoCTCompletedEventHandler
// Help String      : 
// Default Interface: _cteStatusServicoCTCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteStatusServicoCTCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteStatusServicoCTCompletedEventHandler;
    function GetDefaultInterface: _cteStatusServicoCTCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteStatusServicoCTCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteStatusServicoCTCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteStatusServicoCTCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteStatusServicoCTCompletedEventArgs exposed by              
// the CoClass cteStatusServicoCTCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteStatusServicoCTCompletedEventArgs = class
    class function Create: _cteStatusServicoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteStatusServicoCTCompletedEventArgs
// Help String      : 
// Default Interface: _cteStatusServicoCTCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteStatusServicoCTCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteStatusServicoCTCompletedEventArgs;
    function GetDefaultInterface: _cteStatusServicoCTCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteStatusServicoCTCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteStatusServicoCTCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteRetRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _CteRetRecepcao exposed by              
// the CoClass CteRetRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteRetRecepcao = class
    class function Create: _CteRetRecepcao;
    class function CreateRemote(const MachineName: string): _CteRetRecepcao;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteRetRecepcao
// Help String      : 
// Default Interface: _CteRetRecepcao
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteRetRecepcao = class(TOleServer)
  private
    FIntf: _CteRetRecepcao;
    function GetDefaultInterface: _CteRetRecepcao;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteRetRecepcao);
    procedure Disconnect; override;
    property DefaultInterface: _CteRetRecepcao read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteRetRecepcaoLote_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteRetRecepcaoLote_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg = class
    class function Create: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteRetRecepcaoLote_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteRetRecepcaoLote_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRetRecepcaoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRetRecepcaoCompletedEventHandler exposed by              
// the CoClass cteRetRecepcaoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRetRecepcaoCompletedEventHandler = class
    class function Create: _cteRetRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRetRecepcaoCompletedEventHandler
// Help String      : 
// Default Interface: _cteRetRecepcaoCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRetRecepcaoCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRetRecepcaoCompletedEventHandler;
    function GetDefaultInterface: _cteRetRecepcaoCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRetRecepcaoCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRetRecepcaoCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRetRecepcaoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRetRecepcaoCompletedEventArgs exposed by              
// the CoClass cteRetRecepcaoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRetRecepcaoCompletedEventArgs = class
    class function Create: _cteRetRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRetRecepcaoCompletedEventArgs
// Help String      : 
// Default Interface: _cteRetRecepcaoCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRetRecepcaoCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRetRecepcaoCompletedEventArgs;
    function GetDefaultInterface: _cteRetRecepcaoCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRetRecepcaoCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRetRecepcaoCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteRecepcaoSinc provides a Create and CreateRemote method to          
// create instances of the default interface _CteRecepcaoSinc exposed by              
// the CoClass CteRecepcaoSinc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteRecepcaoSinc = class
    class function Create: _CteRecepcaoSinc;
    class function CreateRemote(const MachineName: string): _CteRecepcaoSinc;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteRecepcaoSinc
// Help String      : 
// Default Interface: _CteRecepcaoSinc
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteRecepcaoSinc = class(TOleServer)
  private
    FIntf: _CteRecepcaoSinc;
    function GetDefaultInterface: _CteRecepcaoSinc;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteRecepcaoSinc);
    procedure Disconnect; override;
    property DefaultInterface: _CteRecepcaoSinc read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoSincCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoSincCompletedEventHandler exposed by              
// the CoClass cteRecepcaoSincCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoSincCompletedEventHandler = class
    class function Create: _cteRecepcaoSincCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoSincCompletedEventHandler
// Help String      : 
// Default Interface: _cteRecepcaoSincCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoSincCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRecepcaoSincCompletedEventHandler;
    function GetDefaultInterface: _cteRecepcaoSincCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoSincCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoSincCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoSincCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoSincCompletedEventArgs exposed by              
// the CoClass cteRecepcaoSincCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoSincCompletedEventArgs = class
    class function Create: _cteRecepcaoSincCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoSincCompletedEventArgs
// Help String      : 
// Default Interface: _cteRecepcaoSincCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoSincCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRecepcaoSincCompletedEventArgs;
    function GetDefaultInterface: _cteRecepcaoSincCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoSincCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoSincCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteRecepcaoOS provides a Create and CreateRemote method to          
// create instances of the default interface _CteRecepcaoOS exposed by              
// the CoClass CteRecepcaoOS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteRecepcaoOS = class
    class function Create: _CteRecepcaoOS;
    class function CreateRemote(const MachineName: string): _CteRecepcaoOS;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteRecepcaoOS
// Help String      : 
// Default Interface: _CteRecepcaoOS
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteRecepcaoOS = class(TOleServer)
  private
    FIntf: _CteRecepcaoOS;
    function GetDefaultInterface: _CteRecepcaoOS;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteRecepcaoOS);
    procedure Disconnect; override;
    property DefaultInterface: _CteRecepcaoOS read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoOS_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteRecepcaoOS_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteRecepcaoOS_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteRecepcaoOS_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteRecepcaoOS_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteRecepcaoOS_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteRecepcaoOS_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteRecepcaoOS_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteRecepcaoOS_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoOSCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoOSCompletedEventHandler exposed by              
// the CoClass cteRecepcaoOSCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoOSCompletedEventHandler = class
    class function Create: _cteRecepcaoOSCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoOSCompletedEventHandler
// Help String      : 
// Default Interface: _cteRecepcaoOSCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoOSCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRecepcaoOSCompletedEventHandler;
    function GetDefaultInterface: _cteRecepcaoOSCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoOSCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoOSCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoOSCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoOSCompletedEventArgs exposed by              
// the CoClass cteRecepcaoOSCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoOSCompletedEventArgs = class
    class function Create: _cteRecepcaoOSCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoOSCompletedEventArgs
// Help String      : 
// Default Interface: _cteRecepcaoOSCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoOSCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRecepcaoOSCompletedEventArgs;
    function GetDefaultInterface: _cteRecepcaoOSCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoOSCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoOSCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _CteRecepcao exposed by              
// the CoClass CteRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteRecepcao = class
    class function Create: _CteRecepcao;
    class function CreateRemote(const MachineName: string): _CteRecepcao;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteRecepcao
// Help String      : 
// Default Interface: _CteRecepcao
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteRecepcao = class(TOleServer)
  private
    FIntf: _CteRecepcao;
    function GetDefaultInterface: _CteRecepcao;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteRecepcao);
    procedure Disconnect; override;
    property DefaultInterface: _CteRecepcao read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoLote_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteRecepcaoLote_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteRecepcaoLote_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteRecepcaoLote_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteRecepcaoLote_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteRecepcaoLote_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteRecepcaoLote_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteRecepcaoLote_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteRecepcaoLote_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoLoteCompletedEventHandler exposed by              
// the CoClass cteRecepcaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoLoteCompletedEventHandler = class
    class function Create: _cteRecepcaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoLoteCompletedEventHandler
// Help String      : 
// Default Interface: _cteRecepcaoLoteCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoLoteCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRecepcaoLoteCompletedEventHandler;
    function GetDefaultInterface: _cteRecepcaoLoteCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoLoteCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoLoteCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoLoteCompletedEventArgs exposed by              
// the CoClass cteRecepcaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoLoteCompletedEventArgs = class
    class function Create: _cteRecepcaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoLoteCompletedEventArgs
// Help String      : 
// Default Interface: _cteRecepcaoLoteCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoLoteCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRecepcaoLoteCompletedEventArgs;
    function GetDefaultInterface: _cteRecepcaoLoteCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoLoteCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoLoteCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTeRecepcaoGTVe provides a Create and CreateRemote method to          
// create instances of the default interface _CTeRecepcaoGTVe exposed by              
// the CoClass CTeRecepcaoGTVe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTeRecepcaoGTVe = class
    class function Create: _CTeRecepcaoGTVe;
    class function CreateRemote(const MachineName: string): _CTeRecepcaoGTVe;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTeRecepcaoGTVe
// Help String      : 
// Default Interface: _CTeRecepcaoGTVe
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTeRecepcaoGTVe = class(TOleServer)
  private
    FIntf: _CTeRecepcaoGTVe;
    function GetDefaultInterface: _CTeRecepcaoGTVe;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTeRecepcaoGTVe);
    procedure Disconnect; override;
    property DefaultInterface: _CTeRecepcaoGTVe read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoGTVeCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoGTVeCompletedEventHandler exposed by              
// the CoClass cteRecepcaoGTVeCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoGTVeCompletedEventHandler = class
    class function Create: _cteRecepcaoGTVeCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoGTVeCompletedEventHandler
// Help String      : 
// Default Interface: _cteRecepcaoGTVeCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoGTVeCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRecepcaoGTVeCompletedEventHandler;
    function GetDefaultInterface: _cteRecepcaoGTVeCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoGTVeCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoGTVeCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoGTVeCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoGTVeCompletedEventArgs exposed by              
// the CoClass cteRecepcaoGTVeCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoGTVeCompletedEventArgs = class
    class function Create: _cteRecepcaoGTVeCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoGTVeCompletedEventArgs
// Help String      : 
// Default Interface: _cteRecepcaoGTVeCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoGTVeCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRecepcaoGTVeCompletedEventArgs;
    function GetDefaultInterface: _cteRecepcaoGTVeCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoGTVeCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoGTVeCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteRecepcaoEvento provides a Create and CreateRemote method to          
// create instances of the default interface _CteRecepcaoEvento exposed by              
// the CoClass CteRecepcaoEvento. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteRecepcaoEvento = class
    class function Create: _CteRecepcaoEvento;
    class function CreateRemote(const MachineName: string): _CteRecepcaoEvento;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteRecepcaoEvento
// Help String      : 
// Default Interface: _CteRecepcaoEvento
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteRecepcaoEvento = class(TOleServer)
  private
    FIntf: _CteRecepcaoEvento;
    function GetDefaultInterface: _CteRecepcaoEvento;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteRecepcaoEvento);
    procedure Disconnect; override;
    property DefaultInterface: _CteRecepcaoEvento read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoEvento_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteRecepcaoEvento_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteRecepcaoEvento_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteRecepcaoEvento_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteRecepcaoEvento_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteRecepcaoEvento_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteRecepcaoEvento_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoEventoCompletedEventHandler exposed by              
// the CoClass cteRecepcaoEventoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoEventoCompletedEventHandler = class
    class function Create: _cteRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoEventoCompletedEventHandler
// Help String      : 
// Default Interface: _cteRecepcaoEventoCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoEventoCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteRecepcaoEventoCompletedEventHandler;
    function GetDefaultInterface: _cteRecepcaoEventoCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoEventoCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoEventoCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteRecepcaoEventoCompletedEventArgs exposed by              
// the CoClass cteRecepcaoEventoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteRecepcaoEventoCompletedEventArgs = class
    class function Create: _cteRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteRecepcaoEventoCompletedEventArgs
// Help String      : 
// Default Interface: _cteRecepcaoEventoCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteRecepcaoEventoCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteRecepcaoEventoCompletedEventArgs;
    function GetDefaultInterface: _cteRecepcaoEventoCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteRecepcaoEventoCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteRecepcaoEventoCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteInutilizacao provides a Create and CreateRemote method to          
// create instances of the default interface _CteInutilizacao exposed by              
// the CoClass CteInutilizacao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteInutilizacao = class
    class function Create: _CteInutilizacao;
    class function CreateRemote(const MachineName: string): _CteInutilizacao;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteInutilizacao
// Help String      : 
// Default Interface: _CteInutilizacao
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteInutilizacao = class(TOleServer)
  private
    FIntf: _CteInutilizacao;
    function GetDefaultInterface: _CteInutilizacao;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteInutilizacao);
    procedure Disconnect; override;
    property DefaultInterface: _CteInutilizacao read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteInutilizacaoCT_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteInutilizacaoCT_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteInutilizacaoCT_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteInutilizacaoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteInutilizacaoCT_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteInutilizacaoCT_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteInutilizacaoCT_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteInutilizacaoCTCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteInutilizacaoCTCompletedEventHandler exposed by              
// the CoClass cteInutilizacaoCTCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteInutilizacaoCTCompletedEventHandler = class
    class function Create: _cteInutilizacaoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteInutilizacaoCTCompletedEventHandler
// Help String      : 
// Default Interface: _cteInutilizacaoCTCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteInutilizacaoCTCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteInutilizacaoCTCompletedEventHandler;
    function GetDefaultInterface: _cteInutilizacaoCTCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteInutilizacaoCTCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteInutilizacaoCTCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteInutilizacaoCTCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteInutilizacaoCTCompletedEventArgs exposed by              
// the CoClass cteInutilizacaoCTCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteInutilizacaoCTCompletedEventArgs = class
    class function Create: _cteInutilizacaoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteInutilizacaoCTCompletedEventArgs
// Help String      : 
// Default Interface: _cteInutilizacaoCTCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteInutilizacaoCTCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteInutilizacaoCTCompletedEventArgs;
    function GetDefaultInterface: _cteInutilizacaoCTCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteInutilizacaoCTCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteInutilizacaoCTCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTeDistribuicaoDFe provides a Create and CreateRemote method to          
// create instances of the default interface _CTeDistribuicaoDFe exposed by              
// the CoClass CTeDistribuicaoDFe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTeDistribuicaoDFe = class
    class function Create: _CTeDistribuicaoDFe;
    class function CreateRemote(const MachineName: string): _CTeDistribuicaoDFe;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTeDistribuicaoDFe
// Help String      : 
// Default Interface: _CTeDistribuicaoDFe
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTeDistribuicaoDFe = class(TOleServer)
  private
    FIntf: _CTeDistribuicaoDFe;
    function GetDefaultInterface: _CTeDistribuicaoDFe;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTeDistribuicaoDFe);
    procedure Disconnect; override;
    property DefaultInterface: _CTeDistribuicaoDFe read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteDistDFeInteresseCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteDistDFeInteresseCompletedEventHandler exposed by              
// the CoClass cteDistDFeInteresseCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteDistDFeInteresseCompletedEventHandler = class
    class function Create: _cteDistDFeInteresseCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteDistDFeInteresseCompletedEventHandler
// Help String      : 
// Default Interface: _cteDistDFeInteresseCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteDistDFeInteresseCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteDistDFeInteresseCompletedEventHandler;
    function GetDefaultInterface: _cteDistDFeInteresseCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteDistDFeInteresseCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteDistDFeInteresseCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteDistDFeInteresseCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteDistDFeInteresseCompletedEventArgs exposed by              
// the CoClass cteDistDFeInteresseCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteDistDFeInteresseCompletedEventArgs = class
    class function Create: _cteDistDFeInteresseCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteDistDFeInteresseCompletedEventArgs
// Help String      : 
// Default Interface: _cteDistDFeInteresseCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteDistDFeInteresseCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteDistDFeInteresseCompletedEventArgs;
    function GetDefaultInterface: _cteDistDFeInteresseCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteDistDFeInteresseCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteDistDFeInteresseCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteConsulta provides a Create and CreateRemote method to          
// create instances of the default interface _CteConsulta exposed by              
// the CoClass CteConsulta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteConsulta = class
    class function Create: _CteConsulta;
    class function CreateRemote(const MachineName: string): _CteConsulta;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteConsulta
// Help String      : 
// Default Interface: _CteConsulta
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteConsulta = class(TOleServer)
  private
    FIntf: _CteConsulta;
    function GetDefaultInterface: _CteConsulta;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteConsulta);
    procedure Disconnect; override;
    property DefaultInterface: _CteConsulta read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteConsultaCT_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteConsultaCT_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteConsultaCT_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteConsultaCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteConsultaCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteConsultaCT_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteConsultaCT_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteConsultaCT_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteConsultaCT_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteConsultaCT_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteConsultaCT_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteConsultaCT_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteConsultaCT_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteConsultaCTCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteConsultaCTCompletedEventHandler exposed by              
// the CoClass cteConsultaCTCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteConsultaCTCompletedEventHandler = class
    class function Create: _cteConsultaCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteConsultaCTCompletedEventHandler
// Help String      : 
// Default Interface: _cteConsultaCTCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteConsultaCTCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteConsultaCTCompletedEventHandler;
    function GetDefaultInterface: _cteConsultaCTCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteConsultaCTCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteConsultaCTCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteConsultaCTCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteConsultaCTCompletedEventArgs exposed by              
// the CoClass cteConsultaCTCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteConsultaCTCompletedEventArgs = class
    class function Create: _cteConsultaCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteConsultaCTCompletedEventArgs
// Help String      : 
// Default Interface: _cteConsultaCTCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteConsultaCTCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteConsultaCTCompletedEventArgs;
    function GetDefaultInterface: _cteConsultaCTCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteConsultaCTCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteConsultaCTCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCteCancelamento provides a Create and CreateRemote method to          
// create instances of the default interface _CteCancelamento exposed by              
// the CoClass CteCancelamento. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCteCancelamento = class
    class function Create: _CteCancelamento;
    class function CreateRemote(const MachineName: string): _CteCancelamento;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCteCancelamento
// Help String      : 
// Default Interface: _CteCancelamento
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCteCancelamento = class(TOleServer)
  private
    FIntf: _CteCancelamento;
    function GetDefaultInterface: _CteCancelamento;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CteCancelamento);
    procedure Disconnect; override;
    property DefaultInterface: _CteCancelamento read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteCancelamentoCT_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CTe_Util_cteCancelamentoCT_cteCabecMsg exposed by              
// the CoClass CTe_Util_cteCancelamentoCT_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTe_Util_cteCancelamentoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTe_Util_cteCancelamentoCT_cteCabecMsg
// Help String      : 
// Default Interface: _CTe_Util_cteCancelamentoCT_cteCabecMsg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCTe_Util_cteCancelamentoCT_cteCabecMsg = class(TOleServer)
  private
    FIntf: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
    function GetDefaultInterface: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CTe_Util_cteCancelamentoCT_cteCabecMsg);
    procedure Disconnect; override;
    property DefaultInterface: _CTe_Util_cteCancelamentoCT_cteCabecMsg read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteCancelamentoCTCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cteCancelamentoCTCompletedEventHandler exposed by              
// the CoClass cteCancelamentoCTCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteCancelamentoCTCompletedEventHandler = class
    class function Create: _cteCancelamentoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteCancelamentoCTCompletedEventHandler
// Help String      : 
// Default Interface: _cteCancelamentoCTCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteCancelamentoCTCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cteCancelamentoCTCompletedEventHandler;
    function GetDefaultInterface: _cteCancelamentoCTCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteCancelamentoCTCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cteCancelamentoCTCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocteCancelamentoCTCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cteCancelamentoCTCompletedEventArgs exposed by              
// the CoClass cteCancelamentoCTCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocteCancelamentoCTCompletedEventArgs = class
    class function Create: _cteCancelamentoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcteCancelamentoCTCompletedEventArgs
// Help String      : 
// Default Interface: _cteCancelamentoCTCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcteCancelamentoCTCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cteCancelamentoCTCompletedEventArgs;
    function GetDefaultInterface: _cteCancelamentoCTCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cteCancelamentoCTCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cteCancelamentoCTCompletedEventArgs read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoCleCadastro provides a Create and CreateRemote method to          
// create instances of the default interface _CleCadastro exposed by              
// the CoClass CleCadastro. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCleCadastro = class
    class function Create: _CleCadastro;
    class function CreateRemote(const MachineName: string): _CleCadastro;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCleCadastro
// Help String      : 
// Default Interface: _CleCadastro
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCleCadastro = class(TOleServer)
  private
    FIntf: _CleCadastro;
    function GetDefaultInterface: _CleCadastro;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _CleCadastro);
    procedure Disconnect; override;
    property DefaultInterface: _CleCadastro read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocleCadastroLote provides a Create and CreateRemote method to          
// create instances of the default interface _cleCadastroLote exposed by              
// the CoClass cleCadastroLote. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocleCadastroLote = class
    class function Create: _cleCadastroLote;
    class function CreateRemote(const MachineName: string): _cleCadastroLote;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcleCadastroLote
// Help String      : 
// Default Interface: _cleCadastroLote
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TcleCadastroLote = class(TOleServer)
  private
    FIntf: _cleCadastroLote;
    function GetDefaultInterface: _cleCadastroLote;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cleCadastroLote);
    procedure Disconnect; override;
    property DefaultInterface: _cleCadastroLote read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocleCadastroLoteResponse provides a Create and CreateRemote method to          
// create instances of the default interface _cleCadastroLoteResponse exposed by              
// the CoClass cleCadastroLoteResponse. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocleCadastroLoteResponse = class
    class function Create: _cleCadastroLoteResponse;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteResponse;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcleCadastroLoteResponse
// Help String      : 
// Default Interface: _cleCadastroLoteResponse
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TcleCadastroLoteResponse = class(TOleServer)
  private
    FIntf: _cleCadastroLoteResponse;
    function GetDefaultInterface: _cleCadastroLoteResponse;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cleCadastroLoteResponse);
    procedure Disconnect; override;
    property DefaultInterface: _cleCadastroLoteResponse read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocleCadastroLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cleCadastroLoteCompletedEventHandler exposed by              
// the CoClass cleCadastroLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocleCadastroLoteCompletedEventHandler = class
    class function Create: _cleCadastroLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventHandler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcleCadastroLoteCompletedEventHandler
// Help String      : 
// Default Interface: _cleCadastroLoteCompletedEventHandler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcleCadastroLoteCompletedEventHandler = class(TOleServer)
  private
    FIntf: _cleCadastroLoteCompletedEventHandler;
    function GetDefaultInterface: _cleCadastroLoteCompletedEventHandler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cleCadastroLoteCompletedEventHandler);
    procedure Disconnect; override;
    property DefaultInterface: _cleCadastroLoteCompletedEventHandler read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CocleCadastroLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cleCadastroLoteCompletedEventArgs exposed by              
// the CoClass cleCadastroLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocleCadastroLoteCompletedEventArgs = class
    class function Create: _cleCadastroLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventArgs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TcleCadastroLoteCompletedEventArgs
// Help String      : 
// Default Interface: _cleCadastroLoteCompletedEventArgs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TcleCadastroLoteCompletedEventArgs = class(TOleServer)
  private
    FIntf: _cleCadastroLoteCompletedEventArgs;
    function GetDefaultInterface: _cleCadastroLoteCompletedEventArgs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _cleCadastroLoteCompletedEventArgs);
    procedure Disconnect; override;
    property DefaultInterface: _cleCadastroLoteCompletedEventArgs read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'samples';

  dtlOcxPage = 'samples';

implementation

uses System.Win.ComObj;

class function CoUtil.Create: CTe_Util_Interface;
begin
  Result := CreateComObject(CLASS_Util) as CTe_Util_Interface;
end;

class function CoUtil.CreateRemote(const MachineName: string): CTe_Util_Interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as CTe_Util_Interface;
end;

procedure TUtil.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{25567DA7-17E9-46D5-BFA8-8AE4CC7DA6E1}';
    IntfIID:   '{4B11037F-2F15-4558-A7B7-BA46801844A7}';
    EventIID:  '{2C49EADB-6764-4F8D-982F-A6591DB65612}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUtil.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as CTe_Util_Interface;
  end;
end;

procedure TUtil.ConnectTo(svrIntf: CTe_Util_Interface);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TUtil.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TUtil.GetDefaultInterface: CTe_Util_Interface;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUtil.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUtil.Destroy;
begin
  inherited Destroy;
end;

procedure TUtil.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

function TUtil.Versao: WideString;
begin
  Result := DefaultInterface.Versao;
end;

function TUtil.Assinar(const XMLString: WideString; const RefUri: WideString; 
                       const Nome: WideString; out XMLAssinado: WideString; 
                       out msgResultado: WideString): Integer;
begin
  Result := DefaultInterface.Assinar(XMLString, RefUri, Nome, XMLAssinado, msgResultado);
end;

function TUtil.PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer;
begin
  Result := DefaultInterface.PegaNomeCertificado(Nome, msgResultado);
end;

function TUtil.PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                    out Titular: WideString; out CNPJ: WideString; 
                                    out NroSerie: WideString; out Emissor: WideString; 
                                    out InicioValidade: WideString; out FimValidade: WideString): Integer;
begin
  Result := DefaultInterface.PegaDadosCertificado(Nome, msgResultado, Titular, CNPJ, NroSerie, 
                                                  Emissor, InicioValidade, FimValidade);
end;

function TUtil.CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const numero: WideString; 
                            const codigoSeguranca: WideString; out msgResultado: WideString; 
                            out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer;
begin
  Result := DefaultInterface.CriaChaveCTe(cUF, Ano, Mes, CNPJ, modelo, serie, numero, 
                                          codigoSeguranca, msgResultado, cCT, cDV, chaveCTe);
end;

function TUtil.ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                         out qtdeErros: Integer; out erroXML: WideString): Integer;
begin
  Result := DefaultInterface.ValidaXML(XML, tipoXML, msgResultado, qtdeErros, erroXML);
end;

function TUtil.ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString; 
                              tipoAmbiente: Integer; const nomeCertificado: WideString; 
                              const Versao: WideString; out msgDados: WideString; 
                              out msgRetWS: WideString; out msgResultado: WideString; 
                              const proxy: WideString; const usuario: WideString; 
                              const senha: WideString): Integer;
begin
  Result := DefaultInterface.ConsultaStatus(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, 
                                            Versao, msgDados, msgRetWS, msgResultado, proxy, 
                                            usuario, senha);
end;

function TUtil.EnviaLote(const siglaWS: WideString; const siglaUF: WideString; 
                         tipoAmbiente: Integer; const nomeCertificado: WideString; 
                         const Versao: WideString; var msgDados: WideString; 
                         out msgRetWS: WideString; out msgResultado: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): Integer;
begin
  Result := DefaultInterface.EnviaLote(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, Versao, 
                                       msgDados, msgRetWS, msgResultado, proxy, usuario, senha, 
                                       licenca);
end;

function TUtil.BuscaLote(const siglaWS: WideString; const siglaUF: WideString; 
                         tipoAmbiente: Integer; const nomeCertificado: WideString; 
                         const Versao: WideString; out msgDados: WideString; 
                         out msgRetWS: WideString; out msgResultado: WideString; 
                         const nroRecibo: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): Integer;
begin
  Result := DefaultInterface.BuscaLote(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, Versao, 
                                       msgDados, msgRetWS, msgResultado, nroRecibo, proxy, usuario, 
                                       senha);
end;

function TUtil.ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                          tipoAmbiente: Integer; const nomeCertificado: WideString; 
                          const Versao: WideString; out msgDados: WideString; 
                          out msgRetWS: WideString; out msgResultado: WideString; 
                          const chaveCTe: WideString; const proxy: WideString; 
                          const usuario: WideString; const senha: WideString): Integer;
begin
  Result := DefaultInterface.ConsultaCT(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, Versao, 
                                        msgDados, msgRetWS, msgResultado, chaveCTe, proxy, usuario, 
                                        senha);
end;

function TUtil.CancelaCT(const siglaWS: WideString; const siglaUF: WideString; 
                         tipoAmbiente: Integer; const nomeCertificado: WideString; 
                         const Versao: WideString; out msgDados: WideString; 
                         out msgRetWS: WideString; out msgResultado: WideString; 
                         out procCanc: WideString; const chaveCTe: WideString; 
                         const nProtocolo: WideString; const justificativa: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): Integer;
begin
  Result := DefaultInterface.CancelaCT(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, Versao, 
                                       msgDados, msgRetWS, msgResultado, procCanc, chaveCTe, 
                                       nProtocolo, justificativa, proxy, usuario, senha, licenca);
end;

function TUtil.InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString; 
                              tipoAmbiente: Integer; const nomeCertificado: WideString; 
                              const Versao: WideString; out msgDados: WideString; 
                              out msgRetWS: WideString; out msgResultado: WideString; 
                              out procInut: WideString; const cUF: WideString; 
                              const Ano: WideString; const CNPJ: WideString; 
                              const modelo: WideString; const serie: WideString; 
                              const nroCTeInicial: WideString; const nroCTeFinal: WideString; 
                              const justificativa: WideString; const proxy: WideString; 
                              const usuario: WideString; const senha: WideString; 
                              const licenca: WideString): Integer;
begin
  Result := DefaultInterface.InutilizaNroCT(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, 
                                            Versao, msgDados, msgRetWS, msgResultado, procInut, 
                                            cUF, Ano, CNPJ, modelo, serie, nroCTeInicial, 
                                            nroCTeFinal, justificativa, proxy, usuario, senha, 
                                            licenca);
end;

function TUtil.EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; 
                        out msgResultado: WideString; out CTeAssinado: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): Integer;
begin
  Result := DefaultInterface.EnviaCTe(siglaWS, CTe, nroRecibo, nomeCertificado, Versao, msgDados, 
                                      msgRetWS, msgResultado, CTeAssinado, proxy, usuario, senha, 
                                      licenca);
end;

function TUtil.BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const siglaUF: WideString; var CTeAssinado: WideString; 
                        var nroRecibo: WideString; out procCTe: WideString; 
                        out nroProtocolo: WideString; out dAutorizacao: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; 
                        out msgResultado: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): Integer;
begin
  Result := DefaultInterface.BuscaCTe(siglaWS, tipoAmbiente, siglaUF, CTeAssinado, nroRecibo, 
                                      procCTe, nroProtocolo, dAutorizacao, nomeCertificado, Versao, 
                                      msgDados, msgRetWS, msgResultado, proxy, usuario, senha, 
                                      licenca);
end;

function TUtil.ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out msgResultado: WideString; const tpArgumento: WideString; 
                             const argumento: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString): Integer;
begin
  Result := DefaultInterface.ConsultaCad2G(siglaUF, tipoAmbiente, nomeCertificado, Versao, 
                                           msgDados, msgRetWS, msgResultado, tpArgumento, 
                                           argumento, proxy, usuario, senha);
end;

function TUtil.EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        out msgCabec: WideString; var msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        out chvCLe: WideString; const proxy: WideString; const usuario: WideString; 
                        const senha: WideString): Integer;
begin
  Result := DefaultInterface.EnviaCLe(tipoAmbiente, nomeCertificado, msgCabec, msgDados, msgRetWS, 
                                      msgResultado, chvCLe, proxy, usuario, senha);
end;

function TUtil.CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; 
                                const Mes: WideString; const CNPJ: WideString; 
                                const modelo: WideString; const serie: WideString; 
                                const numero: WideString; const tpEmis: WideString; 
                                const codigoSeguranca: WideString; out msgResultado: WideString; 
                                out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer;
begin
  Result := DefaultInterface.CriaChaveCTeNovo(cUF, Ano, Mes, CNPJ, modelo, serie, numero, tpEmis, 
                                              codigoSeguranca, msgResultado, cCT, cDV, chaveCTe);
end;

function TUtil.CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString; 
                           out protocolo: WideString; out retCancCTe: WideString; 
                           out resultado: Integer; const nomeCertificado: WideString; 
                           out msgResultado: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): WideString;
begin
  Result := DefaultInterface.CriaProcCTe(siglaWS, CTeAssinada, protocolo, retCancCTe, resultado, 
                                         nomeCertificado, msgResultado, proxy, usuario, senha);
end;

function TUtil.CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString; 
                               out protocolo: WideString; out retCancCTe: WideString; 
                               out resultado: Integer; const nomeCertificado: WideString; 
                               out msgResultado: WideString; const proxy: WideString; 
                               const usuario: WideString; const senha: WideString): WideString;
begin
  Result := DefaultInterface.CriaProcCancCTe(siglaWS, cancCTe, protocolo, retCancCTe, resultado, 
                                             nomeCertificado, msgResultado, proxy, usuario, senha);
end;

function TUtil.EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString; 
                        const emailDestinatario: WideString; const emailBcc: WideString; 
                        const assunto: WideString; const mensagem: WideString; 
                        const arquivos: WideString; const smtpCliente: WideString; 
                        const smtpPorta: WideString; const smtpSSL: WideString; 
                        const smtpUsuario: WideString; const smtpSenha: WideString; 
                        const HTML: WideString; const confirmacao: WideString; 
                        out msgResultado: WideString): Integer;
begin
  Result := DefaultInterface.EnvEmail(emailRemetente, nomeRemetente, emailDestinatario, emailBcc, 
                                      assunto, mensagem, arquivos, smtpCliente, smtpPorta, smtpSSL, 
                                      smtpUsuario, smtpSenha, HTML, confirmacao, msgResultado);
end;

function TUtil.IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                         out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.IdentaXML(txtXML, cResultado, msgResultado);
end;

function TUtil.EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.EliminaIdentacaoXML(txtXML, cResultado, msgResultado);
end;

function TUtil.LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer; 
                             out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.LeArquivoANSI(nomeArquivo, cResultado, msgResultado);
end;

function TUtil.encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                            out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.encodeBase64(txtANSI, cResultado, msgResultado);
end;

function TUtil.decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                            out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.decodeBase64(txtBase64, cResultado, msgResultado);
end;

function TUtil.ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                     out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.ConverteArquivoBase64(nomeArquivo, cResultado, msgResultado);
end;

function TUtil.MontaLoteCTe(const Versao: WideString; const idLote: WideString; 
                            const CTe: WideString; out quantidadeCTe: Integer; 
                            out cResultado: Integer; out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.MontaLoteCTe(Versao, idLote, CTe, quantidadeCTe, cResultado, 
                                          msgResultado);
end;

function TUtil.PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString; 
                           out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                           out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                           out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer; 
                           out cResultado: Integer; out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.PegaProtCTe(retConsReciCTe, Versao, tpAmb, verAplic, nRec, cStat, 
                                         xMotivo, cUF, cMsg, xMsg, qtdeProtCTe, cResultado, 
                                         msgResultado);
end;

function TUtil.MontaProcCTe(const Versao: WideString; const enviCTe: WideString; 
                            const retConsReciCTe: WideString; out qtdeCTe: Integer; 
                            out qtdeProcCTe: Integer; out cResultado: Integer; 
                            out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.MontaProcCTe(Versao, enviCTe, retConsReciCTe, qtdeCTe, qtdeProcCTe, 
                                          cResultado, msgResultado);
end;

function TUtil.emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                        const _xFant_Opc: WideString; const _xLgr: WideString; 
                        const _nro: WideString; const _xCpl_Opc: WideString; 
                        const _xBairro: WideString; const _cMun: WideString; 
                        const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                        const _fone_Opc: WideString): WideString;
begin
  Result := DefaultInterface.emitente(_CNPJ, _IE, _xNome, _xFant_Opc, _xLgr, _nro, _xCpl_Opc, 
                                      _xBairro, _cMun, _xMun, _CEP_Opc, _UF, _fone_Opc);
end;

function TUtil.remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                         const _xNome: WideString; const _xFant_Opc: WideString; 
                         const _fone_Opc: WideString; const _xLgr: WideString; 
                         const _nro: WideString; const _xCpl_Opc: WideString; 
                         const _xBairro: WideString; const _cMun: WideString; 
                         const _xMun: WideString; const _CEP_Opc: WideString; 
                         const _UF: WideString; const _cPais_Opc: WideString; 
                         const _xPais_Opc: WideString; const _email_Opc: WideString; 
                         const _infnotas: WideString): WideString;
begin
  Result := DefaultInterface.remetente(_CNPJ, _CPF, _IE, _xNome, _xFant_Opc, _fone_Opc, _xLgr, 
                                       _nro, _xCpl_Opc, _xBairro, _cMun, _xMun, _CEP_Opc, _UF, 
                                       _cPais_Opc, _xPais_Opc, _email_Opc, _infnotas);
end;

function TUtil.expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                         const _xNome: WideString; const _fone_Opc: WideString; 
                         const _xLgr: WideString; const _nro: WideString; 
                         const _xCpl_Opc: WideString; const _xBairro: WideString; 
                         const _cMun: WideString; const _xMun: WideString; 
                         const _CEP_Opc: WideString; const _UF: WideString; 
                         const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                         const _email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.expedidor(_CNPJ, _CPF, _IE, _xNome, _fone_Opc, _xLgr, _nro, _xCpl_Opc, 
                                       _xBairro, _cMun, _xMun, _CEP_Opc, _UF, _cPais_Opc, 
                                       _xPais_Opc, _email_Opc);
end;

function TUtil.recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                         const _xNome: WideString; const _fone_Opc: WideString; 
                         const _xLgr: WideString; const _nro: WideString; 
                         const _xCpl_Opc: WideString; const _xBairro: WideString; 
                         const _cMun: WideString; const _xMun: WideString; 
                         const _CEP_Opc: WideString; const _UF: WideString; 
                         const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                         const _email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.recebedor(_CNPJ, _CPF, _IE, _xNome, _fone_Opc, _xLgr, _nro, _xCpl_Opc, 
                                       _xBairro, _cMun, _xMun, _CEP_Opc, _UF, _cPais_Opc, 
                                       _xPais_Opc, _email_Opc);
end;

function TUtil.destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString; 
                            const _xNome: WideString; const _fone_Opc: WideString; 
                            const _ISUF_Opc: WideString; const _xLgr: WideString; 
                            const _nro: WideString; const _xCpl_Opc: WideString; 
                            const _xBairro: WideString; const _cMun: WideString; 
                            const _xMun: WideString; const _CEP_Opc: WideString; 
                            const _UF: WideString; const _cPais_Opc: WideString; 
                            const _xPais_Opc: WideString; const _email_Opc: WideString; 
                            const _locEnt_Opc: WideString): WideString;
begin
  Result := DefaultInterface.destinatario(_CNPJ, _CPF, _IE, _xNome, _fone_Opc, _ISUF_Opc, _xLgr, 
                                          _nro, _xCpl_Opc, _xBairro, _cMun, _xMun, _CEP_Opc, _UF, 
                                          _cPais_Opc, _xPais_Opc, _email_Opc, _locEnt_Opc);
end;

function TUtil.localEntrega(const _CNPJ: WideString; const _CPF: WideString; 
                            const _xNome: WideString; const _xLgr: WideString; 
                            const _nro: WideString; const _xCpl_Opc: WideString; 
                            const _xBairro: WideString; const _cMun: WideString; 
                            const _xMun: WideString; const _UF: WideString): WideString;
begin
  Result := DefaultInterface.localEntrega(_CNPJ, _CPF, _xNome, _xLgr, _nro, _xCpl_Opc, _xBairro, 
                                          _cMun, _xMun, _UF);
end;

function TUtil.compVPrest(const _xNome: WideString; _vComp: Double): WideString;
begin
  Result := DefaultInterface.compVPrest(_xNome, _vComp);
end;

function TUtil.vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString;
begin
  Result := DefaultInterface.vPrest(_vTPrest, _vRec, _Comp_Opc);
end;

function TUtil.ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                         const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS00(_CST, _vBC, _pICMS, _vICMS, _infAdFisco_Opc);
end;

function TUtil.ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                         _vICMS: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS20(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _infAdFisco_Opc);
end;

function TUtil.ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS45(_CST, _infAdFisco);
end;

function TUtil.ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                         _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS60(_CST, _vBCSTRet, _pICMSSTRet, _vICMSSTRet, _vCred, 
                                       _infAdFisco_Opc);
end;

function TUtil.ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                         _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS90(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vCred, _infAdFisco_Opc);
end;

function TUtil.ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double; 
                              _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                              const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSOutraUF(_CST, _pRedBCOutraUF, _vBCOutraUF, _pICMSOutraUF, 
                                            _vICMSOutraUF, _infAdFisco_Opc);
end;

function TUtil.ImpICMSSN(const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSSN(_infAdFisco_Opc);
end;

function TUtil.identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                             const _natOp: WideString; _forPag: Integer; _mod: Integer; 
                             _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; 
                             _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; 
                             _procEmi: Integer; const _verProc: WideString; 
                             const _refCTe_Opc: WideString; const _cMunEnv: WideString; 
                             const _xMunEnv: WideString; const _UFEnv: WideString; 
                             const _modal: WideString; _tpServ: Integer; 
                             const _cMunIni: WideString; const _xMunIni: WideString; 
                             const _UFIni: WideString; const _cMunFim: WideString; 
                             const _xMunFim: WideString; const _UFFim: WideString; 
                             _retira: Integer; const _xDetRetira: WideString; 
                             const _tomador: WideString; _dhCont_Opc: TDateTime; 
                             const _xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.identificador(_cUF, _cCT, _CFOP, _natOp, _forPag, _mod, _serie, _nCT, 
                                           _dhEmi, _tpImp, _tpEmis, _cDV, _tpAmb, _tpCTe, _procEmi, 
                                           _verProc, _refCTe_Opc, _cMunEnv, _xMunEnv, _UFEnv, 
                                           _modal, _tpServ, _cMunIni, _xMunIni, _UFIni, _cMunFim, 
                                           _xMunFim, _UFFim, _retira, _xDetRetira, _tomador, 
                                           _dhCont_Opc, _xJust_Opc);
end;

function TUtil.tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString; 
                       const _IE_Opc: WideString; const _xNome: WideString; 
                       const _xFant_Opc: WideString; const _fone_Opc: WideString; 
                       const _xLgr: WideString; const _nro: WideString; 
                       const _xCpl_Opc: WideString; const _xBairro: WideString; 
                       const _cMun: WideString; const _xMun: WideString; 
                       const _CEP_Opc: WideString; const _UF: WideString; 
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString; 
                       const _email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.tomador(_toma, _CNPJ, _CPF, _IE_Opc, _xNome, _xFant_Opc, _fone_Opc, 
                                     _xLgr, _nro, _xCpl_Opc, _xBairro, _cMun, _xMun, _CEP_Opc, _UF, 
                                     _cPais_Opc, _xPais_Opc, _email_Opc);
end;

function TUtil.compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString; 
                     const _xEmi_Opc: WideString; const _fluxo_Opc: WideString; 
                     const _entrega_Opc: WideString; const _origCalc_Opc: WideString; 
                     const _destCalc_Opc: WideString; const xObs_Opc: WideString; 
                     const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.compl(_xCaraAd_Opc, _xCaraSer_Opc, _xEmi_Opc, _fluxo_Opc, 
                                   _entrega_Opc, _origCalc_Opc, _destCalc_Opc, xObs_Opc, 
                                   _obsCont_Opc, _ObsFisco_Opc);
end;

function TUtil.fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString; 
                     const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString;
begin
  Result := DefaultInterface.fluxo(_xOrig_Opc, _pass_Opc, _xDest_Opc, _xRota_Opc);
end;

function TUtil.pass(const _xPass_Opc: WideString): WideString;
begin
  Result := DefaultInterface.pass(_xPass_Opc);
end;

function TUtil.Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer; 
                       _hIni: TDateTime; _hFim: TDateTime): WideString;
begin
  Result := DefaultInterface.Entrega(_tpPer, _dIni, _dFim, _tpHor, _hIni, _hFim);
end;

function TUtil.obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString;
begin
  Result := DefaultInterface.obsFisco(_xCampo, _xTexto);
end;

function TUtil.obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString;
begin
  Result := DefaultInterface.obsCont(_xCampo, _xTexto);
end;

function TUtil.infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString; 
                          const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                          const _infModal: WideString; const _peri_Opc: WideString; 
                          const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                          const _infCteSub_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeNorm(_infCarga, _contQt_Opc, _emiDocAnt_Opc, _seg_Opc, 
                                        _infModal, _peri_Opc, _veicNovos_Opc, _cobr_Opc, 
                                        _infCteSub_Opc);
end;

function TUtil.infCarga(_vCarga_Opc: Double; const _prodPred: WideString; 
                        const _xOutCat_Opc: WideString; const _infQ: WideString): WideString;
begin
  Result := DefaultInterface.infCarga(_vCarga_Opc, _prodPred, _xOutCat_Opc, _infQ);
end;

function TUtil.infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString;
begin
  Result := DefaultInterface.infQ(_cUnid, _tpMed, _qCarga);
end;

function TUtil.contQt(const _nCont: WideString; const _lacContQt_Opc: WideString; 
                      _dPrev_Opc: TDateTime): WideString;
begin
  Result := DefaultInterface.contQt(_nCont, _lacContQt_Opc, _dPrev_Opc);
end;

function TUtil.lacContQt(const _nLacre: WideString): WideString;
begin
  Result := DefaultInterface.lacContQt(_nLacre);
end;

function TUtil.EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; 
                         const _IE_Opc: WideString; const _UF_Opc: WideString; 
                         const _xNome: WideString; const _idDocAnt1: WideString; 
                         const _idDocAnt2: WideString): WideString;
begin
  Result := DefaultInterface.EmiDocAnt(_CNPJ, _CPF, _IE_Opc, _UF_Opc, _xNome, _idDocAnt1, _idDocAnt2);
end;

function TUtil.idDocAntPap(_tpDoc: Integer; const _serie: WideString; 
                           const _subSerie_Opc: WideString; const _nDoc: WideString; 
                           _dEmi: TDateTime): WideString;
begin
  Result := DefaultInterface.idDocAntPap(_tpDoc, _serie, _subSerie_Opc, _nDoc, _dEmi);
end;

function TUtil.idDocAntEle(const _chave: WideString): WideString;
begin
  Result := DefaultInterface.idDocAntEle(_chave);
end;

function TUtil.seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString; 
                   const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString;
begin
  Result := DefaultInterface.seg(_respSeg, _xSeg_Opc, _nApol_Opc, _nAver_Opc, _vCarga_Opc);
end;

function TUtil.peri(const _nOnu: WideString; const _xNomeAE: WideString; 
                    const _xClaRisco: WideString; const _grEmb_Opc: WideString; 
                    const _qTotProd: WideString; const _qVolTipo_Opc: WideString; 
                    const _pontoFulgor_Opc: WideString): WideString;
begin
  Result := DefaultInterface.peri(_nOnu, _xNomeAE, _xClaRisco, _grEmb_Opc, _qTotProd, 
                                  _qVolTipo_Opc, _pontoFulgor_Opc);
end;

function TUtil.veicNovos(const _chassi: WideString; const _cCor: WideString; 
                         const _xCor: WideString; const _cMod: WideString; _vUnit: Double; 
                         _vFrete: Double): WideString;
begin
  Result := DefaultInterface.veicNovos(_chassi, _cCor, _xCor, _cMod, _vUnit, _vFrete);
end;

function TUtil.cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double; 
                    _vLiq_Opc: Double; const _dup_Opc: WideString): WideString;
begin
  Result := DefaultInterface.cobr(_nFat_Opc, _vOrig_Opc, _vDesc_Opc, _vLiq_Opc, _dup_Opc);
end;

function TUtil.dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString;
begin
  Result := DefaultInterface.dup(_nDup, _dVenc, _vDup);
end;

function TUtil.infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refNFe(_chCte, _refNFe);
end;

function TUtil.infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString; 
                               const _mod: WideString; const _serie: WideString; 
                               const _subSerie_Opc: WideString; const _nro: WideString; 
                               _valor: Double; _dEmi: TDateTime): WideString;
begin
  Result := DefaultInterface.infCteSub_refNF(_chCte, _CNPJ, _mod, _serie, _subSerie_Opc, _nro, 
                                             _valor, _dEmi);
end;

function TUtil.infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refCTe(_chCte, _refCte);
end;

function TUtil.infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refCTeAnu(_chCte, _refCteAnu);
end;

function TUtil.infCteComp(const _chave: WideString; const _vPresComp: WideString; 
                          const _impComp: WideString): WideString;
begin
  Result := DefaultInterface.infCteComp(_chave, _vPresComp, _impComp);
end;

function TUtil.vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString;
begin
  Result := DefaultInterface.vPresComp(_vTPrest, _compComp_Opc);
end;

function TUtil.compComp(const _xNome: WideString; _vComp: Double): WideString;
begin
  Result := DefaultInterface.compComp(_xNome, _vComp);
end;

function TUtil.ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                             const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS00(_CST, _vBC, _pICMS, _vICMS, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                             _vICMS: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS20(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS45(_CST, _infAdFisco);
end;

function TUtil.ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                             _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS60(_CST, _vBCSTRet, _pICMSSTRet, _vICMSSTRet, _vCred, 
                                           _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                             _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS90(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vCred, 
                                           _infAdFisco_Opc);
end;

function TUtil.ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; 
                                  _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                  _vICMSOutraUF: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMSOutraUF(_CST, _pRedBCOutraUF, _vBCOutraUF, _pICMSOutraUF, 
                                                _vICMSOutraUF, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMSSN(_infAdFisco_Opc);
end;

function TUtil.infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString;
begin
  Result := DefaultInterface.infCteAnu(_chCte, _dEmi);
end;

function TUtil.rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime; 
                   _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString; 
                   const _valePed_Opc: WideString; const _veic_Opc: WideString; 
                   const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString;
begin
  Result := DefaultInterface.rod(_versaoModal, _RNTRC, _dPrev, _lota, _CIOT_Opc, _occ_Opc, 
                                 _valePed_Opc, _veic_Opc, _lacRodo_Opc, _moto_Opc);
end;

function TUtil.occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime; 
                   const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString; 
                   const _UF: WideString; const _fone_Opc: WideString): WideString;
begin
  Result := DefaultInterface.occ(_serie_Opc, _nOcc, _dEmi, _CNPJ, _cInt_Opc, _IE, _UF, _fone_Opc);
end;

function TUtil.valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                       const _CNPJPg_Opc: WideString): WideString;
begin
  Result := DefaultInterface.valePed(_CNPJForn, _nCompra, _CNPJPg_Opc);
end;

function TUtil.veic(const _cInt_Opc: WideString; const _RENAVAM: WideString; 
                    const _placa: WideString; const _tara: WideString; const _capKG: WideString; 
                    const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer; 
                    const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString; 
                    const _prop_Opc: WideString): WideString;
begin
  Result := DefaultInterface.veic(_cInt_Opc, _RENAVAM, _placa, _tara, _capKG, _capM3, _tpProp, 
                                  _tpVeic, _tpRod, _tpCar, _UF, _prop_Opc);
end;

function TUtil.prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                    const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString; 
                    _tpProp: Integer): WideString;
begin
  Result := DefaultInterface.prop(_CPF, _CNPJ, _RNTRC, _xNome, _IE_Opc, _UF_Opc, _tpProp);
end;

function TUtil.lacRodo(const _nLacre: WideString): WideString;
begin
  Result := DefaultInterface.lacRodo(_nLacre);
end;

function TUtil.moto(const _xNome: WideString; const _CPF: WideString): WideString;
begin
  Result := DefaultInterface.moto(_xNome, _CPF);
end;

function TUtil.CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                   const _compl_Opc: WideString; const _emit: WideString; 
                   const _rem_Opc: WideString; const _exped_Opc: WideString; 
                   const _receb_Opc: WideString; const _dest_Opc: WideString; 
                   const _vPrest: WideString; const _imp: WideString; const _infCTe: WideString): WideString;
begin
  Result := DefaultInterface.CTe(_versao, _Id, _ide, _compl_Opc, _emit, _rem_Opc, _exped_Opc, 
                                 _receb_Opc, _dest_Opc, _vPrest, _imp, _infCTe);
end;

function TUtil.infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString; 
                     const _mod: WideString; const _serie: WideString; const _nDoc: WideString; 
                     _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; 
                     _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double; 
                     const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infNF(_nRoma_Opc, _nPed_Opc, _mod, _serie, _nDoc, _dEmi, _vBC, _vICMS, 
                                   _vBCST, _vST, _vProd, _vNF, _nCFOP, _nPeso_Opc, _PIN_Opc, 
                                   _locRet_Opc);
end;

function TUtil.infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infNFe(_chave, _PIN_Opc);
end;

function TUtil.infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString; 
                         const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString;
begin
  Result := DefaultInterface.infOutros(_tpDoc, _descOutros_Opc, _nDoc_Opc, _dEmi_Opc, _vDocFisc_Opc);
end;

function TUtil.localRetirada(const _CNPJ: WideString; const _CPF: WideString; 
                             const _xNome: WideString; const _xLgr: WideString; 
                             const _nro: WideString; const _xCpl_Opc: WideString; 
                             const _xBairro: WideString; const _cMun: WideString; 
                             const _xMun: WideString; const _UF: WideString): WideString;
begin
  Result := DefaultInterface.localRetirada(_CNPJ, _CPF, _xNome, _xLgr, _nro, _xCpl_Opc, _xBairro, 
                                           _cMun, _xMun, _UF);
end;

function TUtil.aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double; 
                     const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString; 
                     const _xNavio: WideString; const _balsa_Opc: WideString; 
                     const _nViag_Opc: WideString; const _direc: WideString; 
                     const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString; 
                     const _prtDest_Opc: WideString; const _tpNav_Opc: WideString; 
                     const _irin: WideString; const _detCont_Opc: WideString): WideString;
begin
  Result := DefaultInterface.aquav(_versaoModal, _vPrest, _vAFRMM, _nBooking_Opc, _nCtrl_Opc, 
                                   _xNavio, _balsa_Opc, _nViag_Opc, _direc, _prtEmb_Opc, 
                                   _prtTrans_Opc, _prtDest_Opc, _tpNav_Opc, _irin, _detCont_Opc);
end;

function TUtil.balsa(const _xBalsa: WideString): WideString;
begin
  Result := DefaultInterface.balsa(_xBalsa);
end;

function TUtil.detCont(const _nCont: WideString; const _lacres_Opc: WideString; 
                       const _infDoc_Opc: WideString): WideString;
begin
  Result := DefaultInterface.detCont(_nCont, _lacres_Opc, _infDoc_Opc);
end;

function TUtil.lacre(const _nLacre: WideString): WideString;
begin
  Result := DefaultInterface.lacre(_nLacre);
end;

function TUtil.infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString;
begin
  Result := DefaultInterface.infNFAquav(_serie, _nDoc, _unidRat_Opc);
end;

function TUtil.infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString;
begin
  Result := DefaultInterface.infNFeAquav(_chave, _unidRat_Opc);
end;

function TUtil.geraPdfDACTE(const XML: WideString; const logo: WideString; 
                            const quadroRecibo: WideString; const visualizar: WideString; 
                            const parametros: WideString; out msgResultado: WideString): Integer;
begin
  Result := DefaultInterface.geraPdfDACTE(XML, logo, quadroRecibo, visualizar, parametros, 
                                          msgResultado);
end;

function TUtil.Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                        out DLL_data: WideString; out DLL_dataValidade: WideString; 
                        out URL_versao: WideString; out URL_data: WideString): WideString;
begin
  Result := DefaultInterface.Versao2G(DLL_nome, DLL_versao, DLL_data, DLL_dataValidade, URL_versao, 
                                      URL_data);
end;

function TUtil.GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                  out msgErro: WideString): Integer;
begin
  Result := DefaultInterface.GeraStringCode128C(codigo, code128c, msgErro);
end;

function TUtil.WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString; 
                           const mensagemXML: WideString; out resultado: Integer; 
                           out msgResultado: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString; 
                           const licenca: WideString): WideString;
begin
  Result := DefaultInterface.WS_Rodocred(idWS, tipoAmbiente, CNPJEmissor, mensagemXML, resultado, 
                                         msgResultado, proxy, usuario, senha, licenca);
end;

function TUtil.ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString; 
                      const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer; 
                      _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer; 
                      _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer; 
                      const _verProc: WideString; const _refCTe_Opc: WideString; 
                      const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer; 
                      const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer; 
                      const _xDetRetira: WideString; const _tomador: WideString; 
                      _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ideVFP(_cUF, _cCT, _CFOP, _natOp, _forPag, _mod, _serie, _nCT, _dhEmi, 
                                    _tpImp, _tpEmis, _cDV, _tpAmb, _tpCTe, _procEmi, _verProc, 
                                    _refCTe_Opc, _xMunEnv, _modal, _tpServ, _xMunIni, _xMunFim, 
                                    _retira, _xDetRetira, _tomador, _dhCont_Opc, _xJust_Opc);
end;

function TUtil.aereo(const versaoModal: WideString; const nMinu_Opc: WideString; 
                     const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString; 
                     const IdT_Opc: WideString; const CL_tarifa: WideString; 
                     const cTar_tarifa_Opc: WideString; vTar_tarifa: Double; 
                     const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                     const cIMP_Opc: WideString): WideString;
begin
  Result := DefaultInterface.aereo(versaoModal, nMinu_Opc, nOCA_Opc, dPrev, xLAgEmi_Opc, IdT_Opc, 
                                   CL_tarifa, cTar_tarifa_Opc, vTar_tarifa, xDime_natCarga_Opc, 
                                   cInfManu_Opc, cIMP_Opc);
end;

function TUtil.cInfManu(const cInfManu: WideString): WideString;
begin
  Result := DefaultInterface.cInfManu(cInfManu);
end;

function TUtil.cIMP(const cIMP: WideString): WideString;
begin
  Result := DefaultInterface.cIMP(cIMP);
end;

function TUtil.AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString; 
                           const Atributo: WideString; const nomeCertificado: WideString; 
                           out cResultado: Integer; out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.AssinarNovo(XMLString, tagAssinatura, Atributo, nomeCertificado, 
                                         cResultado, msgResultado);
end;

function TUtil.ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                            _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS00_2G(_CST, _vBC, _pICMS, _vICMS, _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                            _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS20_2G(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vTotTrib_Opc, 
                                          _infAdFisco_Opc);
end;

function TUtil.ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                            const _infAdFisco: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS45_2G(_CST, _vTotTrib_Opc, _infAdFisco);
end;

function TUtil.ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                            _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                            const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS60_2G(_CST, _vBCSTRet, _pICMSSTRet, _vICMSSTRet, _vCred, 
                                          _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double; 
                            _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                            const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS90_2G(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vCred, 
                                          _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; 
                                 _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double; 
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSOutraUF_2G(_CST, _pRedBCOutraUF, _vBCOutraUF, _pICMSOutraUF, 
                                               _vICMSOutraUF, _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSSN_2G(_vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; 
                                _vICMS: Double; _vTotTrib_Opc: Double; 
                                const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS00_2G(_CST, _vBC, _pICMS, _vICMS, _vTotTrib_Opc, 
                                              _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                                const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS20_2G(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vTotTrib_Opc, 
                                              _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double; 
                                const _infAdFisco: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS45_2G(_CST, _vTotTrib_Opc, _infAdFisco);
end;

function TUtil.ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                                _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                                const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS60_2G(_CST, _vBCSTRet, _pICMSSTRet, _vICMSSTRet, _vCred, 
                                              _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                _pICMS: Double; _vICMS: Double; _vCred: Double; 
                                _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMS90_2G(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vCred, 
                                              _vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; 
                                     _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                     _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                     const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMSOutraUF_2G(_CST, _pRedBCOutraUF, _vBCOutraUF, 
                                                   _pICMSOutraUF, _vICMSOutraUF, _vTotTrib_Opc, 
                                                   _infAdFisco_Opc);
end;

function TUtil.ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpCompICMSSN_2G(_vTotTrib_Opc, _infAdFisco_Opc);
end;

function TUtil.EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out resultado: Integer; out msgResultado: WideString; 
                         const XMLCTe: WideString; const xJust: WideString; 
                         const dhEvento: WideString; out nProtocoloEPEC: WideString; 
                         out dProtocoloEPEC: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaEPEC(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                       msgRetWS, resultado, msgResultado, XMLCTe, xJust, dhEvento, 
                                       nProtocoloEPEC, dProtocoloEPEC, proxy, usuario, senha, 
                                       licenca);
end;

function TUtil.CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                            const CNPJ: WideString; valorTotalCTe: Double; 
                                            destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                            dataEmissaoCTe: TDateTime; 
                                            out codigoBarras: WideString; 
                                            out msgResultado: WideString): Integer;
begin
  Result := DefaultInterface.CriaCodigoBarrasContingencia(cUF, tipoEmissao, CNPJ, valorTotalCTe, 
                                                          destaqueICMSproprio, destaqueICMSST, 
                                                          dataEmissaoCTe, codigoBarras, msgResultado);
end;

function TUtil.CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                               const nomeCertificado: WideString; const Versao: WideString; 
                               out msgDados: WideString; out msgRetWS: WideString; 
                               out cStat: Integer; out msgResultado: WideString; 
                               const chaveCTe: WideString; const nProtocolo: WideString; 
                               const justificativa: WideString; const dhEvento: WideString; 
                               out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                               const proxy: WideString; const usuario: WideString; 
                               const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.CancelaCTEvento(siglaWS, tipoAmbiente, nomeCertificado, Versao, 
                                             msgDados, msgRetWS, cStat, msgResultado, chaveCTe, 
                                             nProtocolo, justificativa, dhEvento, nProtocoloCanc, 
                                             dProtocoloCanc, proxy, usuario, senha, licenca);
end;

function TUtil.RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer; 
                                  const nomeCertificado: WideString; const Versao: WideString; 
                                  out msgDados: WideString; out msgRetWS: WideString; 
                                  out cStat: Integer; out msgResultado: WideString; 
                                  const chaveCTe: WideString; const nDoc_Opc: WideString; 
                                  const xRegistro: WideString; nroRegistro: Integer; 
                                  const dhEvento: WideString; out nProtocolo: WideString; 
                                  out dProtocolo: WideString; const proxy: WideString; 
                                  const usuario: WideString; const senha: WideString; 
                                  const licenca: WideString): WideString;
begin
  Result := DefaultInterface.RegistraMultimodal(siglaWS, tipoAmbiente, nomeCertificado, Versao, 
                                                msgDados, msgRetWS, cStat, msgResultado, chaveCTe, 
                                                nDoc_Opc, xRegistro, nroRegistro, dhEvento, 
                                                nProtocolo, dProtocolo, proxy, usuario, senha, 
                                                licenca);
end;

function TUtil.EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveCTe: WideString; 
                        const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                        const dataCorrecao: WideString; out nroProtocolo: WideString; 
                        out dhProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCCe(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                      msgRetWS, cStat, msgResultado, chaveCTe, XMLCorrecao, 
                                      textoAcentuado, nroCCe, dataCorrecao, nroProtocolo, 
                                      dhProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString; 
                               const valorAlterado: WideString; 
                               const nroItemAlterado_Opc: WideString): WideString;
begin
  Result := DefaultInterface.geraInfCorrecao(grupoAlterado, campoAlterado, valorAlterado, 
                                             nroItemAlterado_Opc);
end;

function TUtil.remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString; 
                           const xNome: WideString; const xFant_Opc: WideString; 
                           const fone_Opc: WideString; const xLgr: WideString; 
                           const nro: WideString; const xCpl_Opc: WideString; 
                           const xBairro: WideString; const cMun: WideString; 
                           const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                           const cPais_Opc: WideString; const xPais_Opc: WideString; 
                           const email_Opc: WideString; const locColeta_Opc: WideString): WideString;
begin
  Result := DefaultInterface.remetente2G(CNPJ, CPF, IE, xNome, xFant_Opc, fone_Opc, xLgr, nro, 
                                         xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, 
                                         xPais_Opc, email_Opc, locColeta_Opc);
end;

function TUtil.locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                         const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                         const UF: WideString): WideString;
begin
  Result := DefaultInterface.locColeta(CNPJ, CPF, xNome, xLgr, nro, xCpl, xBairro, cMun, xMun, UF);
end;

function TUtil.autXML(const CNPJ: WideString; const CPF: WideString): WideString;
begin
  Result := DefaultInterface.autXML(CNPJ, CPF);
end;

function TUtil.CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString; 
                     const complOpc: WideString; const emit: WideString; const remOpc: WideString; 
                     const expedOpc: WideString; const recebOpc: WideString; 
                     const destOpc: WideString; const vPrest: WideString; const imp: WideString; 
                     const infCTe: WideString; const autXMLOpc: WideString): WideString;
begin
  Result := DefaultInterface.CTe2G(Versao, Id, ide, complOpc, emit, remOpc, expedOpc, recebOpc, 
                                   destOpc, vPrest, imp, infCTe, autXMLOpc);
end;

function TUtil.infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString; 
                        const mod_: WideString; const serie: WideString; const nDoc: WideString; 
                        dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                        vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double; 
                        const PINOpc: WideString; dPrevOpc: TDateTime; 
                        const unidCargaTranspOpc: WideString): WideString;
begin
  Result := DefaultInterface.infNF_2G(nRomaOpc, nPedOpc, mod_, serie, nDoc, dEmi, vBC, vICMS, 
                                      vBCST, vST, vProd, vNF, nCFOP, nPesoOpc, PINOpc, dPrevOpc, 
                                      unidCargaTranspOpc);
end;

function TUtil.infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime; 
                         const unidCargaTranspOpc: WideString): WideString;
begin
  Result := DefaultInterface.infNFe_2G(chave, PINOpc, dPrevOpc, unidCargaTranspOpc);
end;

function TUtil.infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString; 
                            const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double; 
                            dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString;
begin
  Result := DefaultInterface.infOutros_2G(tpDoc, descOutrosOpc, nDocOpc, dEmiOpc, vDocFiscOpc, 
                                          dPrevOpc, unidCargaTranspOpc);
end;

function TUtil.lacreUnidCarga(const nLacre: WideString): WideString;
begin
  Result := DefaultInterface.lacreUnidCarga(nLacre);
end;

function TUtil.lacreUnidTransp(const nLacre: WideString): WideString;
begin
  Result := DefaultInterface.lacreUnidTransp(nLacre);
end;

function TUtil.infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString; 
                            const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infUnidCarga(tpUnidCarga, idUnidCarga, lacUnidCarga_Opc, qtdRat_Opc);
end;

function TUtil.infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString; 
                             const lacUnidTransp_Opc: WideString; 
                             const infUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infUnidTransp(tpUnidTransp, idUnidTransp, lacUnidTransp_Opc, 
                                           infUnidCarga_Opc, qtdRat_Opc);
end;

function TUtil.infCteComp_2G(const _chave: WideString): WideString;
begin
  Result := DefaultInterface.infCteComp_2G(_chave);
end;

function TUtil.infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString; 
                             const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString; 
                             const _infModal: WideString; const _peri_Opc: WideString; 
                             const _veicNovos_Opc: WideString; const _cobr_Opc: WideString; 
                             const _infCteSub_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeNorm_2G(_infCarga, infDoc_Opc, _emiDocAnt_Opc, _seg_Opc, 
                                           _infModal, _peri_Opc, _veicNovos_Opc, _cobr_Opc, 
                                           _infCteSub_Opc);
end;

function TUtil.aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString; 
                        const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                        const xLAgEmi_Opc: WideString; const IdT_Opc: WideString; 
                        const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                        vTar_tarifa: Double; const xDime_natCarga_Opc: WideString; 
                        const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString;
begin
  Result := DefaultInterface.aereo_2G(versaoModal, nMinu_Opc, nOCA_Opc, dPrevAereo, xLAgEmi_Opc, 
                                      IdT_Opc, CL_tarifa, cTar_tarifa_Opc, vTar_tarifa, 
                                      xDime_natCarga_Opc, cInfManu_Opc, cIMP_Opc);
end;

function TUtil.valePed_2G(const CNPJForn: WideString; const nCompra: WideString; 
                          const CNPJPg_Opc: WideString; vValePed: Double): WideString;
begin
  Result := DefaultInterface.valePed_2G(CNPJForn, nCompra, CNPJPg_Opc, vValePed);
end;

function TUtil.EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                         const emailDestinatario: WideString; const emailBcc: WideString; 
                         const assunto: WideString; const mensagem: WideString; 
                         const arquivos: WideString; const smtpCliente: WideString; 
                         const smtpPorta: WideString; const smtpSSL: WideString; 
                         const smtpUsuario: WideString; const smtpSenha: WideString; 
                         const HTML: WideString; const confirmacao: WideString; 
                         out msgResultado: WideString; const timeout: WideString): Integer;
begin
  Result := DefaultInterface.EnvEmail2(emailRemetente, nomeRemetente, emailDestinatario, emailBcc, 
                                       assunto, mensagem, arquivos, smtpCliente, smtpPorta, 
                                       smtpSSL, smtpUsuario, smtpSenha, HTML, confirmacao, 
                                       msgResultado, timeout);
end;

function TUtil.ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; 
                         pICMSInter: Double; pICMSInterPart: Double; vFCPUFFim: Double; 
                         vICMSUFFim: Double; vICMSUFIni: Double): WideString;
begin
  Result := DefaultInterface.ICMSUFFim(vBCUFFim, pICMSUFFim, pFCPUFFim, pICMSInter, pICMSInterPart, 
                                       vFCPUFFim, vICMSUFFim, vICMSUFIni);
end;

function TUtil.ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double; 
                                   _vICMS: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS00_NT2015003(_CST, _vBC, _pICMS, _vICMS, _vTotTrib_Opc, 
                                                 _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                   _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS20_NT2015003(_CST, _pRedBC, _vBC, _pICMS, _vICMS, 
                                                 _vTotTrib_Opc, _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double; 
                                   const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS45_NT2015003(_CST, _vTotTrib_Opc, _infAdFisco, ICMSUFFim_Opc);
end;

function TUtil.ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double; 
                                   _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double; 
                                   const _infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS60_NT2015003(_CST, _vBCSTRet, _pICMSSTRet, _vICMSSTRet, _vCred, 
                                                 _vTotTrib_Opc, _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double; 
                                   _pICMS: Double; _vICMS: Double; _vCred: Double; 
                                   _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS90_NT2015003(_CST, _pRedBC, _vBC, _pICMS, _vICMS, _vCred, 
                                                 _vTotTrib_Opc, _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double; 
                                        _vBCOutraUF: Double; _pICMSOutraUF: Double; 
                                        _vICMSOutraUF: Double; _vTotTrib_Opc: Double; 
                                        const _infAdFisco_Opc: WideString; 
                                        const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSOutraUF_NT2015003(_CST, _pRedBCOutraUF, _vBCOutraUF, 
                                                      _pICMSOutraUF, _vICMSOutraUF, _vTotTrib_Opc, 
                                                      _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSSN_NT2015003(_vTotTrib_Opc, _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                                const natOp: WideString; mod_: Integer; serie: Integer; 
                                nCT: Integer; const dhEmi: WideString; tpImp: Integer; 
                                tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer; 
                                procEmi: Integer; const verProc: WideString; 
                                const indGlobalizado: WideString; const cMunEnv: WideString; 
                                const xMunEnv: WideString; const UFEnv: WideString; 
                                const modal: WideString; tpServ: Integer; 
                                const cMunIni: WideString; const xMunIni: WideString; 
                                const UFIni: WideString; const cMunFim: WideString; 
                                const xMunFim: WideString; const UFFim: WideString; 
                                retira: Integer; const xDetRetira: WideString; indIEToma: Integer; 
                                const tomador: WideString; const dhCont_Opc: WideString; 
                                const xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.identificador300(cUF, cCT, CFOP, natOp, mod_, serie, nCT, dhEmi, 
                                              tpImp, tpEmis, cDV, tpAmb, tpCTe, procEmi, verProc, 
                                              indGlobalizado, cMunEnv, xMunEnv, UFEnv, modal, 
                                              tpServ, cMunIni, xMunIni, UFIni, cMunFim, xMunFim, 
                                              UFFim, retira, xDetRetira, indIEToma, tomador, 
                                              dhCont_Opc, xJust_Opc);
end;

function TUtil.ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                         const verProc: WideString; const indGlobalizado: WideString; 
                         const xMunEnv: WideString; const modal: WideString; tpServ: Integer; 
                         const xMunIni: WideString; const xMunFim: WideString; retira: Integer; 
                         const xDetRetira: WideString; indIEToma: Integer; 
                         const tomador: WideString; const dhCont_Opc: WideString; 
                         const xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ideVFP300(cUF, cCT, CFOP, natOp, mod_, serie, nCT, dhEmi, tpImp, 
                                       tpEmis, cDV, tpAmb, tpCTe, procEmi, verProc, indGlobalizado, 
                                       xMunEnv, modal, tpServ, xMunIni, xMunFim, retira, 
                                       xDetRetira, indIEToma, tomador, dhCont_Opc, xJust_Opc);
end;

function TUtil.emitente300(const CNPJ: WideString; const IE: WideString; 
                           const IEST_Opc: WideString; const xNome: WideString; 
                           const xFant_Opc: WideString; const xLgr: WideString; 
                           const nro: WideString; const xCpl_Opc: WideString; 
                           const xBairro: WideString; const cMun: WideString; 
                           const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                           const fone_Opc: WideString): WideString;
begin
  Result := DefaultInterface.emitente300(CNPJ, IE, IEST_Opc, xNome, xFant_Opc, xLgr, nro, xCpl_Opc, 
                                         xBairro, cMun, xMun, CEP_Opc, UF, fone_Opc);
end;

function TUtil.tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                          const IE_Opc: WideString; const xNome: WideString; 
                          const xFant_Opc: WideString; const fone_Opc: WideString; 
                          const xLgr: WideString; const nro: WideString; 
                          const xCpl_Opc: WideString; const xBairro: WideString; 
                          const cMun: WideString; const xMun: WideString; 
                          const CEP_Opc: WideString; const UF: WideString; 
                          const cPais_Opc: WideString; const xPais_Opc: WideString; 
                          const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.tomador300(toma, CNPJ, CPF, IE_Opc, xNome, xFant_Opc, fone_Opc, xLgr, 
                                        nro, xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, 
                                        xPais_Opc, email_Opc);
end;

function TUtil.remetente300(const CNPJ: WideString; const CPF: WideString; 
                            const IE_Opc: WideString; const xNome: WideString; 
                            const xFant_Opc: WideString; const fone_Opc: WideString; 
                            const xLgr: WideString; const nro: WideString; 
                            const xCpl_Opc: WideString; const xBairro: WideString; 
                            const cMun: WideString; const xMun: WideString; 
                            const CEP_Opc: WideString; const UF: WideString; 
                            const cPais_Opc: WideString; const xPais_Opc: WideString; 
                            const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.remetente300(CNPJ, CPF, IE_Opc, xNome, xFant_Opc, fone_Opc, xLgr, nro, 
                                          xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, 
                                          xPais_Opc, email_Opc);
end;

function TUtil.expedidor300(const CNPJ: WideString; const CPF: WideString; 
                            const IE_Opc: WideString; const xNome: WideString; 
                            const fone_Opc: WideString; const xLgr: WideString; 
                            const nro: WideString; const xCpl_Opc: WideString; 
                            const xBairro: WideString; const cMun: WideString; 
                            const xMun: WideString; const CEP_Opc: WideString; 
                            const UF: WideString; const cPais_Opc: WideString; 
                            const xPais_Opc: WideString; const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.expedidor300(CNPJ, CPF, IE_Opc, xNome, fone_Opc, xLgr, nro, xCpl_Opc, 
                                          xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, xPais_Opc, 
                                          email_Opc);
end;

function TUtil.recebedor300(const CNPJ: WideString; const CPF: WideString; 
                            const IE_Opc: WideString; const xNome: WideString; 
                            const fone_Opc: WideString; const xLgr: WideString; 
                            const nro: WideString; const xCpl_Opc: WideString; 
                            const xBairro: WideString; const cMun: WideString; 
                            const xMun: WideString; const CEP_Opc: WideString; 
                            const UF: WideString; const cPais_Opc: WideString; 
                            const xPais_Opc: WideString; const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.recebedor300(CNPJ, CPF, IE_Opc, xNome, fone_Opc, xLgr, nro, xCpl_Opc, 
                                          xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, xPais_Opc, 
                                          email_Opc);
end;

function TUtil.destinatario300(const CNPJ: WideString; const CPF: WideString; 
                               const IE_Opc: WideString; const xNome: WideString; 
                               const fone_Opc: WideString; const ISUF_Opc: WideString; 
                               const xLgr: WideString; const nro: WideString; 
                               const xCpl_Opc: WideString; const xBairro: WideString; 
                               const cMun: WideString; const xMun: WideString; 
                               const CEP_Opc: WideString; const UF: WideString; 
                               const cPais_Opc: WideString; const xPais_Opc: WideString; 
                               const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.destinatario300(CNPJ, CPF, IE_Opc, xNome, fone_Opc, ISUF_Opc, xLgr, 
                                             nro, xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, 
                                             cPais_Opc, xPais_Opc, email_Opc);
end;

function TUtil.infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString; 
                             const emiDocAnt_Opc: WideString; const infModal: WideString; 
                             const veicNovos_Opc: WideString; const cobr_Opc: WideString; 
                             const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString; 
                             const infCTeMultimodal_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeNorm300(infCarga, infDoc_Opc, emiDocAnt_Opc, infModal, 
                                           veicNovos_Opc, cobr_Opc, infCteSub_Opc, 
                                           infGlobalizado_Opc, infCTeMultimodal_Opc);
end;

function TUtil.infCarga300(vCarga_Opc: Double; const prodPred: WideString; 
                           const xOutCat_Opc: WideString; const infQ: WideString; 
                           vCargaAverb_Opc: Double): WideString;
begin
  Result := DefaultInterface.infCarga300(vCarga_Opc, prodPred, xOutCat_Opc, infQ, vCargaAverb_Opc);
end;

function TUtil.rod300(const versaoModal: WideString; const RNTRC: WideString; 
                      const occ_Opc: WideString): WideString;
begin
  Result := DefaultInterface.rod300(versaoModal, RNTRC, occ_Opc);
end;

function TUtil.aereo300(const versaoModal: WideString; const nMinu_Opc: WideString; 
                        const nOCA_Opc: WideString; dPrevAereo: TDateTime; 
                        const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString; 
                        const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString; 
                        vTar_tarifa: Double; const peri_Opc: WideString): WideString;
begin
  Result := DefaultInterface.aereo300(versaoModal, nMinu_Opc, nOCA_Opc, dPrevAereo, 
                                      xDime_natCarga_Opc, cInfManu_Opc, CL_tarifa, cTar_tarifa_Opc, 
                                      vTar_tarifa, peri_Opc);
end;

function TUtil.peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double; 
                       const uniAP: WideString): WideString;
begin
  Result := DefaultInterface.peri300(nOnu, qTotEmb, qTotProd, uniAP);
end;

function TUtil.EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const chaveCTe: WideString; const CNPJTomador: WideString; 
                                   const xObs: WideString; const dhEvento: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaPrestDesacordo(siglaWS, tipoAmbiente, nomeCertificado, Versao, 
                                                 msgDados, msgRetWS, cStat, msgResultado, chaveCTe, 
                                                 CNPJTomador, xObs, dhEvento, nProtocolo, 
                                                 dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.EnviaCTeOS(const siglaWS: WideString; const Versao: WideString; 
                          const nomeCertificado: WideString; const CTeOS: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; out CTeOSAssinado: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCTeOS(siglaWS, Versao, nomeCertificado, CTeOS, msgDados, 
                                        msgRetWS, cStat, msgResultado, CTeOSAssinado, nProtocolo, 
                                        dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                           out msgResultado: WideString; const chaveCTe: WideString; 
                           nroInfGTV: Integer; const XMLInfGTV: WideString; 
                           const dhEvento: WideString; out nProtocolo: WideString; 
                           out dProtocolo: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString; 
                           const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaInfGTV(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                         msgRetWS, cStat, msgResultado, chaveCTe, nroInfGTV, 
                                         XMLInfGTV, dhEvento, nProtocolo, dProtocolo, proxy, 
                                         usuario, senha, licenca);
end;

function TUtil.infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString; 
                      const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString; 
                      const qCarga: WideString; const infEspecie: WideString; 
                      const CNPJRem: WideString; const CPFRem: WideString; 
                      const IERemOpc: WideString; const UFRem: WideString; 
                      const xNomeRem: WideString; const CNPJDest: WideString; 
                      const CPFDest: WideString; const IEDestOpc: WideString; 
                      const UFDest: WideString; const xNomeDest: WideString; 
                      const placaOpc: WideString; const UFOpc: WideString; 
                      const RNTRCOpc: WideString): WideString;
begin
  Result := DefaultInterface.infGTV(nDoc, Id, serieOpc, subSerieOpc, dEmi, nDV, qCarga, infEspecie, 
                                    CNPJRem, CPFRem, IERemOpc, UFRem, xNomeRem, CNPJDest, CPFDest, 
                                    IEDestOpc, UFDest, xNomeDest, placaOpc, UFOpc, RNTRCOpc);
end;

function TUtil.infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString;
begin
  Result := DefaultInterface.infEspecie(tpEspecie, vEspecieOpc);
end;

function TUtil.consNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                       const NSU: WideString; out verAplic: WideString; out dhResp: WideString; 
                       out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString; 
                       out schemaXML: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.consNSU(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                     msgRetWS, cStat, msgResultado, CNPJ, cUF, NSU, verAplic, 
                                     dhResp, ultNSU, maxNSU, NSUXML, schemaXML, proxy, usuario, 
                                     senha, licenca);
end;

function TUtil.distNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                       const ultNSURecebido: WideString; out verAplic: WideString; 
                       out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString; 
                       out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString; 
                       const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.distNSU(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                     msgRetWS, cStat, msgResultado, CNPJ, cUF, ultNSURecebido, 
                                     verAplic, dhResp, ultNSU, maxNSU, qtdeDocto, proxy, usuario, 
                                     senha, licenca);
end;

function TUtil.ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                        const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                        const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                        tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                        const verProc: WideString; const cMunEnv: WideString; 
                        const xMunEnv: WideString; const UFEnv: WideString; 
                        const modal: WideString; tpServ: Integer; indIEToma: Integer; 
                        const cMunIni_Opc: WideString; const xMunIni_Opc: WideString; 
                        const UFIni_Opc: WideString; const cMunFim_Opc: WideString; 
                        const xMunFim_Opc: WideString; const UFFim_Opc: WideString; 
                        const infPercurso_Opc: WideString; const dhCont_Opc: WideString; 
                        const xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ideCTeOS(cUF, cCT, CFOP, natOp, mod_, serie, nCT, dhEmi, tpImp, 
                                      tpEmis, cDV, tpAmb, tpCTe, procEmi, verProc, cMunEnv, 
                                      xMunEnv, UFEnv, modal, tpServ, indIEToma, cMunIni_Opc, 
                                      xMunIni_Opc, UFIni_Opc, cMunFim_Opc, xMunFim_Opc, UFFim_Opc, 
                                      infPercurso_Opc, dhCont_Opc, xJust_Opc);
end;

function TUtil.ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString; 
                           const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer; 
                           const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer; 
                           tpAmb: Integer; tpCTe: Integer; procEmi: Integer; 
                           const verProc: WideString; const xMunEnv: WideString; 
                           const modal: WideString; tpServ: Integer; indIEToma: Integer; 
                           const xMunIni: WideString; const xMunFim: WideString; 
                           const infPercurso_Opc: WideString; const dhCont_Opc: WideString; 
                           const xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ideCTeOSVFP(cUF, cCT, CFOP, natOp, mod_, serie, nCT, dhEmi, tpImp, 
                                         tpEmis, cDV, tpAmb, tpCTe, procEmi, verProc, xMunEnv, 
                                         modal, tpServ, indIEToma, xMunIni, xMunFim, 
                                         infPercurso_Opc, dhCont_Opc, xJust_Opc);
end;

function TUtil.complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString; 
                          const xEmi_Opc: WideString; const xObs_Opc: WideString; 
                          const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString;
begin
  Result := DefaultInterface.complCTeOS(xCaracAd_Opc, xCaracSer_Opc, xEmi_Opc, xObs_Opc, 
                                        obsCont_Opc, obsFisco_Opc);
end;

function TUtil.tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; 
                            const IE_Opc: WideString; const xNome: WideString; 
                            const xFant_Opc: WideString; const fone_Opc: WideString; 
                            const xLgr: WideString; const nro: WideString; 
                            const xCpl_Opc: WideString; const xBairro: WideString; 
                            const cMun: WideString; const xMun: WideString; 
                            const CEP_Opc: WideString; const UF: WideString; 
                            const cPais_Opc: WideString; const xPais_Opc: WideString; 
                            const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.tomadorCTeOS(CNPJ, CPF, IE_Opc, xNome, xFant_Opc, fone_Opc, xLgr, nro, 
                                          xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, cPais_Opc, 
                                          xPais_Opc, email_Opc);
end;

function TUtil.ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double; 
                              vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                              const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS00CTeOS(CST, vBC, pICMS, vICMS, vTotTrib_Opc, infAdFisco_Opc, 
                                            ICMSUFFim_Opc, infTribFed_Opc);
end;

function TUtil.ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double; 
                              const infAdFisco: WideString; const ICMSUFFim_Opc: WideString; 
                              const infTribFed_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS45CTeOS(CST, vTotTrib_Opc, infAdFisco, ICMSUFFim_Opc, 
                                            infTribFed_Opc);
end;

function TUtil.ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double; 
                              vICMS: Double; vCred: Double; vTotTrib_Opc: Double; 
                              const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString; 
                              const infTribFed_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMS90CTeOS(CST, pRedBC, vBC, pICMS, vICMS, vCred, vTotTrib_Opc, 
                                            infAdFisco_Opc, ICMSUFFim_Opc, infTribFed_Opc);
end;

function TUtil.ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; 
                                   vBCOutraUF: Double; pICMSOutraUF: Double; vICMSOutraUF: Double; 
                                   vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                                   const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSOutraUFCTeOS(CST, pRedBCOutraUF, vBCOutraUF, pICMSOutraUF, 
                                                 vICMSOutraUF, vTotTrib_Opc, infAdFisco_Opc, 
                                                 ICMSUFFim_Opc, infTribFed_Opc);
end;

function TUtil.ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString; 
                              const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSSNCTeOS(vTotTrib_Opc, infAdFisco_Opc, ICMSUFFim_Opc, 
                                            infTribFed_Opc);
end;

function TUtil.InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; 
                          vINSS_Opc: Double; vCSLL_Opc: Double): WideString;
begin
  Result := DefaultInterface.InfTribFed(vPIS_Opc, vCOFINS_Opc, vIR_Opc, vINSS_Opc, vCSLL_Opc);
end;

function TUtil.infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infServico(xDescServ, infQ_Opc);
end;

function TUtil.infQCteOS(const qCarga: WideString): WideString;
begin
  Result := DefaultInterface.infQCteOS(qCarga);
end;

function TUtil.infDocRef(const nDoc: WideString; const serie_Opc: WideString; 
                         const subSerie_Opc: WideString; const dEmi: WideString; 
                         const vDoc_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infDocRef(nDoc, serie_Opc, subSerie_Opc, dEmi, vDoc_Opc);
end;

function TUtil.segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString; 
                        const nApol_Opc: WideString): WideString;
begin
  Result := DefaultInterface.segCTeOS(respSeg, xSeg_Opc, nApol_Opc);
end;

function TUtil.infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString;
begin
  Result := DefaultInterface.infCteOSSub_refNFe(chCte, refNFe);
end;

function TUtil.infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString; 
                                 const CPF: WideString; const mod_: WideString; 
                                 const serie: WideString; const subSerie_Opc: WideString; 
                                 const nro: WideString; valor: Double; const dEmi: WideString): WideString;
begin
  Result := DefaultInterface.infCteOSSub_refNF(chCte, CNPJ, CPF, mod_, serie, subSerie_Opc, nro, 
                                               valor, dEmi);
end;

function TUtil.infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString;
begin
  Result := DefaultInterface.infCteOSSub_refCTe(chCte, refCte);
end;

function TUtil.infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString;
begin
  Result := DefaultInterface.infCteOSSub_refCTeAnu(chCte, refCteAnu);
end;

function TUtil.infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString; 
                            const seg_Opc: WideString; const infModal_Opc: WideString; 
                            const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeOSNorm(infServico, infDocRef_Opc, seg_Opc, infModal_Opc, 
                                          infCteSub_Opc, refCTeCanc);
end;

function TUtil.rodOS(const _versaoModal: WideString; const TAF: WideString; 
                     const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString;
begin
  Result := DefaultInterface.rodOS(_versaoModal, TAF, NroRegEstadual, veicOS_Opc);
end;

function TUtil.veicOS(const placa: WideString; const RENAVAM_Opc: WideString; 
                      const propOS_Opc: WideString; const UF_Opc: WideString): WideString;
begin
  Result := DefaultInterface.veicOS(placa, RENAVAM_Opc, propOS_Opc, UF_Opc);
end;

function TUtil.propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString; 
                      const NroRegEstadual: WideString; const xNome: WideString; 
                      const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString;
begin
  Result := DefaultInterface.propOS(CPF, CNPJ, TAF, NroRegEstadual, xNome, IE_Opc, UF_Opc, tpProp);
end;

function TUtil.CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString; 
                     const complOpc: WideString; const emit: WideString; const tomaOpc: WideString; 
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                     const autXMLOpc: WideString): WideString;
begin
  Result := DefaultInterface.CTeOS(Versao, Id, ide, complOpc, emit, tomaOpc, vPrest, imp, infCTe, 
                                   autXMLOpc);
end;

function TUtil.infPercurso(const UFPer: WideString): WideString;
begin
  Result := DefaultInterface.infPercurso(UFPer);
end;

function TUtil.ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString; 
                            const ICMSUFFim_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ImpICMSSN300(_vTotTrib_Opc, _infAdFisco_Opc, ICMSUFFim_Opc);
end;

function TUtil.infCteComp300(const chCte: WideString): WideString;
begin
  Result := DefaultInterface.infCteComp300(chCte);
end;

function TUtil.idDocAntEle300(const chCte: WideString): WideString;
begin
  Result := DefaultInterface.idDocAntEle300(chCte);
end;

function TUtil.fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString; 
                        const xDest_Opc: WideString; const xRota_Opc: WideString): WideString;
begin
  Result := DefaultInterface.fluxo300(xOrig_Opc, pass_Opc, xDest_Opc, xRota_Opc);
end;

function TUtil.infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString; 
                                   const indAlteraToma_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refNFe300(_chCte, _refNFe, indAlteraToma_Opc);
end;

function TUtil.infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString; 
                                  const mod_: WideString; const serie: WideString; 
                                  const subSerie_Opc: WideString; const nro: WideString; 
                                  valor: Double; dEmi: TDateTime; 
                                  const indAlteraToma_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refNF300(chCte, CNPJ, mod_, serie, subSerie_Opc, nro, valor, 
                                                dEmi, indAlteraToma_Opc);
end;

function TUtil.infCteSub_refCTe300(const chCte: WideString; const refCte: WideString; 
                                   const indAlteraToma_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refCTe300(chCte, refCte, indAlteraToma_Opc);
end;

function TUtil.infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString; 
                                      const indAlteraToma_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub_refCTeAnu300(chCte, refCteAnu, indAlteraToma_Opc);
end;

function TUtil.infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString; 
                                    const seg_Opc: WideString; const infModal_Opc: WideString; 
                                    const infCteSub_Opc: WideString; 
                                    const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeOSNormNT201702(infServico, infDocRef_Opc, seg_Opc, infModal_Opc, 
                                                  infCteSub_Opc, refCTeCanc_Opc, cobr_Opc);
end;

function TUtil.aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double; 
                             const xNavio: WideString; const balsa_Opc: WideString; 
                             const nViag_Opc: WideString; const direc: WideString; 
                             const irin: WideString; const detCont_Opc: WideString; 
                             const _tpNav_Opc: WideString): WideString;
begin
  Result := DefaultInterface.aquavNT201702(versaoModal, vPrest, vAFRMM, xNavio, balsa_Opc, 
                                           nViag_Opc, direc, irin, detCont_Opc, _tpNav_Opc);
end;

function TUtil.infCTeMultimodal(const chCte: WideString): WideString;
begin
  Result := DefaultInterface.infCTeMultimodal(chCte);
end;

function TUtil.infRespTec(const CNPJ: WideString; const xContato: WideString; 
                          const email: WideString; const fone: WideString; 
                          const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infRespTec(CNPJ, xContato, email, fone, idCSRT_Opc, hashCSRT_Opc);
end;

function TUtil.CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                           const complOpc: WideString; const emit: WideString; 
                           const remOpc: WideString; const expedOpc: WideString; 
                           const recebOpc: WideString; const destOpc: WideString; 
                           const vPrest: WideString; const imp: WideString; 
                           const infCTe: WideString; const autXMLOpc: WideString; 
                           const infRespTec_Opc: WideString): WideString;
begin
  Result := DefaultInterface.CTe_2018002(Versao, Id, ide, complOpc, emit, remOpc, expedOpc, 
                                         recebOpc, destOpc, vPrest, imp, infCTe, autXMLOpc, 
                                         infRespTec_Opc);
end;

function TUtil.CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString; 
                             const complOpc: WideString; const emit: WideString; 
                             const tomaOpc: WideString; const vPrest: WideString; 
                             const imp: WideString; const infCTe: WideString; 
                             const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString;
begin
  Result := DefaultInterface.CTeOS_2018002(Versao, Id, ide, complOpc, emit, tomaOpc, vPrest, imp, 
                                           infCTe, autXMLOpc, infRespTec_Opc);
end;

function TUtil.infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infFretamento(tpFretamento, dhViagem_Opc);
end;

function TUtil.rodOS_2018002(const versaoModal: WideString; const TAF: WideString; 
                             const NroRegEstadual: WideString; const veicOS_Opc: WideString; 
                             const infFretamento_Opc: WideString): WideString;
begin
  Result := DefaultInterface.rodOS_2018002(versaoModal, TAF, NroRegEstadual, veicOS_Opc, 
                                           infFretamento_Opc);
end;

function TUtil.infRespTec2(const CNPJ: WideString; const xContato: WideString; 
                           const email: WideString; const fone: WideString; 
                           const idCSRT_Opc: WideString; const CSRT_Opc: WideString; 
                           const chaveCTe_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infRespTec2(CNPJ, xContato, email, fone, idCSRT_Opc, CSRT_Opc, 
                                         chaveCTe_Opc);
end;

function TUtil.CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const compl_Opc: WideString; const emit: WideString; 
                       const rem_Opc: WideString; const exped_Opc: WideString; 
                       const receb_Opc: WideString; const dest_Opc: WideString; 
                       const vPrest: WideString; const imp: WideString; const infCTe: WideString; 
                       const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                       const infSuplCTe_Opc: WideString): WideString;
begin
  Result := DefaultInterface.CTe_v3a(Versao, Id, ide, compl_Opc, emit, rem_Opc, exped_Opc, 
                                     receb_Opc, dest_Opc, vPrest, imp, infCTe, autXML_Opc, 
                                     infRespTec_Opc, infSuplCTe_Opc);
end;

function TUtil.CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString; 
                         const complOpc: WideString; const emit: WideString; 
                         const tomaOpc: WideString; const vPrest: WideString; 
                         const imp: WideString; const infCTe: WideString; 
                         const autXMLOpc: WideString; const infRespTecOpc: WideString; 
                         const infSuplCTeOpc: WideString): WideString;
begin
  Result := DefaultInterface.CTeOS_v3a(Versao, Id, ide, complOpc, emit, tomaOpc, vPrest, imp, 
                                       infCTe, autXMLOpc, infRespTecOpc, infSuplCTeOpc);
end;

function TUtil.infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; out qrCode: WideString; 
                          out resultado: Integer; out msgResultado: WideString): WideString;
begin
  Result := DefaultInterface.infCTeSupl(URL, chaveCTe, tipoAmbiente, nomeCertificado, qrCode, 
                                        resultado, msgResultado);
end;

function TUtil.EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; nroCECTe: Integer; 
                          const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                          const dhEntrega: WideString; const nDoc: WideString; 
                          const xNome: WideString; latitude: Double; longitude: Double; 
                          const hashEntrega: WideString; const dhHashEntrega: WideString; 
                          const XMLInfEntrega: WideString; const dhEvento: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCECTE(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                        msgRetWS, cStat, msgResultado, nroCECTe, chaveCTe, 
                                        nProtocoloCTe, dhEntrega, nDoc, xNome, latitude, longitude, 
                                        hashEntrega, dhHashEntrega, XMLInfEntrega, dhEvento, 
                                        nProtocolo, dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.infEntrega(const chNFe: WideString): WideString;
begin
  Result := DefaultInterface.infEntrega(chNFe);
end;

function TUtil.calcSha1(const texto: WideString): WideString;
begin
  Result := DefaultInterface.calcSha1(texto);
end;

function TUtil.EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                           out msgResultado: WideString; nroCancCE: Integer; 
                           const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                           const nProtocoloCE: WideString; const dhEvento: WideString; 
                           out nProtocolo: WideString; out dProtocolo: WideString; 
                           const proxy: WideString; const usuario: WideString; 
                           const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCancCE(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                         msgRetWS, cStat, msgResultado, nroCancCE, chaveCTe, 
                                         nProtocoloCTe, nProtocoloCE, dhEvento, nProtocolo, 
                                         dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString; 
                            const nomeCertificado: WideString; const CTe: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; out CTeAssinado: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCTeSinc(siglaWS, Versao, nomeCertificado, CTe, msgDados, 
                                          msgRetWS, cStat, msgResultado, CTeAssinado, nProtocolo, 
                                          dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.EnviaGTVe(const siglaWS: WideString; const Versao: WideString; 
                         const nomeCertificado: WideString; const GTVe: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; out GTVeAssinado: WideString; 
                         out nProtocolo: WideString; out dProtocolo: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaGTVe(siglaWS, Versao, nomeCertificado, GTVe, msgDados, msgRetWS, 
                                       cStat, msgResultado, GTVeAssinado, nProtocolo, dProtocolo, 
                                       proxy, usuario, senha, licenca);
end;

function TUtil.GTVe(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const compl_Opc: WideString; const emit: WideString; const rem: WideString; 
                    const dest: WideString; const origem_Opc: WideString; 
                    const destino_Opc: WideString; const detGTV: WideString; 
                    const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                    const infSuplCTe_Opc: WideString): WideString;
begin
  Result := DefaultInterface.GTVe(Versao, Id, ide, compl_Opc, emit, rem, dest, origem_Opc, 
                                  destino_Opc, detGTV, autXML_Opc, infRespTec_Opc, infSuplCTe_Opc);
end;

function TUtil.ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString; 
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString; 
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                       tpCTe: Integer; const verProc: WideString; const cMunEnv: WideString; 
                       const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString; 
                       tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString; 
                       const dhChegadaDest: WideString; const tomador: WideString; 
                       const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString;
begin
  Result := DefaultInterface.ideGTVe(cUF, cCT, CFOP, natOp, mod_, serie, nCT, dhEmi, tpImp, tpEmis, 
                                     cDV, tpAmb, tpCTe, verProc, cMunEnv, xMunEnv, UFEnv, modal, 
                                     tpServ, indIEToma, dhSaidaOrig, dhChegadaDest, tomador, 
                                     dhCont_Opc, xJust_Opc);
end;

function TUtil.tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString; 
                           const IE_Opc: WideString; const xNome: WideString; 
                           const xFant_Opc: WideString; const fone_Opc: WideString; 
                           const xLgr: WideString; const nro: WideString; 
                           const xCpl_Opc: WideString; const xBairro: WideString; 
                           const cMun: WideString; const xMun: WideString; 
                           const CEP_Opc: WideString; const UF: WideString; 
                           const cPais_Opc: WideString; const xPais_Opc: WideString; 
                           const email_Opc: WideString): WideString;
begin
  Result := DefaultInterface.tomadorGTVe(toma, CNPJ, CPF, IE_Opc, xNome, xFant_Opc, fone_Opc, xLgr, 
                                         nro, xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, 
                                         cPais_Opc, xPais_Opc, email_Opc);
end;

function TUtil.origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                      const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                      const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString;
begin
  Result := DefaultInterface.origem(xLgr, nro, xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, fone_Opc);
end;

function TUtil.destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString; 
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString; 
                       const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString;
begin
  Result := DefaultInterface.destino(xLgr, nro, xCpl_Opc, xBairro, cMun, xMun, CEP_Opc, UF, fone_Opc);
end;

function TUtil.detGTV(const infEspecie: WideString; const qCarga: WideString; 
                      const infVeiculo: WideString): WideString;
begin
  Result := DefaultInterface.detGTV(infEspecie, qCarga, infVeiculo);
end;

function TUtil.infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString; 
                            const tpNumerario: WideString; const xMoedaEstr: WideString): WideString;
begin
  Result := DefaultInterface.infEspecie_2(tpEspecie, vEspecie, tpNumerario, xMoedaEstr);
end;

function TUtil.infVeiculo(const placa: WideString; const UF_Opc: WideString; 
                          const RNTRC_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infVeiculo(placa, UF_Opc, RNTRC_Opc);
end;

function TUtil.infDocRefChBPe(const chBPe: WideString): WideString;
begin
  Result := DefaultInterface.infDocRefChBPe(chBPe);
end;

function TUtil.comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString;
begin
  Result := DefaultInterface.comp(tpComp, vComp, xComp_Opc);
end;

function TUtil.infGTVe(const chCte: WideString; const comp: WideString): WideString;
begin
  Result := DefaultInterface.infGTVe(chCte, comp);
end;

function TUtil.infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString; 
                                    const seg_Opc: WideString; const infModal_Opc: WideString; 
                                    const infCteSub_Opc: WideString; 
                                    const refCTeCanc_Opc: WideString; const cobr_Opc: WideString; 
                                    const infGTVe_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCTeOSNormNT202002(infServico, infDocRef_Opc, seg_Opc, infModal_Opc, 
                                                  infCteSub_Opc, refCTeCanc_Opc, cobr_Opc, 
                                                  infGTVe_Opc);
end;

function TUtil.emitenteCRT(const CNPJ: WideString; const IE: WideString; 
                           const IEST_Opc: WideString; const xNome: WideString; 
                           const xFant_Opc: WideString; const xLgr: WideString; 
                           const nro: WideString; const xCpl_Opc: WideString; 
                           const xBairro: WideString; const cMun: WideString; 
                           const xMun: WideString; const CEP_Opc: WideString; const UF: WideString; 
                           const fone_Opc: WideString; const CRT_Opc: WideString): WideString;
begin
  Result := DefaultInterface.emitenteCRT(CNPJ, IE, IEST_Opc, xNome, xFant_Opc, xLgr, nro, xCpl_Opc, 
                                         xBairro, cMun, xMun, CEP_Opc, UF, fone_Opc, CRT_Opc);
end;

function TUtil.EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                       const nomeCertificado: WideString; const Versao: WideString; 
                                       out msgDados: WideString; out msgRetWS: WideString; 
                                       out cStat: Integer; out msgResultado: WideString; 
                                       const chaveCTe: WideString; const CNPJTomador: WideString; 
                                       const nProtEvPrestDes: WideString; 
                                       const dhEvento: WideString; out nProtocolo: WideString; 
                                       out dProtocolo: WideString; const proxy: WideString; 
                                       const usuario: WideString; const senha: WideString; 
                                       const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCancPrestDesacordo(siglaWS, tipoAmbiente, nomeCertificado, 
                                                     Versao, msgDados, msgRetWS, cStat, 
                                                     msgResultado, chaveCTe, CNPJTomador, 
                                                     nProtEvPrestDes, dhEvento, nProtocolo, 
                                                     dProtocolo, proxy, usuario, senha, licenca);
end;

function TUtil.infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString;
begin
  Result := DefaultInterface.infCteSub(chCte, indAlteraToma_Opc);
end;

function TUtil.EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; nroIECTe: Integer; 
                          const chaveCTe: WideString; const nProtocoloCTe: WideString; 
                          const dhTentativaEntrega: WideString; nroTentativa: Integer; 
                          tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double; 
                          longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString; 
                          const dhHashTentativaEntrega_Opc: WideString; 
                          const XMLInfEntrega: WideString; const dhEvento: WideString; 
                          out nProtocolo: WideString; out dProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaIECTe(siglaWS, tipoAmbiente, nomeCertificado, Versao, msgDados, 
                                        msgRetWS, cStat, msgResultado, nroIECTe, chaveCTe, 
                                        nProtocoloCTe, dhTentativaEntrega, nroTentativa, tpMotivo, 
                                        xJustMotivo, latitude_Opc, longitude_Opc, 
                                        hashTentativaEntrega_Opc, dhHashTentativaEntrega_Opc, 
                                        XMLInfEntrega, dhEvento, nProtocolo, dProtocolo, proxy, 
                                        usuario, senha, licenca);
end;

function TUtil.EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer; 
                              const nomeCertificado: WideString; const Versao: WideString; 
                              out msgDados: WideString; out msgRetWS: WideString; 
                              out cStat: Integer; out msgResultado: WideString; 
                              nroCancIECTe: Integer; const chaveCTe: WideString; 
                              const nProt: WideString; const nProtIE: WideString; 
                              const dhEvento: WideString; out nProtocolo: WideString; 
                              out dProtocolo: WideString; const proxy: WideString; 
                              const usuario: WideString; const senha: WideString; 
                              const licenca: WideString): WideString;
begin
  Result := DefaultInterface.EnviaCancIECTe(siglaWS, tipoAmbiente, nomeCertificado, Versao, 
                                            msgDados, msgRetWS, cStat, msgResultado, nroCancIECTe, 
                                            chaveCTe, nProt, nProtIE, dhEvento, nProtocolo, 
                                            dProtocolo, proxy, usuario, senha, licenca);
end;

class function CoQREncoderTables.Create: _QREncoderTables;
begin
  Result := CreateComObject(CLASS_QREncoderTables) as _QREncoderTables;
end;

class function CoQREncoderTables.CreateRemote(const MachineName: string): _QREncoderTables;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QREncoderTables) as _QREncoderTables;
end;

procedure TQREncoderTables.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{70CAA16B-AB1E-3C36-BD2A-9C55AE7C4C4E}';
    IntfIID:   '{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQREncoderTables.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _QREncoderTables;
  end;
end;

procedure TQREncoderTables.ConnectTo(svrIntf: _QREncoderTables);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQREncoderTables.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQREncoderTables.GetDefaultInterface: _QREncoderTables;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQREncoderTables.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TQREncoderTables.Destroy;
begin
  inherited Destroy;
end;

class function CoQREncoder.Create: _QREncoder;
begin
  Result := CreateComObject(CLASS_QREncoder) as _QREncoder;
end;

class function CoQREncoder.CreateRemote(const MachineName: string): _QREncoder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QREncoder) as _QREncoder;
end;

procedure TQREncoder.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CF26E423-0D61-3B8C-9372-5026925FAA98}';
    IntfIID:   '{A1447CA0-E1BC-3250-9EA3-1A8649418D87}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQREncoder.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _QREncoder;
  end;
end;

procedure TQREncoder.ConnectTo(svrIntf: _QREncoder);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQREncoder.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQREncoder.GetDefaultInterface: _QREncoder;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQREncoder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TQREncoder.Destroy;
begin
  inherited Destroy;
end;

class function CoQRCodeEncoder.Create: _QRCodeEncoder;
begin
  Result := CreateComObject(CLASS_QRCodeEncoder) as _QRCodeEncoder;
end;

class function CoQRCodeEncoder.CreateRemote(const MachineName: string): _QRCodeEncoder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QRCodeEncoder) as _QRCodeEncoder;
end;

procedure TQRCodeEncoder.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FB2F367B-9850-3AF6-85F1-29A94E1AEC9E}';
    IntfIID:   '{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQRCodeEncoder.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _QRCodeEncoder;
  end;
end;

procedure TQRCodeEncoder.ConnectTo(svrIntf: _QRCodeEncoder);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQRCodeEncoder.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQRCodeEncoder.GetDefaultInterface: _QRCodeEncoder;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQRCodeEncoder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TQRCodeEncoder.Destroy;
begin
  inherited Destroy;
end;

class function CoCteStatusServico.Create: _CteStatusServico;
begin
  Result := CreateComObject(CLASS_CteStatusServico) as _CteStatusServico;
end;

class function CoCteStatusServico.CreateRemote(const MachineName: string): _CteStatusServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteStatusServico) as _CteStatusServico;
end;

procedure TCteStatusServico.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{39006516-82F9-3F3A-A7CE-6D9A1A1FDE2F}';
    IntfIID:   '{6A952BD0-43A0-3A50-9619-F16301F2E1FA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteStatusServico.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteStatusServico;
  end;
end;

procedure TCteStatusServico.ConnectTo(svrIntf: _CteStatusServico);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteStatusServico.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteStatusServico.GetDefaultInterface: _CteStatusServico;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteStatusServico.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteStatusServico.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteStatusServicoCT_cteCabecMsg.Create: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg) as _CTe_Util_cteStatusServicoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteStatusServicoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteStatusServicoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg) as _CTe_Util_cteStatusServicoCT_cteCabecMsg;
end;

procedure TCTe_Util_cteStatusServicoCT_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0C70969E-A347-3E42-914E-F8164C31757C}';
    IntfIID:   '{847DEFCB-3AC3-399C-BD03-504C0F141220}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteStatusServicoCT_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteStatusServicoCT_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteStatusServicoCT_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteStatusServicoCT_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteStatusServicoCT_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteStatusServicoCT_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteStatusServicoCT_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteStatusServicoCTCompletedEventHandler.Create: _cteStatusServicoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteStatusServicoCTCompletedEventHandler) as _cteStatusServicoCTCompletedEventHandler;
end;

class function CocteStatusServicoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteStatusServicoCTCompletedEventHandler) as _cteStatusServicoCTCompletedEventHandler;
end;

procedure TcteStatusServicoCTCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1ADC8333-E4EB-363F-9BC7-9A4C9F3B7D8F}';
    IntfIID:   '{59D057C1-370C-3F25-B217-7A84DB8E85DB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteStatusServicoCTCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteStatusServicoCTCompletedEventHandler;
  end;
end;

procedure TcteStatusServicoCTCompletedEventHandler.ConnectTo(svrIntf: _cteStatusServicoCTCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteStatusServicoCTCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteStatusServicoCTCompletedEventHandler.GetDefaultInterface: _cteStatusServicoCTCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteStatusServicoCTCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteStatusServicoCTCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteStatusServicoCTCompletedEventArgs.Create: _cteStatusServicoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteStatusServicoCTCompletedEventArgs) as _cteStatusServicoCTCompletedEventArgs;
end;

class function CocteStatusServicoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteStatusServicoCTCompletedEventArgs) as _cteStatusServicoCTCompletedEventArgs;
end;

procedure TcteStatusServicoCTCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1F403818-E8EF-3A07-A8C3-34D831FF4D71}';
    IntfIID:   '{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteStatusServicoCTCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteStatusServicoCTCompletedEventArgs;
  end;
end;

procedure TcteStatusServicoCTCompletedEventArgs.ConnectTo(svrIntf: _cteStatusServicoCTCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteStatusServicoCTCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteStatusServicoCTCompletedEventArgs.GetDefaultInterface: _cteStatusServicoCTCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteStatusServicoCTCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteStatusServicoCTCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteRetRecepcao.Create: _CteRetRecepcao;
begin
  Result := CreateComObject(CLASS_CteRetRecepcao) as _CteRetRecepcao;
end;

class function CoCteRetRecepcao.CreateRemote(const MachineName: string): _CteRetRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRetRecepcao) as _CteRetRecepcao;
end;

procedure TCteRetRecepcao.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{68A52E5F-F036-3ACE-A994-5BF14BD8A1FD}';
    IntfIID:   '{65507007-2035-30A1-BFE8-F631A0E220F2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteRetRecepcao.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteRetRecepcao;
  end;
end;

procedure TCteRetRecepcao.ConnectTo(svrIntf: _CteRetRecepcao);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteRetRecepcao.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteRetRecepcao.GetDefaultInterface: _CteRetRecepcao;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteRetRecepcao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteRetRecepcao.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg.Create: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
end;

class function CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
end;

procedure TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{214C5E1B-0843-3C00-AE6A-64CD1D48751C}';
    IntfIID:   '{BAB213D3-5D20-3233-A7E8-C39F8180FED5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteRetRecepcaoLote_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteRetRecepcaoCompletedEventHandler.Create: _cteRetRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRetRecepcaoCompletedEventHandler) as _cteRetRecepcaoCompletedEventHandler;
end;

class function CocteRetRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRetRecepcaoCompletedEventHandler) as _cteRetRecepcaoCompletedEventHandler;
end;

procedure TcteRetRecepcaoCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{238914A5-1AEF-3052-99FD-00D1A87AD6E3}';
    IntfIID:   '{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRetRecepcaoCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRetRecepcaoCompletedEventHandler;
  end;
end;

procedure TcteRetRecepcaoCompletedEventHandler.ConnectTo(svrIntf: _cteRetRecepcaoCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRetRecepcaoCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRetRecepcaoCompletedEventHandler.GetDefaultInterface: _cteRetRecepcaoCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRetRecepcaoCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRetRecepcaoCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRetRecepcaoCompletedEventArgs.Create: _cteRetRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRetRecepcaoCompletedEventArgs) as _cteRetRecepcaoCompletedEventArgs;
end;

class function CocteRetRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRetRecepcaoCompletedEventArgs) as _cteRetRecepcaoCompletedEventArgs;
end;

procedure TcteRetRecepcaoCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FDB5EB17-E9DF-35F7-B45A-6ED3F0470462}';
    IntfIID:   '{858F6CC8-BC36-356A-AF92-04A9F957D769}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRetRecepcaoCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRetRecepcaoCompletedEventArgs;
  end;
end;

procedure TcteRetRecepcaoCompletedEventArgs.ConnectTo(svrIntf: _cteRetRecepcaoCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRetRecepcaoCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRetRecepcaoCompletedEventArgs.GetDefaultInterface: _cteRetRecepcaoCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRetRecepcaoCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRetRecepcaoCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteRecepcaoSinc.Create: _CteRecepcaoSinc;
begin
  Result := CreateComObject(CLASS_CteRecepcaoSinc) as _CteRecepcaoSinc;
end;

class function CoCteRecepcaoSinc.CreateRemote(const MachineName: string): _CteRecepcaoSinc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoSinc) as _CteRecepcaoSinc;
end;

procedure TCteRecepcaoSinc.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2D8A4A53-C494-3FD5-81E7-0EFE3E230042}';
    IntfIID:   '{A2E51C1A-034A-3847-8E28-8C8A20A16A95}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteRecepcaoSinc.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteRecepcaoSinc;
  end;
end;

procedure TCteRecepcaoSinc.ConnectTo(svrIntf: _CteRecepcaoSinc);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteRecepcaoSinc.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteRecepcaoSinc.GetDefaultInterface: _CteRecepcaoSinc;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteRecepcaoSinc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteRecepcaoSinc.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoSincCompletedEventHandler.Create: _cteRecepcaoSincCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoSincCompletedEventHandler) as _cteRecepcaoSincCompletedEventHandler;
end;

class function CocteRecepcaoSincCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoSincCompletedEventHandler) as _cteRecepcaoSincCompletedEventHandler;
end;

procedure TcteRecepcaoSincCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{06B06180-C9BF-31A5-9504-2E368960F774}';
    IntfIID:   '{4CF0878D-C2C2-30BC-B82F-45684EA895C7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoSincCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoSincCompletedEventHandler;
  end;
end;

procedure TcteRecepcaoSincCompletedEventHandler.ConnectTo(svrIntf: _cteRecepcaoSincCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoSincCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoSincCompletedEventHandler.GetDefaultInterface: _cteRecepcaoSincCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoSincCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoSincCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoSincCompletedEventArgs.Create: _cteRecepcaoSincCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoSincCompletedEventArgs) as _cteRecepcaoSincCompletedEventArgs;
end;

class function CocteRecepcaoSincCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoSincCompletedEventArgs) as _cteRecepcaoSincCompletedEventArgs;
end;

procedure TcteRecepcaoSincCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AB043F21-A37A-347C-9740-58CAF868311B}';
    IntfIID:   '{08AC3581-4CCD-3730-BA72-C61E1D7C8681}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoSincCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoSincCompletedEventArgs;
  end;
end;

procedure TcteRecepcaoSincCompletedEventArgs.ConnectTo(svrIntf: _cteRecepcaoSincCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoSincCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoSincCompletedEventArgs.GetDefaultInterface: _cteRecepcaoSincCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoSincCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoSincCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteRecepcaoOS.Create: _CteRecepcaoOS;
begin
  Result := CreateComObject(CLASS_CteRecepcaoOS) as _CteRecepcaoOS;
end;

class function CoCteRecepcaoOS.CreateRemote(const MachineName: string): _CteRecepcaoOS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoOS) as _CteRecepcaoOS;
end;

procedure TCteRecepcaoOS.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A27B92AF-5393-35D6-8C7B-1120F6C3388D}';
    IntfIID:   '{2F0A7796-6E0E-364B-B819-BCB868CD8269}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteRecepcaoOS.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteRecepcaoOS;
  end;
end;

procedure TCteRecepcaoOS.ConnectTo(svrIntf: _CteRecepcaoOS);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteRecepcaoOS.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteRecepcaoOS.GetDefaultInterface: _CteRecepcaoOS;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteRecepcaoOS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteRecepcaoOS.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteRecepcaoOS_cteCabecMsg.Create: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg) as _CTe_Util_cteRecepcaoOS_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoOS_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoOS_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg) as _CTe_Util_cteRecepcaoOS_cteCabecMsg;
end;

procedure TCTe_Util_cteRecepcaoOS_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E8C9A24E-6C24-30D2-A996-36ABA28A58E3}';
    IntfIID:   '{63A1F467-E5AA-3EF5-B81B-47D93720AACF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteRecepcaoOS_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteRecepcaoOS_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteRecepcaoOS_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteRecepcaoOS_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteRecepcaoOS_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteRecepcaoOS_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteRecepcaoOS_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoOSCompletedEventHandler.Create: _cteRecepcaoOSCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoOSCompletedEventHandler) as _cteRecepcaoOSCompletedEventHandler;
end;

class function CocteRecepcaoOSCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoOSCompletedEventHandler) as _cteRecepcaoOSCompletedEventHandler;
end;

procedure TcteRecepcaoOSCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2CA735CB-8F56-3090-B7E4-74E28142F08D}';
    IntfIID:   '{59EAF3B4-8EF2-3756-A22E-455047913FD6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoOSCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoOSCompletedEventHandler;
  end;
end;

procedure TcteRecepcaoOSCompletedEventHandler.ConnectTo(svrIntf: _cteRecepcaoOSCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoOSCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoOSCompletedEventHandler.GetDefaultInterface: _cteRecepcaoOSCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoOSCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoOSCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoOSCompletedEventArgs.Create: _cteRecepcaoOSCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoOSCompletedEventArgs) as _cteRecepcaoOSCompletedEventArgs;
end;

class function CocteRecepcaoOSCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoOSCompletedEventArgs) as _cteRecepcaoOSCompletedEventArgs;
end;

procedure TcteRecepcaoOSCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{628A270E-F7AE-36B0-8A8E-14599F9B9329}';
    IntfIID:   '{11EADA4E-50B0-3414-8264-C36B94087502}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoOSCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoOSCompletedEventArgs;
  end;
end;

procedure TcteRecepcaoOSCompletedEventArgs.ConnectTo(svrIntf: _cteRecepcaoOSCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoOSCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoOSCompletedEventArgs.GetDefaultInterface: _cteRecepcaoOSCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoOSCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoOSCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteRecepcao.Create: _CteRecepcao;
begin
  Result := CreateComObject(CLASS_CteRecepcao) as _CteRecepcao;
end;

class function CoCteRecepcao.CreateRemote(const MachineName: string): _CteRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcao) as _CteRecepcao;
end;

procedure TCteRecepcao.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EFE0C4A8-652E-3CE1-9423-5089AB87D114}';
    IntfIID:   '{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteRecepcao.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteRecepcao;
  end;
end;

procedure TCteRecepcao.ConnectTo(svrIntf: _CteRecepcao);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteRecepcao.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteRecepcao.GetDefaultInterface: _CteRecepcao;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteRecepcao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteRecepcao.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteRecepcaoLote_cteCabecMsg.Create: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRecepcaoLote_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoLote_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoLote_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRecepcaoLote_cteCabecMsg;
end;

procedure TCTe_Util_cteRecepcaoLote_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5B93730D-E59D-3801-BE58-BE49ED6DAC75}';
    IntfIID:   '{6DB8CE00-960E-334C-A60C-2E928442E3FD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteRecepcaoLote_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteRecepcaoLote_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteRecepcaoLote_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteRecepcaoLote_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteRecepcaoLote_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteRecepcaoLote_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteRecepcaoLote_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoLoteCompletedEventHandler.Create: _cteRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoLoteCompletedEventHandler) as _cteRecepcaoLoteCompletedEventHandler;
end;

class function CocteRecepcaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoLoteCompletedEventHandler) as _cteRecepcaoLoteCompletedEventHandler;
end;

procedure TcteRecepcaoLoteCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{18348A14-BA6F-31B3-A721-A489436657D5}';
    IntfIID:   '{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoLoteCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoLoteCompletedEventHandler;
  end;
end;

procedure TcteRecepcaoLoteCompletedEventHandler.ConnectTo(svrIntf: _cteRecepcaoLoteCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoLoteCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoLoteCompletedEventHandler.GetDefaultInterface: _cteRecepcaoLoteCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoLoteCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoLoteCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoLoteCompletedEventArgs.Create: _cteRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoLoteCompletedEventArgs) as _cteRecepcaoLoteCompletedEventArgs;
end;

class function CocteRecepcaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoLoteCompletedEventArgs) as _cteRecepcaoLoteCompletedEventArgs;
end;

procedure TcteRecepcaoLoteCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{586773A8-2D30-3B63-9C7E-1286864AB876}';
    IntfIID:   '{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoLoteCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoLoteCompletedEventArgs;
  end;
end;

procedure TcteRecepcaoLoteCompletedEventArgs.ConnectTo(svrIntf: _cteRecepcaoLoteCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoLoteCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoLoteCompletedEventArgs.GetDefaultInterface: _cteRecepcaoLoteCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoLoteCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoLoteCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCTeRecepcaoGTVe.Create: _CTeRecepcaoGTVe;
begin
  Result := CreateComObject(CLASS_CTeRecepcaoGTVe) as _CTeRecepcaoGTVe;
end;

class function CoCTeRecepcaoGTVe.CreateRemote(const MachineName: string): _CTeRecepcaoGTVe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTeRecepcaoGTVe) as _CTeRecepcaoGTVe;
end;

procedure TCTeRecepcaoGTVe.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6418C51A-C03C-3A5C-801F-9036D650FF76}';
    IntfIID:   '{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTeRecepcaoGTVe.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTeRecepcaoGTVe;
  end;
end;

procedure TCTeRecepcaoGTVe.ConnectTo(svrIntf: _CTeRecepcaoGTVe);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTeRecepcaoGTVe.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTeRecepcaoGTVe.GetDefaultInterface: _CTeRecepcaoGTVe;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTeRecepcaoGTVe.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTeRecepcaoGTVe.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoGTVeCompletedEventHandler.Create: _cteRecepcaoGTVeCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoGTVeCompletedEventHandler) as _cteRecepcaoGTVeCompletedEventHandler;
end;

class function CocteRecepcaoGTVeCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoGTVeCompletedEventHandler) as _cteRecepcaoGTVeCompletedEventHandler;
end;

procedure TcteRecepcaoGTVeCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5A5918B0-F894-3C0A-AE82-E2F61C7BD7A5}';
    IntfIID:   '{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoGTVeCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoGTVeCompletedEventHandler;
  end;
end;

procedure TcteRecepcaoGTVeCompletedEventHandler.ConnectTo(svrIntf: _cteRecepcaoGTVeCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoGTVeCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoGTVeCompletedEventHandler.GetDefaultInterface: _cteRecepcaoGTVeCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoGTVeCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoGTVeCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoGTVeCompletedEventArgs.Create: _cteRecepcaoGTVeCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoGTVeCompletedEventArgs) as _cteRecepcaoGTVeCompletedEventArgs;
end;

class function CocteRecepcaoGTVeCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoGTVeCompletedEventArgs) as _cteRecepcaoGTVeCompletedEventArgs;
end;

procedure TcteRecepcaoGTVeCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{06E63438-0D83-33CB-8FCC-7FB052788565}';
    IntfIID:   '{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoGTVeCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoGTVeCompletedEventArgs;
  end;
end;

procedure TcteRecepcaoGTVeCompletedEventArgs.ConnectTo(svrIntf: _cteRecepcaoGTVeCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoGTVeCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoGTVeCompletedEventArgs.GetDefaultInterface: _cteRecepcaoGTVeCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoGTVeCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoGTVeCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteRecepcaoEvento.Create: _CteRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

class function CoCteRecepcaoEvento.CreateRemote(const MachineName: string): _CteRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

procedure TCteRecepcaoEvento.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3BEB4E34-E91B-3F0C-BF8B-9F7A7CDC1B26}';
    IntfIID:   '{A7D94986-710B-362A-9265-88D9EEF55BD3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteRecepcaoEvento.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteRecepcaoEvento;
  end;
end;

procedure TCteRecepcaoEvento.ConnectTo(svrIntf: _CteRecepcaoEvento);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteRecepcaoEvento.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteRecepcaoEvento.GetDefaultInterface: _CteRecepcaoEvento;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteRecepcaoEvento.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteRecepcaoEvento.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteRecepcaoEvento_cteCabecMsg.Create: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg) as _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoEvento_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg) as _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
end;

procedure TCTe_Util_cteRecepcaoEvento_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{98DB2190-12EB-3D2E-B987-CAADB0A1F362}';
    IntfIID:   '{38DFE93D-4280-3B6C-B097-9CA7E00C5257}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteRecepcaoEvento_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteRecepcaoEvento_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteRecepcaoEvento_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteRecepcaoEvento_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteRecepcaoEvento_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteRecepcaoEvento_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteRecepcaoEvento_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoEventoCompletedEventHandler.Create: _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

class function CocteRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

procedure TcteRecepcaoEventoCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A57977EF-00DB-3EAE-867B-35045A1D47B0}';
    IntfIID:   '{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoEventoCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoEventoCompletedEventHandler;
  end;
end;

procedure TcteRecepcaoEventoCompletedEventHandler.ConnectTo(svrIntf: _cteRecepcaoEventoCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoEventoCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoEventoCompletedEventHandler.GetDefaultInterface: _cteRecepcaoEventoCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoEventoCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoEventoCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteRecepcaoEventoCompletedEventArgs.Create: _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

class function CocteRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

procedure TcteRecepcaoEventoCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{187653E4-189A-3956-8924-BA48EAACCDE1}';
    IntfIID:   '{93575C24-56C5-38FD-B97C-4AB177BBA901}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteRecepcaoEventoCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteRecepcaoEventoCompletedEventArgs;
  end;
end;

procedure TcteRecepcaoEventoCompletedEventArgs.ConnectTo(svrIntf: _cteRecepcaoEventoCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteRecepcaoEventoCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteRecepcaoEventoCompletedEventArgs.GetDefaultInterface: _cteRecepcaoEventoCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteRecepcaoEventoCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteRecepcaoEventoCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteInutilizacao.Create: _CteInutilizacao;
begin
  Result := CreateComObject(CLASS_CteInutilizacao) as _CteInutilizacao;
end;

class function CoCteInutilizacao.CreateRemote(const MachineName: string): _CteInutilizacao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteInutilizacao) as _CteInutilizacao;
end;

procedure TCteInutilizacao.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C5AB0F1E-3AD1-375F-B06F-B8AF3AD1F75C}';
    IntfIID:   '{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteInutilizacao.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteInutilizacao;
  end;
end;

procedure TCteInutilizacao.ConnectTo(svrIntf: _CteInutilizacao);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteInutilizacao.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteInutilizacao.GetDefaultInterface: _CteInutilizacao;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteInutilizacao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteInutilizacao.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteInutilizacaoCT_cteCabecMsg.Create: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg) as _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteInutilizacaoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg) as _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
end;

procedure TCTe_Util_cteInutilizacaoCT_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EBA509BE-BE14-3D62-8F6E-AF173E6E79C5}';
    IntfIID:   '{4E1F52E5-5867-3780-A112-9D571FC5DC93}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteInutilizacaoCT_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteInutilizacaoCT_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteInutilizacaoCT_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteInutilizacaoCT_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteInutilizacaoCT_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteInutilizacaoCT_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteInutilizacaoCT_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteInutilizacaoCTCompletedEventHandler.Create: _cteInutilizacaoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteInutilizacaoCTCompletedEventHandler) as _cteInutilizacaoCTCompletedEventHandler;
end;

class function CocteInutilizacaoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteInutilizacaoCTCompletedEventHandler) as _cteInutilizacaoCTCompletedEventHandler;
end;

procedure TcteInutilizacaoCTCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2647FA6E-F762-3B3D-B27D-1F640F767A62}';
    IntfIID:   '{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteInutilizacaoCTCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteInutilizacaoCTCompletedEventHandler;
  end;
end;

procedure TcteInutilizacaoCTCompletedEventHandler.ConnectTo(svrIntf: _cteInutilizacaoCTCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteInutilizacaoCTCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteInutilizacaoCTCompletedEventHandler.GetDefaultInterface: _cteInutilizacaoCTCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteInutilizacaoCTCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteInutilizacaoCTCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteInutilizacaoCTCompletedEventArgs.Create: _cteInutilizacaoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteInutilizacaoCTCompletedEventArgs) as _cteInutilizacaoCTCompletedEventArgs;
end;

class function CocteInutilizacaoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteInutilizacaoCTCompletedEventArgs) as _cteInutilizacaoCTCompletedEventArgs;
end;

procedure TcteInutilizacaoCTCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{150C1D86-BE6E-3733-AA9B-84B1ECEFA7B5}';
    IntfIID:   '{3247FA06-2826-3461-A438-45216B23B312}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteInutilizacaoCTCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteInutilizacaoCTCompletedEventArgs;
  end;
end;

procedure TcteInutilizacaoCTCompletedEventArgs.ConnectTo(svrIntf: _cteInutilizacaoCTCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteInutilizacaoCTCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteInutilizacaoCTCompletedEventArgs.GetDefaultInterface: _cteInutilizacaoCTCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteInutilizacaoCTCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteInutilizacaoCTCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCTeDistribuicaoDFe.Create: _CTeDistribuicaoDFe;
begin
  Result := CreateComObject(CLASS_CTeDistribuicaoDFe) as _CTeDistribuicaoDFe;
end;

class function CoCTeDistribuicaoDFe.CreateRemote(const MachineName: string): _CTeDistribuicaoDFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTeDistribuicaoDFe) as _CTeDistribuicaoDFe;
end;

procedure TCTeDistribuicaoDFe.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{96FAB068-93AE-3030-AAF9-55D1744AC9C0}';
    IntfIID:   '{7184C361-EC57-31B9-B82A-09F0FD03E017}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTeDistribuicaoDFe.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTeDistribuicaoDFe;
  end;
end;

procedure TCTeDistribuicaoDFe.ConnectTo(svrIntf: _CTeDistribuicaoDFe);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTeDistribuicaoDFe.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTeDistribuicaoDFe.GetDefaultInterface: _CTeDistribuicaoDFe;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTeDistribuicaoDFe.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTeDistribuicaoDFe.Destroy;
begin
  inherited Destroy;
end;

class function CocteDistDFeInteresseCompletedEventHandler.Create: _cteDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteDistDFeInteresseCompletedEventHandler) as _cteDistDFeInteresseCompletedEventHandler;
end;

class function CocteDistDFeInteresseCompletedEventHandler.CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteDistDFeInteresseCompletedEventHandler) as _cteDistDFeInteresseCompletedEventHandler;
end;

procedure TcteDistDFeInteresseCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2FEB5F98-8640-3C43-BC28-0AB2BD88AA74}';
    IntfIID:   '{57C9BADF-EBD8-36CD-BC72-067086BACB78}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteDistDFeInteresseCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteDistDFeInteresseCompletedEventHandler;
  end;
end;

procedure TcteDistDFeInteresseCompletedEventHandler.ConnectTo(svrIntf: _cteDistDFeInteresseCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteDistDFeInteresseCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteDistDFeInteresseCompletedEventHandler.GetDefaultInterface: _cteDistDFeInteresseCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteDistDFeInteresseCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteDistDFeInteresseCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteDistDFeInteresseCompletedEventArgs.Create: _cteDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteDistDFeInteresseCompletedEventArgs) as _cteDistDFeInteresseCompletedEventArgs;
end;

class function CocteDistDFeInteresseCompletedEventArgs.CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteDistDFeInteresseCompletedEventArgs) as _cteDistDFeInteresseCompletedEventArgs;
end;

procedure TcteDistDFeInteresseCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{717D3DF0-0401-3D18-AD1D-9F348FC9079E}';
    IntfIID:   '{76DB3240-4D3D-3AC7-B1AD-997200D83830}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteDistDFeInteresseCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteDistDFeInteresseCompletedEventArgs;
  end;
end;

procedure TcteDistDFeInteresseCompletedEventArgs.ConnectTo(svrIntf: _cteDistDFeInteresseCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteDistDFeInteresseCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteDistDFeInteresseCompletedEventArgs.GetDefaultInterface: _cteDistDFeInteresseCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteDistDFeInteresseCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteDistDFeInteresseCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteConsulta.Create: _CteConsulta;
begin
  Result := CreateComObject(CLASS_CteConsulta) as _CteConsulta;
end;

class function CoCteConsulta.CreateRemote(const MachineName: string): _CteConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteConsulta) as _CteConsulta;
end;

procedure TCteConsulta.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6DC81889-EC33-389D-A456-7F153D6075DF}';
    IntfIID:   '{44357119-80F8-349D-8DF6-8C1F53DA92D2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteConsulta.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteConsulta;
  end;
end;

procedure TCteConsulta.ConnectTo(svrIntf: _CteConsulta);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteConsulta.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteConsulta.GetDefaultInterface: _CteConsulta;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteConsulta.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteConsulta.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteConsultaCT_cteCabecMsg.Create: _CTe_Util_cteConsultaCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteConsultaCT_cteCabecMsg) as _CTe_Util_cteConsultaCT_cteCabecMsg;
end;

class function CoCTe_Util_cteConsultaCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteConsultaCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteConsultaCT_cteCabecMsg) as _CTe_Util_cteConsultaCT_cteCabecMsg;
end;

procedure TCTe_Util_cteConsultaCT_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DEA31BE4-30A3-308B-838E-E7366B0DD209}';
    IntfIID:   '{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteConsultaCT_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteConsultaCT_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteConsultaCT_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteConsultaCT_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteConsultaCT_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteConsultaCT_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteConsultaCT_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteConsultaCT_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteConsultaCT_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteConsultaCTCompletedEventHandler.Create: _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

class function CocteConsultaCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

procedure TcteConsultaCTCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4042C91A-38FA-30CF-B870-20A1EC92B103}';
    IntfIID:   '{F5F0BB47-7B02-39EC-A9BD-E5486D594103}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteConsultaCTCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteConsultaCTCompletedEventHandler;
  end;
end;

procedure TcteConsultaCTCompletedEventHandler.ConnectTo(svrIntf: _cteConsultaCTCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteConsultaCTCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteConsultaCTCompletedEventHandler.GetDefaultInterface: _cteConsultaCTCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteConsultaCTCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteConsultaCTCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteConsultaCTCompletedEventArgs.Create: _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

class function CocteConsultaCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

procedure TcteConsultaCTCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EF09DFCD-E191-3E1D-9F24-994D093B74CC}';
    IntfIID:   '{632B4661-5E5D-3322-967D-508DC95484E1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteConsultaCTCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteConsultaCTCompletedEventArgs;
  end;
end;

procedure TcteConsultaCTCompletedEventArgs.ConnectTo(svrIntf: _cteConsultaCTCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteConsultaCTCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteConsultaCTCompletedEventArgs.GetDefaultInterface: _cteConsultaCTCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteConsultaCTCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteConsultaCTCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCteCancelamento.Create: _CteCancelamento;
begin
  Result := CreateComObject(CLASS_CteCancelamento) as _CteCancelamento;
end;

class function CoCteCancelamento.CreateRemote(const MachineName: string): _CteCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteCancelamento) as _CteCancelamento;
end;

procedure TCteCancelamento.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6A1E2592-842F-3106-99D0-0B7EDC050D15}';
    IntfIID:   '{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCteCancelamento.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CteCancelamento;
  end;
end;

procedure TCteCancelamento.ConnectTo(svrIntf: _CteCancelamento);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCteCancelamento.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCteCancelamento.GetDefaultInterface: _CteCancelamento;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCteCancelamento.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCteCancelamento.Destroy;
begin
  inherited Destroy;
end;

class function CoCTe_Util_cteCancelamentoCT_cteCabecMsg.Create: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg) as _CTe_Util_cteCancelamentoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteCancelamentoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteCancelamentoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg) as _CTe_Util_cteCancelamentoCT_cteCabecMsg;
end;

procedure TCTe_Util_cteCancelamentoCT_cteCabecMsg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7E857911-7D0E-3625-9DCE-90F7C629135F}';
    IntfIID:   '{0B27A478-3330-33B1-B3B9-796BEBDEB03E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTe_Util_cteCancelamentoCT_cteCabecMsg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  end;
end;

procedure TCTe_Util_cteCancelamentoCT_cteCabecMsg.ConnectTo(svrIntf: _CTe_Util_cteCancelamentoCT_cteCabecMsg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTe_Util_cteCancelamentoCT_cteCabecMsg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTe_Util_cteCancelamentoCT_cteCabecMsg.GetDefaultInterface: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTe_Util_cteCancelamentoCT_cteCabecMsg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCTe_Util_cteCancelamentoCT_cteCabecMsg.Destroy;
begin
  inherited Destroy;
end;

class function CocteCancelamentoCTCompletedEventHandler.Create: _cteCancelamentoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteCancelamentoCTCompletedEventHandler) as _cteCancelamentoCTCompletedEventHandler;
end;

class function CocteCancelamentoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteCancelamentoCTCompletedEventHandler) as _cteCancelamentoCTCompletedEventHandler;
end;

procedure TcteCancelamentoCTCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ECFEAAE1-BCD7-3E89-8953-272965BB668A}';
    IntfIID:   '{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteCancelamentoCTCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteCancelamentoCTCompletedEventHandler;
  end;
end;

procedure TcteCancelamentoCTCompletedEventHandler.ConnectTo(svrIntf: _cteCancelamentoCTCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteCancelamentoCTCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteCancelamentoCTCompletedEventHandler.GetDefaultInterface: _cteCancelamentoCTCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteCancelamentoCTCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteCancelamentoCTCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocteCancelamentoCTCompletedEventArgs.Create: _cteCancelamentoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteCancelamentoCTCompletedEventArgs) as _cteCancelamentoCTCompletedEventArgs;
end;

class function CocteCancelamentoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteCancelamentoCTCompletedEventArgs) as _cteCancelamentoCTCompletedEventArgs;
end;

procedure TcteCancelamentoCTCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B05B710B-17D8-3C28-ADA1-CB2E3EA54842}';
    IntfIID:   '{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcteCancelamentoCTCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cteCancelamentoCTCompletedEventArgs;
  end;
end;

procedure TcteCancelamentoCTCompletedEventArgs.ConnectTo(svrIntf: _cteCancelamentoCTCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcteCancelamentoCTCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcteCancelamentoCTCompletedEventArgs.GetDefaultInterface: _cteCancelamentoCTCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcteCancelamentoCTCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcteCancelamentoCTCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

class function CoCleCadastro.Create: _CleCadastro;
begin
  Result := CreateComObject(CLASS_CleCadastro) as _CleCadastro;
end;

class function CoCleCadastro.CreateRemote(const MachineName: string): _CleCadastro;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CleCadastro) as _CleCadastro;
end;

procedure TCleCadastro.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0B4384D1-CCB4-3098-B9D2-C0610F1C754C}';
    IntfIID:   '{DC271E4C-CD2B-34F4-97D4-35B28D211156}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCleCadastro.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _CleCadastro;
  end;
end;

procedure TCleCadastro.ConnectTo(svrIntf: _CleCadastro);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCleCadastro.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCleCadastro.GetDefaultInterface: _CleCadastro;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCleCadastro.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCleCadastro.Destroy;
begin
  inherited Destroy;
end;

class function CocleCadastroLote.Create: _cleCadastroLote;
begin
  Result := CreateComObject(CLASS_cleCadastroLote) as _cleCadastroLote;
end;

class function CocleCadastroLote.CreateRemote(const MachineName: string): _cleCadastroLote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLote) as _cleCadastroLote;
end;

procedure TcleCadastroLote.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6DB96952-FBCB-3BD2-80FF-76BA93B5E3A0}';
    IntfIID:   '{597DCBFC-3975-3E79-8EF2-8D2D397DD491}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcleCadastroLote.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cleCadastroLote;
  end;
end;

procedure TcleCadastroLote.ConnectTo(svrIntf: _cleCadastroLote);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcleCadastroLote.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcleCadastroLote.GetDefaultInterface: _cleCadastroLote;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcleCadastroLote.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcleCadastroLote.Destroy;
begin
  inherited Destroy;
end;

class function CocleCadastroLoteResponse.Create: _cleCadastroLoteResponse;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

class function CocleCadastroLoteResponse.CreateRemote(const MachineName: string): _cleCadastroLoteResponse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

procedure TcleCadastroLoteResponse.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C5247592-1ABF-3738-A9C4-B46F712A1951}';
    IntfIID:   '{5EDD54AD-6D4A-33FE-84DF-808131515507}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcleCadastroLoteResponse.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cleCadastroLoteResponse;
  end;
end;

procedure TcleCadastroLoteResponse.ConnectTo(svrIntf: _cleCadastroLoteResponse);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcleCadastroLoteResponse.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcleCadastroLoteResponse.GetDefaultInterface: _cleCadastroLoteResponse;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcleCadastroLoteResponse.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcleCadastroLoteResponse.Destroy;
begin
  inherited Destroy;
end;

class function CocleCadastroLoteCompletedEventHandler.Create: _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

class function CocleCadastroLoteCompletedEventHandler.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

procedure TcleCadastroLoteCompletedEventHandler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5A9AB422-FD0D-3A10-8DB2-067BCB58D9F5}';
    IntfIID:   '{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcleCadastroLoteCompletedEventHandler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cleCadastroLoteCompletedEventHandler;
  end;
end;

procedure TcleCadastroLoteCompletedEventHandler.ConnectTo(svrIntf: _cleCadastroLoteCompletedEventHandler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcleCadastroLoteCompletedEventHandler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcleCadastroLoteCompletedEventHandler.GetDefaultInterface: _cleCadastroLoteCompletedEventHandler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcleCadastroLoteCompletedEventHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcleCadastroLoteCompletedEventHandler.Destroy;
begin
  inherited Destroy;
end;

class function CocleCadastroLoteCompletedEventArgs.Create: _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

class function CocleCadastroLoteCompletedEventArgs.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

procedure TcleCadastroLoteCompletedEventArgs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FABFB68A-411F-375F-A4A9-879E1499B82E}';
    IntfIID:   '{4E8011FA-2284-3F29-97B8-0C439807FCDD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TcleCadastroLoteCompletedEventArgs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _cleCadastroLoteCompletedEventArgs;
  end;
end;

procedure TcleCadastroLoteCompletedEventArgs.ConnectTo(svrIntf: _cleCadastroLoteCompletedEventArgs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TcleCadastroLoteCompletedEventArgs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TcleCadastroLoteCompletedEventArgs.GetDefaultInterface: _cleCadastroLoteCompletedEventArgs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TcleCadastroLoteCompletedEventArgs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TcleCadastroLoteCompletedEventArgs.Destroy;
begin
  inherited Destroy;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TUtil, TQREncoderTables, TQREncoder, TQRCodeEncoder, 
    TCteStatusServico, TCTe_Util_cteStatusServicoCT_cteCabecMsg, TcteStatusServicoCTCompletedEventHandler, TcteStatusServicoCTCompletedEventArgs, TCteRetRecepcao, 
    TCTe_Util_cteRetRecepcaoLote_cteCabecMsg, TcteRetRecepcaoCompletedEventHandler, TcteRetRecepcaoCompletedEventArgs, TCteRecepcaoSinc, TcteRecepcaoSincCompletedEventHandler, 
    TcteRecepcaoSincCompletedEventArgs, TCteRecepcaoOS, TCTe_Util_cteRecepcaoOS_cteCabecMsg, TcteRecepcaoOSCompletedEventHandler, TcteRecepcaoOSCompletedEventArgs, 
    TCteRecepcao, TCTe_Util_cteRecepcaoLote_cteCabecMsg, TcteRecepcaoLoteCompletedEventHandler, TcteRecepcaoLoteCompletedEventArgs, TCTeRecepcaoGTVe, 
    TcteRecepcaoGTVeCompletedEventHandler, TcteRecepcaoGTVeCompletedEventArgs, TCteRecepcaoEvento, TCTe_Util_cteRecepcaoEvento_cteCabecMsg, TcteRecepcaoEventoCompletedEventHandler, 
    TcteRecepcaoEventoCompletedEventArgs, TCteInutilizacao, TCTe_Util_cteInutilizacaoCT_cteCabecMsg, TcteInutilizacaoCTCompletedEventHandler, TcteInutilizacaoCTCompletedEventArgs, 
    TCTeDistribuicaoDFe, TcteDistDFeInteresseCompletedEventHandler, TcteDistDFeInteresseCompletedEventArgs, TCteConsulta, TCTe_Util_cteConsultaCT_cteCabecMsg, 
    TcteConsultaCTCompletedEventHandler, TcteConsultaCTCompletedEventArgs, TCteCancelamento, TCTe_Util_cteCancelamentoCT_cteCabecMsg, TcteCancelamentoCTCompletedEventHandler, 
    TcteCancelamentoCTCompletedEventArgs, TCleCadastro, TcleCadastroLote, TcleCadastroLoteResponse, TcleCadastroLoteCompletedEventHandler, 
    TcleCadastroLoteCompletedEventArgs]);
end;

end.

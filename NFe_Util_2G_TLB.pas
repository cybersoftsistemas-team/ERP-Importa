unit NFe_Util_2G_TLB;
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
// File generated on 30/10/2026 12:32:30 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Projetos\ERP-Importa\FlexDocs\NFe_Util\2Gv5.04a\NFe_Util_2G.tlb (1)
// LIBID: {F4F37392-74D6-442E-9F97-BACD76397C8C}
// LCID: 0
// Helpfile: 
// HelpString: Biblioteca de utilidades da NF-e - 2G - vers�o 5.0.4a (5.0.4.1)
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificador300 changed to 'mod_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificador400 changed to 'mod_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificador202006 changed to 'mod_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificadorRTC changed to 'mod_'
//   Hint: Member 'IS' of 'NFe_Util_2G_Interface' changed to 'IS_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificadorRTCVFP changed to 'mod_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificadorRTCv130 changed to 'mod_'
//   Hint: Parameter 'mod' of NFe_Util_2G_Interface.identificadorRTCv140 changed to 'mod_'
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
  NFe_Util_2GMajorVersion = 5;
  NFe_Util_2GMinorVersion = 0;

  LIBID_NFe_Util_2G: TGUID = '{F4F37392-74D6-442E-9F97-BACD76397C8C}';

  IID_NFe_Util_2G_Interface: TGUID = '{99784343-9309-4F35-A1DE-03C7DA586D60}';
  DIID_NFe_Util_Events: TGUID = '{E60B694F-366A-4D55-A51A-6512D64DF3D2}';
  CLASS_Util: TGUID = '{0162CF2B-365D-4DDE-86F5-F6343110D1A6}';
  IID__SCERecepcaoRFB: TGUID = '{FD6C7892-52AE-38EE-B650-F59BD3D2D24A}';
  IID__NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg: TGUID = '{DFC00C13-A341-3B29-9E3D-00EE1EFCF23B}';
  IID__sceRecepcaoDPECCompletedEventHandler: TGUID = '{F86C6F91-55E8-3901-869E-FC5BDE3602A1}';
  IID__sceRecepcaoDPECCompletedEventArgs: TGUID = '{205C438F-71B9-3CC7-A584-469A82285046}';
  IID__SCEConsultaRFB: TGUID = '{D8BEA96A-94BB-30D0-A2A0-45826A6CF55F}';
  IID__NFe_Util_2G_sceConsultaDPEC_sceCabecMsg: TGUID = '{056E4A43-2CB8-3212-90BE-D0ADAB5C7996}';
  IID__sceConsultaDPECCompletedEventHandler: TGUID = '{D34923C2-D536-3756-9353-9041CF67FCDF}';
  IID__sceConsultaDPECCompletedEventArgs: TGUID = '{AA0C03C4-0238-3F7B-A452-E62BDF42F9CA}';
  IID__RecepcaoEvento: TGUID = '{C073B1BE-3AFD-3A36-8A70-E6F522DEDC19}';
  IID__NFe_Util_2G_RecepcaoEvento_nfeCabecMsg: TGUID = '{BF888721-18D5-3C87-8C31-C914F2E6DE67}';
  IID__NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler: TGUID = '{FFF02B13-950A-3BFF-AC4B-23D74ABFA634}';
  IID__NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs: TGUID = '{4216F38A-43B7-3F62-A945-6F6B242E43F9}';
  IID__NfeAutorizacao: TGUID = '{37B87D59-5242-3CEA-A6C2-E8FC801F05C7}';
  IID__NFe_Util_2G_nfeAutorizacao_nfeCabecMsg: TGUID = '{2A443D17-AC4D-39FA-A5B1-A38EFDF25D63}';
  IID__NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler: TGUID = '{2FF80289-5E97-3F62-B997-849F40B06339}';
  IID__NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs: TGUID = '{E8F19178-062C-365F-BEB4-F7E1CC81EC04}';
  IID__NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler: TGUID = '{5B6CCF69-7A72-3C1A-9F51-175D5F44E95A}';
  IID__NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs: TGUID = '{C6EA553D-2E1C-38F4-A1A9-C60A41170AB6}';
  IID__NfeStatusServico: TGUID = '{62691514-2665-38CD-8A63-AF0C8BE98579}';
  IID__NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler: TGUID = '{C5521595-CFD8-3542-A676-3C475AE6A68B}';
  IID__NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs: TGUID = '{F4AFEFDA-23F6-32CA-9A28-EC46F0F8CD9F}';
  IID__NfeStatusServico2: TGUID = '{035F023B-4175-317D-9122-0016EEB3E672}';
  IID__NFe_Util_2G_NfeStatusServico2_nfeCabecMsg: TGUID = '{6B4A35F9-18D4-3988-AE27-D1BF8901CB7F}';
  IID__nfeStatusServicoNF2CompletedEventHandler: TGUID = '{9618B41F-2613-31EC-93D6-68D3FFD06782}';
  IID__nfeStatusServicoNF2CompletedEventArgs: TGUID = '{21E68297-62F4-35AC-9606-4C017785907C}';
  IID__NfeRetRecepcao: TGUID = '{29C1714D-E041-3124-976C-10AADBDD15DB}';
  IID__nfeRetRecepcaoCompletedEventHandler: TGUID = '{5EE325D1-1D19-3AF5-83D1-9DA952D234D6}';
  IID__nfeRetRecepcaoCompletedEventArgs: TGUID = '{52638EF0-89F6-311D-9640-408815234E6D}';
  IID__NfeRetAutorizacao4: TGUID = '{4C79F101-A3CD-376E-BEA9-7C53F8C68661}';
  IID__NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler: TGUID = '{079D1A09-D8C7-3D06-A8D9-A154C80EC8EE}';
  IID__NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs: TGUID = '{71D9CA06-9DBA-34CD-AA77-3ABCD217193D}';
  IID__NfeRetRecepcao2: TGUID = '{AEABD164-AA45-318C-B800-6D5FA595B2F0}';
  IID__NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg: TGUID = '{76ED1DB5-F83C-36E7-9331-B0008F4BE085}';
  IID__nfeRetRecepcao2CompletedEventHandler: TGUID = '{69DC057F-8959-3CA1-A104-5683819A6829}';
  IID__nfeRetRecepcao2CompletedEventArgs: TGUID = '{53A5D7DF-B1D2-32FF-AEB9-3CC89F81055B}';
  IID__NfeRetAutorizacao: TGUID = '{74F18FC4-37E4-3FBA-90BF-6243C0543891}';
  IID__NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg: TGUID = '{5CFDFC31-3B2A-3962-9F2C-A68D5C76AF49}';
  IID__NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler: TGUID = '{746B546D-1D5F-31E1-BC46-BC9B872AB647}';
  IID__NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs: TGUID = '{48F98F3E-782F-3FB3-B138-9A12EA525D2D}';
  IID__NfeRecepcao: TGUID = '{DE538643-5E8D-3332-B9B9-904DAAC618D7}';
  IID__nfeRecepcaoLoteCompletedEventHandler: TGUID = '{F1D5B1D8-1419-3114-AA14-0F971991EC2B}';
  IID__nfeRecepcaoLoteCompletedEventArgs: TGUID = '{31C5B9C1-42B3-377D-8471-A5FF29B3C7CA}';
  IID__RecepcaoEvento4: TGUID = '{F4F5B4D3-481B-30D5-8EEA-C3AB9A7CDF58}';
  IID__NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler: TGUID = '{C1F6C8F0-E495-34FD-A4C8-5D68469DA6C1}';
  IID__NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs: TGUID = '{E37A39D1-924C-32BB-9AFC-5DE8F2B807D6}';
  IID__NfeAutorizacao4: TGUID = '{2C803B47-1F06-3066-825D-AF0AD6D766C7}';
  IID__NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler: TGUID = '{8E6348E8-97A6-3920-B2F3-2BB367C209EF}';
  IID__NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs: TGUID = '{685D7126-E14B-3CA2-9183-8E17B7592B66}';
  IID__NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler: TGUID = '{87D24EC0-C114-3AAB-BB7E-A9A1C95E24E1}';
  IID__NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs: TGUID = '{58AB6DF1-62DC-3A71-B916-8140B827F199}';
  IID__NfeRecepcao2: TGUID = '{D3C36D40-3C5B-347C-A021-71EE970E29B8}';
  IID__NFe_Util_2G_NFeRecepcao2_nfeCabecMsg: TGUID = '{6E1B37DC-096C-3AC9-9E86-87BEFAFFD0D1}';
  IID__nfeRecepcaoLote2CompletedEventHandler: TGUID = '{7327A3A5-DFD2-3C02-8D8D-F039C8B50C8B}';
  IID__nfeRecepcaoLote2CompletedEventArgs: TGUID = '{E239ACD2-F686-34DE-A7A9-76422F5C5ADD}';
  IID__NfeInutilizacao: TGUID = '{35517E9C-12EA-3111-A76E-E218DF6D935B}';
  IID__NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler: TGUID = '{942DD408-D3BC-3FBC-BEA1-678E60183CF1}';
  IID__NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs: TGUID = '{40048553-A84E-3881-8475-6C4559CC6A63}';
  IID__NfeInutilizacao4: TGUID = '{64CAD185-EF36-32AC-842A-9DBCF4BC25E0}';
  IID__NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler: TGUID = '{ECAFF543-D409-3609-9BE2-7F1A98EAB614}';
  IID__NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs: TGUID = '{A897C0AD-FF7C-3CE1-AA50-F54B436A20DF}';
  IID__NfeInutilizacao2: TGUID = '{3878A73C-3F08-38CA-8925-DC471E67E388}';
  IID__NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg: TGUID = '{60C0C3D6-0A6D-3744-99A5-FEC32FEF6FE8}';
  IID__nfeInutilizacaoNF2CompletedEventHandler: TGUID = '{6CC16DF9-D142-3334-B7A8-8DCEEE9A0D34}';
  IID__nfeInutilizacaoNF2CompletedEventArgs: TGUID = '{EA931493-D22B-322B-B53C-ECA07F22E259}';
  IID__NfeConsulta: TGUID = '{AD546630-2D62-31A7-B88C-8F24B3751AFB}';
  IID__NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler: TGUID = '{590B4993-8FA7-3753-8137-1AB99107BF66}';
  IID__NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs: TGUID = '{9880F2F5-7706-3B17-9BED-7A42256F2DF4}';
  IID__NfeConsultaDest: TGUID = '{7F20D4C6-938B-33D7-A4CF-82117BB0CBFF}';
  IID__NFe_Util_2G_nfeConsultaDest_nfeCabecMsg: TGUID = '{A72E499E-5C3C-375D-BA03-1BD21D247415}';
  IID__nfeConsultaNFDestCompletedEventHandler: TGUID = '{5D25EC27-0289-3F8F-8272-4DDA64900EC5}';
  IID__nfeConsultaNFDestCompletedEventArgs: TGUID = '{BA1F1EA0-DEE6-37B4-8275-C09596C02A5F}';
  IID__NfeConsulta2: TGUID = '{2C3E37E8-7C01-3D56-86F2-9A0805E612CD}';
  IID__NFe_Util_2G_NfeConsulta2_nfeCabecMsg: TGUID = '{17B323C3-4AD6-3BB4-97E7-4776AF6DD546}';
  IID__nfeConsultaNF2CompletedEventHandler: TGUID = '{67CA954D-142D-372A-9543-1F8E7555F6E8}';
  IID__nfeConsultaNF2CompletedEventArgs: TGUID = '{6041F2A3-BF4A-3454-99D1-A3D4F74ACBD6}';
  IID__NfeCancelamento: TGUID = '{35774BEA-D9A9-34CD-9F41-23B6ADA5C2D4}';
  IID__nfeCancelamentoNFCompletedEventHandler: TGUID = '{550C3653-89E8-3DB4-AFDC-EDBD1607CB8E}';
  IID__nfeCancelamentoNFCompletedEventArgs: TGUID = '{C3D2F062-A98E-3AF4-AD50-3B03C87D8C97}';
  IID__NfeCancelamento2: TGUID = '{C7B8E17E-9FA5-3388-B729-E0AB5A813F63}';
  IID__NFe_Util_2G_NfeCancelamento2_nfeCabecMsg: TGUID = '{962317F8-09A4-33C6-920B-76546E2381B5}';
  IID__nfeCancelamentoNF2CompletedEventHandler: TGUID = '{138D31DD-2D83-397B-86D8-0520828E013F}';
  IID__nfeCancelamentoNF2CompletedEventArgs: TGUID = '{5831B877-179D-3422-AA72-347E97E2A92B}';
  IID__NfeDownloadNF: TGUID = '{BD879522-006D-30A0-AA19-53D58AA627FF}';
  IID__NFe_Util_2G_nfeDownload_nfeCabecMsg: TGUID = '{383D9AD7-1F2A-3A27-B9D1-6AE6782185F1}';
  IID__nfeDownloadNFCompletedEventHandler: TGUID = '{95BEC22F-6CC7-3E42-A511-A33302CE1DA8}';
  IID__nfeDownloadNFCompletedEventArgs: TGUID = '{7EC61AA5-05E6-3F75-B843-DCA26F6AEA00}';
  IID__NFeDistribuicaoDFe: TGUID = '{F46AB983-1AF5-35C6-AB98-2ECEAC2FA2F3}';
  IID__nfeDistDFeInteresseCompletedEventHandler: TGUID = '{4A4FC33B-6727-3B30-98FF-60047B861054}';
  IID__nfeDistDFeInteresseCompletedEventArgs: TGUID = '{C16547EA-9661-3044-B4AA-580EC81F0296}';
  IID__NfeConsulta4: TGUID = '{49CDF06B-1EDE-3B09-B14C-3E3853626861}';
  IID__NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler: TGUID = '{85158FAA-94A3-3E46-922F-AB00B4448983}';
  IID__NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs: TGUID = '{1D15F3CA-81BF-39B4-9178-C2332065E840}';
  IID__NfeStatusServico4: TGUID = '{9492D1AB-08E1-38F0-9981-31E037A0D601}';
  IID__NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler: TGUID = '{FFF1BA27-573A-366E-8619-513EE99F1B2F}';
  IID__NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs: TGUID = '{CDC91139-F9A0-37B8-8ACD-29496CEEAC3B}';
  IID__RegistroSaida2: TGUID = '{C8753118-6E95-3F42-9B81-D2823078FA01}';
  IID__NFe_Util_2G_MGregSai_nfeCabecMsg: TGUID = '{C39C9FBF-C26C-32E9-8DFE-E3AA60A56B3D}';
  IID__registrarSaidaCompletedEventHandler: TGUID = '{D3F380DB-359F-3D64-A56E-E724CC391070}';
  IID__registrarSaidaCompletedEventArgs: TGUID = '{43E88C4C-6726-309E-A1ED-62F8602B61EB}';
  IID__CteConsulta: TGUID = '{A018CC78-2195-3555-B046-0BEC718D86A8}';
  IID__NFe_Util_2G_cteConsulta_cteCabecMsg: TGUID = '{C70DF4C6-CAF4-386F-B6B3-9DBDAAA83B5D}';
  IID__cteConsultaCTCompletedEventHandler: TGUID = '{2D24532D-4A49-3F52-9FB3-FF78DE3A7A1B}';
  IID__cteConsultaCTCompletedEventArgs: TGUID = '{0579DA1C-07CA-3F60-A2E2-4C63FBF6EC8B}';
  IID__NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro: TGUID = '{796A3C3E-690C-317A-98BF-FC5A9FFC1F7F}';
  IID__NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler: TGUID = '{FC400A4E-C6F6-3305-ADBA-C5E8C80FC080}';
  IID__NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs: TGUID = '{0D4968CD-6624-3D9F-9B62-39097D54B39A}';
  IID__CleCadastro: TGUID = '{A2187D45-233D-3D8A-A70B-B657F76FE06F}';
  IID__cleCadastroLote: TGUID = '{A847D17A-C837-3E30-9702-8B3A3995522F}';
  IID__cleCadastroLoteResponse: TGUID = '{595CB315-6950-3B98-8855-5E5437C0AECB}';
  IID__cleCadastroLoteCompletedEventHandler: TGUID = '{EACE8F27-A092-3FA7-84E9-DA224374E89D}';
  IID__cleCadastroLoteCompletedEventArgs: TGUID = '{BD089A63-4C72-37AC-8F39-6657340D593E}';
  IID__CancRegSaida2: TGUID = '{5A28E0E9-D96A-3A46-8BFC-2112F89F83DB}';
  IID__NFe_Util_2G_MGcancRegSai_nfeCabecMsg: TGUID = '{13B43FE5-EA13-3125-84AD-A4F10EB8A600}';
  IID__cancRegSaida2CompletedEventHandler: TGUID = '{68385246-9C22-3D3C-9045-0E8FC4032786}';
  IID__cancRegSaida2CompletedEventArgs: TGUID = '{EC8174C2-812E-35B1-9941-046E868B3F31}';
  IID__CteRecepcaoEvento: TGUID = '{2D8941F8-5ADF-3B18-A766-36FCE65670F3}';
  IID__NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg: TGUID = '{6D79BCC7-4A39-352B-960C-23F8B894A600}';
  IID__cteRecepcaoEventoCompletedEventHandler: TGUID = '{16574010-59FF-3DBB-9725-ED8497D687BC}';
  IID__cteRecepcaoEventoCompletedEventArgs: TGUID = '{4DB401E8-FF8F-3F01-81DE-B78FA6DEBCB6}';
  IID__ccgConsGTIN: TGUID = '{AEF8462E-2BC3-3179-8BC9-0957DCE2458F}';
  IID__CallccgConsGTINCompletedEventHandler: TGUID = '{08E3F50D-2E19-342E-933F-D58CC4462464}';
  IID__CallccgConsGTINCompletedEventArgs: TGUID = '{2E30B3ED-964A-34E6-A855-EC359ED8A41A}';
  IID__NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro: TGUID = '{7463E757-8087-31AE-B876-A570109806CB}';
  IID__NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler: TGUID = '{539166E6-FD64-3AEA-8C16-65BACE007D23}';
  IID__NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs: TGUID = '{224702AA-EF38-321C-BC66-FF8EE55C2D27}';
  IID__CadConsultaCadastro4: TGUID = '{B215CF95-78E3-34ED-ADD0-7BAE9CF94743}';
  IID__NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler: TGUID = '{37A26DC5-675E-3F3E-845C-EE5396319D93}';
  IID__NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs: TGUID = '{BC8BB181-57AB-32E0-A515-1B4066C5B1EC}';
  IID__CadConsultaCadastro2: TGUID = '{06CD3473-0F40-36FE-BE18-CDF8E566E50A}';
  IID__NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg: TGUID = '{BDEC443E-0836-30FC-BD7D-3D5A3BB6AEC0}';
  IID__consultaCadastro2CompletedEventHandler: TGUID = '{D7E897D3-EA8F-3591-BB1D-344033C8F50E}';
  IID__consultaCadastro2CompletedEventArgs: TGUID = '{1F4E2714-4671-38CC-9925-1CAA9275346C}';
  CLASS_SCERecepcaoRFB: TGUID = '{32934214-47AF-339B-99C6-5BB0E6EB43EB}';
  CLASS_NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg: TGUID = '{EA1656FF-BA60-3968-AD58-8FA357199B5D}';
  CLASS_sceRecepcaoDPECCompletedEventHandler: TGUID = '{823F5294-3DF2-3A93-9A42-FC2D9FFA0F0E}';
  CLASS_sceRecepcaoDPECCompletedEventArgs: TGUID = '{5A38A134-297C-34B3-BA56-C264EF2BCC1C}';
  CLASS_SCEConsultaRFB: TGUID = '{2A24C2AE-6E0F-3BF7-9B80-06B4C0143B0C}';
  CLASS_NFe_Util_2G_sceConsultaDPEC_sceCabecMsg: TGUID = '{7D45459C-3D1D-308C-8BC7-4E463DB8CBCA}';
  CLASS_sceConsultaDPECCompletedEventHandler: TGUID = '{FB23EA39-9587-323F-85B5-C561A0E09174}';
  CLASS_sceConsultaDPECCompletedEventArgs: TGUID = '{5B9AA9E0-1779-3CA5-B84A-D55882F22F98}';
  CLASS_RecepcaoEvento: TGUID = '{E99CDB53-C7BB-3A0A-9C9C-726975C6001A}';
  CLASS_NFe_Util_2G_RecepcaoEvento_nfeCabecMsg: TGUID = '{E4E11E1B-3542-3287-B763-AB9B2FE1BFDE}';
  CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler: TGUID = '{C82D952B-1C58-38C5-BEC5-BA78D4363F07}';
  CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs: TGUID = '{59B64D16-353C-32C6-8294-57A404090CD2}';
  CLASS_NfeAutorizacao: TGUID = '{2498D135-25AE-35FD-B13F-AEC18131B659}';
  CLASS_NFe_Util_2G_nfeAutorizacao_nfeCabecMsg: TGUID = '{CF35A8EB-F80D-3433-B914-A81277FE0379}';
  CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler: TGUID = '{0947F853-0781-310A-9427-161213529475}';
  CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs: TGUID = '{89683036-34DA-3BE0-B5A9-19201535DFA0}';
  CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler: TGUID = '{99B97D97-CE10-3961-863A-F9C4E3533702}';
  CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs: TGUID = '{B39A6148-D2EF-3FF2-9334-E48DA8EF965D}';
  CLASS_NfeStatusServico: TGUID = '{D38FE026-E3A7-3960-8167-E40265DA6D9E}';
  CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler: TGUID = '{3490061B-9272-3236-A0A9-A70B30AB04DE}';
  CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs: TGUID = '{45E1AE15-9DE7-3C07-A735-5DB7F81A87ED}';
  CLASS_NfeStatusServico2: TGUID = '{369321C1-CB5F-3872-A447-EA1849691844}';
  CLASS_NFe_Util_2G_NfeStatusServico2_nfeCabecMsg: TGUID = '{AC611412-3227-3DB5-A8AA-D2D90ECC7854}';
  CLASS_nfeStatusServicoNF2CompletedEventHandler: TGUID = '{8132A150-6643-3F9B-8CE6-AFC0DEACC65E}';
  CLASS_nfeStatusServicoNF2CompletedEventArgs: TGUID = '{8DBD9E55-011B-31BC-91BF-5FDC15E4579C}';
  CLASS_NfeRetRecepcao: TGUID = '{DC488BD2-E12E-38EC-9252-868F6702A783}';
  CLASS_nfeRetRecepcaoCompletedEventHandler: TGUID = '{408B45F6-64BA-39F7-AE6B-C6462117B9DC}';
  CLASS_nfeRetRecepcaoCompletedEventArgs: TGUID = '{D484361D-D384-306A-BB70-5FBF9225711F}';
  CLASS_NfeRetAutorizacao4: TGUID = '{C741741E-D5A7-37C0-92C0-0659B6206CEE}';
  CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler: TGUID = '{1D2976BB-778B-3712-9D13-F84E8A5AB8FF}';
  CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs: TGUID = '{AFCA6393-FCB9-3BE7-BB5D-0B02FA1F3AD5}';
  CLASS_NfeRetRecepcao2: TGUID = '{8A12913B-1D1E-3558-85AA-C82CB5823B27}';
  CLASS_NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg: TGUID = '{14BC910F-7D57-3801-90C7-75E39530F5E7}';
  CLASS_nfeRetRecepcao2CompletedEventHandler: TGUID = '{E1BDAA6D-1A77-366C-9FAD-671BA0C9ADCF}';
  CLASS_nfeRetRecepcao2CompletedEventArgs: TGUID = '{8FF06D7B-1053-3347-8068-13BCC24B335A}';
  CLASS_NfeRetAutorizacao: TGUID = '{6BB14362-88FF-3ECF-B80F-3440618A3FA6}';
  CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg: TGUID = '{55EAD601-5A89-37CA-8417-A68CF8D073C3}';
  CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler: TGUID = '{C6C2E048-909C-3F61-B86C-198F31A6F73A}';
  CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs: TGUID = '{5BD815C9-7C8F-38F5-A58C-1BA1AA1573D1}';
  CLASS_NfeRecepcao: TGUID = '{855F5A48-E6C9-38FA-9E18-C8111B396197}';
  CLASS_nfeRecepcaoLoteCompletedEventHandler: TGUID = '{48E35B64-68A2-33A9-AFF6-B2A6244C411B}';
  CLASS_nfeRecepcaoLoteCompletedEventArgs: TGUID = '{82F0CDBC-89B5-3ED2-AC2B-71ECD2810CB1}';
  CLASS_RecepcaoEvento4: TGUID = '{DB472EBE-9E5A-3330-9CF5-A4F9DF2787C2}';
  CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler: TGUID = '{004A9332-E728-33FF-B3F8-0AA9DAF3C557}';
  CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs: TGUID = '{4E5A4256-AF01-3EC8-BE78-28FD03752E4E}';
  CLASS_NfeAutorizacao4: TGUID = '{78BA8740-2F86-31AB-9059-1AAD3F4034FE}';
  CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler: TGUID = '{894F0677-E01D-3D4D-9F44-6D81FDBB9449}';
  CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs: TGUID = '{74DF6B1C-248E-3EE2-9596-9977A2B437B2}';
  CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler: TGUID = '{7E24F1CD-D14A-39BB-A105-F04927C32BFE}';
  CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs: TGUID = '{8DB2048B-8E34-3247-B43D-7553AB6E407D}';
  CLASS_NfeRecepcao2: TGUID = '{FC677C30-5F28-3D7C-8A87-7BA5A403B297}';
  CLASS_NFe_Util_2G_NFeRecepcao2_nfeCabecMsg: TGUID = '{FA57521D-874A-3B7C-94FB-A757D7C799CB}';
  CLASS_nfeRecepcaoLote2CompletedEventHandler: TGUID = '{2619F107-EEDB-3E2F-AE85-810DDC63CB29}';
  CLASS_nfeRecepcaoLote2CompletedEventArgs: TGUID = '{961817A9-402C-337A-B604-E25F49E15BD2}';
  CLASS_NfeInutilizacao: TGUID = '{8B7133C0-69CF-3B0A-AC33-E507E985E874}';
  CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler: TGUID = '{B7286375-2CF8-3B31-B1D5-1EF2E9260675}';
  CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs: TGUID = '{B004706C-D3D8-342F-9F7F-BBFD56DDC762}';
  CLASS_NfeInutilizacao4: TGUID = '{23D51D09-B159-37F4-9C3B-7133987909B5}';
  CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler: TGUID = '{7809EF11-94A1-385E-9215-9193FA17C386}';
  CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs: TGUID = '{11BB3EF5-6696-3737-8E89-DF71C61BB9A9}';
  CLASS_NfeInutilizacao2: TGUID = '{E0644064-138C-319A-84C7-AFF2DCC99F92}';
  CLASS_NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg: TGUID = '{B5A55B3B-5931-3A57-80DE-37002C7545DE}';
  CLASS_nfeInutilizacaoNF2CompletedEventHandler: TGUID = '{9D46AE51-ECC3-3D1A-8974-45DE1E39F933}';
  CLASS_nfeInutilizacaoNF2CompletedEventArgs: TGUID = '{A27CEF32-50C9-3D44-8116-C040B8ED136C}';
  CLASS_NfeConsulta: TGUID = '{19629518-F378-30C1-9BC9-99927C3BD312}';
  CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler: TGUID = '{FD476B2C-483F-34E6-9A17-7C4115C064E9}';
  CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs: TGUID = '{286ADB41-627D-387F-A41D-3D9A3B3021FF}';
  CLASS_NfeConsultaDest: TGUID = '{DBD46AFB-7913-3084-A6C1-CC5CA0E2403D}';
  CLASS_NFe_Util_2G_nfeConsultaDest_nfeCabecMsg: TGUID = '{11A7545F-5EEE-321E-835A-FEAD12B24944}';
  CLASS_nfeConsultaNFDestCompletedEventHandler: TGUID = '{071A9347-9C18-3651-89C3-2792C410B1FA}';
  CLASS_nfeConsultaNFDestCompletedEventArgs: TGUID = '{10C71B39-4276-301E-B178-07545F687565}';
  CLASS_NfeConsulta2: TGUID = '{A5976F22-2A03-3471-8E0E-E4E3951BF446}';
  CLASS_NFe_Util_2G_NfeConsulta2_nfeCabecMsg: TGUID = '{4019E0C7-65C3-3313-A8A7-D43DC637C292}';
  CLASS_nfeConsultaNF2CompletedEventHandler: TGUID = '{70BB947B-13E7-31E8-9659-F944F6A88B37}';
  CLASS_nfeConsultaNF2CompletedEventArgs: TGUID = '{E819489E-5F63-36EB-98EB-9DC1C894FA56}';
  CLASS_NfeCancelamento: TGUID = '{94FA1C52-3611-38B7-B6AD-7AB356F8FBF5}';
  CLASS_nfeCancelamentoNFCompletedEventHandler: TGUID = '{068A14BA-F823-3209-A726-33878D0BDA49}';
  CLASS_nfeCancelamentoNFCompletedEventArgs: TGUID = '{063FC518-8564-3106-B0B3-01EB7BD73D50}';
  CLASS_NfeCancelamento2: TGUID = '{FF92D422-E944-31CE-8C4C-F28DE24CD04E}';
  CLASS_NFe_Util_2G_NfeCancelamento2_nfeCabecMsg: TGUID = '{71DD121A-7802-3587-9801-585AAC9A1B45}';
  CLASS_nfeCancelamentoNF2CompletedEventHandler: TGUID = '{D78C2B84-6D2B-35AD-836F-A90A18CB7E1A}';
  CLASS_nfeCancelamentoNF2CompletedEventArgs: TGUID = '{67B293D5-71E4-38F3-8474-7DC3121BA4BC}';
  CLASS_NfeDownloadNF: TGUID = '{0DDF8B41-D406-349A-81DE-DD83E5102260}';
  CLASS_NFe_Util_2G_nfeDownload_nfeCabecMsg: TGUID = '{B9D5F792-B956-3756-8B68-F1296E0A4F4C}';
  CLASS_nfeDownloadNFCompletedEventHandler: TGUID = '{87489B89-93B1-35C9-9D7A-A165301AC4A2}';
  CLASS_nfeDownloadNFCompletedEventArgs: TGUID = '{B986B6E6-3ADA-31A5-BA6E-4860AA6F7A2B}';
  CLASS_NFeDistribuicaoDFe: TGUID = '{6C26DC87-8A50-3940-9A33-D95A994D3AE2}';
  CLASS_nfeDistDFeInteresseCompletedEventHandler: TGUID = '{15D7C748-EA67-33A2-A66D-7407334D8132}';
  CLASS_nfeDistDFeInteresseCompletedEventArgs: TGUID = '{E6F91BFB-0BA3-3A7F-A9FD-EF5BFB52784C}';
  CLASS_NfeConsulta4: TGUID = '{D7722E7A-1DDE-37B7-AAB9-30CA140C1876}';
  CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler: TGUID = '{2BC40C23-C022-3251-8B9B-21D5A7817322}';
  CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs: TGUID = '{84C878E8-414D-3188-8548-2F9D4CFB9720}';
  CLASS_NfeStatusServico4: TGUID = '{9D5342A5-28FB-3348-9A50-7772638DB9A9}';
  CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler: TGUID = '{594830B1-3FD8-36B9-B04B-E049AFD97B07}';
  CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs: TGUID = '{B5CBC661-E712-324C-887B-588A3EB0B670}';
  CLASS_RegistroSaida2: TGUID = '{85FD8C69-CA6A-373B-ADAD-90552361850B}';
  CLASS_NFe_Util_2G_MGregSai_nfeCabecMsg: TGUID = '{56F3D75A-4C58-3031-8443-11723E545A58}';
  CLASS_registrarSaidaCompletedEventHandler: TGUID = '{A215C184-2EDA-34F9-8131-03E43839ED3C}';
  CLASS_registrarSaidaCompletedEventArgs: TGUID = '{D636B213-338C-389F-8593-9D0020557880}';
  CLASS_CteConsulta: TGUID = '{87F812DF-56BD-3DD6-94BA-DA35F8D4D99D}';
  CLASS_NFe_Util_2G_cteConsulta_cteCabecMsg: TGUID = '{96C98403-4C10-35EF-9E45-080812E6652D}';
  CLASS_cteConsultaCTCompletedEventHandler: TGUID = '{5E10BC7C-320D-3705-8CA4-0A0CE7BFC297}';
  CLASS_cteConsultaCTCompletedEventArgs: TGUID = '{2249E043-BC0A-36F2-91AB-B5805BFFC855}';
  CLASS_NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro: TGUID = '{DF453691-E21D-31EE-B5BE-F9E9DF6229C5}';
  CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler: TGUID = '{222ED601-158A-3D6C-A92D-D4ED726ADB62}';
  CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs: TGUID = '{218826DF-7CF3-3A4B-9E09-923639DACF39}';
  CLASS_CleCadastro: TGUID = '{205600C8-7794-3238-8F9B-BF5B5FABE787}';
  CLASS_cleCadastroLote: TGUID = '{792DAACB-5907-3048-BAA8-3572119402A8}';
  CLASS_cleCadastroLoteResponse: TGUID = '{E1BA01C6-C6C6-367C-9626-A877883165E8}';
  CLASS_cleCadastroLoteCompletedEventHandler: TGUID = '{19BE8D0C-E2FF-3465-9832-D7B507C3B650}';
  CLASS_cleCadastroLoteCompletedEventArgs: TGUID = '{CD686D76-2B6E-3647-B152-5315DFFAC40F}';
  CLASS_CancRegSaida2: TGUID = '{C8665C19-ACE7-3538-ACB4-81BE8312EEFE}';
  CLASS_NFe_Util_2G_MGcancRegSai_nfeCabecMsg: TGUID = '{15B9C6F1-4B6C-3004-8BFF-570412E18F03}';
  CLASS_cancRegSaida2CompletedEventHandler: TGUID = '{6CF2A0CB-EC3C-39C6-AA6F-69034ECCF86C}';
  CLASS_cancRegSaida2CompletedEventArgs: TGUID = '{4A930CDD-5B3F-35A9-90B1-F35251308776}';
  CLASS_CteRecepcaoEvento: TGUID = '{7158A330-1CE5-355F-94AB-CD7E71D9411D}';
  CLASS_NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg: TGUID = '{30EB51F1-12DB-33FD-98B9-7B7B3671A3FB}';
  CLASS_cteRecepcaoEventoCompletedEventHandler: TGUID = '{E49E7C0E-F8CC-3B8A-B199-305E47907286}';
  CLASS_cteRecepcaoEventoCompletedEventArgs: TGUID = '{C733826D-BE11-3A0C-A7D6-C05622AA3E1F}';
  CLASS_ccgConsGTIN: TGUID = '{BC354617-D571-39CD-AC07-822C6B31412E}';
  CLASS_CallccgConsGTINCompletedEventHandler: TGUID = '{40B8E010-5996-3A31-B2A5-81CAD920CC8D}';
  CLASS_CallccgConsGTINCompletedEventArgs: TGUID = '{E3488390-8A58-3B2B-9EDE-A043185D6E08}';
  CLASS_NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro: TGUID = '{A24261B7-304E-391C-A542-0880E09206BB}';
  CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler: TGUID = '{02A56735-0F73-3273-82CE-CE6EFEE7F1F3}';
  CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs: TGUID = '{3201677F-D9DA-3775-900E-F96003F046FD}';
  CLASS_CadConsultaCadastro4: TGUID = '{55DD46AF-FA18-32C2-93A4-E3EB7B7E0405}';
  CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler: TGUID = '{9DC7D95E-9DB3-3160-A89D-47CE9F18EED0}';
  CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs: TGUID = '{47A27B35-E13A-39FB-AAA9-4ECB2F2427A4}';
  CLASS_CadConsultaCadastro2: TGUID = '{6DC81B7B-0C42-3D83-B2D9-0390BC7E7EA3}';
  CLASS_NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg: TGUID = '{AA613600-E413-3DAF-A566-70CA833A4F56}';
  CLASS_consultaCadastro2CompletedEventHandler: TGUID = '{58C8510E-040F-38AD-8807-2B251EC7A62F}';
  CLASS_consultaCadastro2CompletedEventArgs: TGUID = '{ED706959-16D5-32E4-9247-59818412778C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  NFe_Util_2G_Interface = interface;
  NFe_Util_2G_InterfaceDisp = dispinterface;
  NFe_Util_Events = dispinterface;
  _SCERecepcaoRFB = interface;
  _SCERecepcaoRFBDisp = dispinterface;
  _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg = interface;
  _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsgDisp = dispinterface;
  _sceRecepcaoDPECCompletedEventHandler = interface;
  _sceRecepcaoDPECCompletedEventHandlerDisp = dispinterface;
  _sceRecepcaoDPECCompletedEventArgs = interface;
  _sceRecepcaoDPECCompletedEventArgsDisp = dispinterface;
  _SCEConsultaRFB = interface;
  _SCEConsultaRFBDisp = dispinterface;
  _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg = interface;
  _NFe_Util_2G_sceConsultaDPEC_sceCabecMsgDisp = dispinterface;
  _sceConsultaDPECCompletedEventHandler = interface;
  _sceConsultaDPECCompletedEventHandlerDisp = dispinterface;
  _sceConsultaDPECCompletedEventArgs = interface;
  _sceConsultaDPECCompletedEventArgsDisp = dispinterface;
  _RecepcaoEvento = interface;
  _RecepcaoEventoDisp = dispinterface;
  _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg = interface;
  _NFe_Util_2G_RecepcaoEvento_nfeCabecMsgDisp = dispinterface;
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = interface;
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = interface;
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _NfeAutorizacao = interface;
  _NfeAutorizacaoDisp = dispinterface;
  _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg = interface;
  _NFe_Util_2G_nfeAutorizacao_nfeCabecMsgDisp = dispinterface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler = interface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs = interface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgsDisp = dispinterface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler = interface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs = interface;
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgsDisp = dispinterface;
  _NfeStatusServico = interface;
  _NfeStatusServicoDisp = dispinterface;
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgsDisp = dispinterface;
  _NfeStatusServico2 = interface;
  _NfeStatusServico2Disp = dispinterface;
  _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg = interface;
  _NFe_Util_2G_NfeStatusServico2_nfeCabecMsgDisp = dispinterface;
  _nfeStatusServicoNF2CompletedEventHandler = interface;
  _nfeStatusServicoNF2CompletedEventHandlerDisp = dispinterface;
  _nfeStatusServicoNF2CompletedEventArgs = interface;
  _nfeStatusServicoNF2CompletedEventArgsDisp = dispinterface;
  _NfeRetRecepcao = interface;
  _NfeRetRecepcaoDisp = dispinterface;
  _nfeRetRecepcaoCompletedEventHandler = interface;
  _nfeRetRecepcaoCompletedEventHandlerDisp = dispinterface;
  _nfeRetRecepcaoCompletedEventArgs = interface;
  _nfeRetRecepcaoCompletedEventArgsDisp = dispinterface;
  _NfeRetAutorizacao4 = interface;
  _NfeRetAutorizacao4Disp = dispinterface;
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgsDisp = dispinterface;
  _NfeRetRecepcao2 = interface;
  _NfeRetRecepcao2Disp = dispinterface;
  _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg = interface;
  _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsgDisp = dispinterface;
  _nfeRetRecepcao2CompletedEventHandler = interface;
  _nfeRetRecepcao2CompletedEventHandlerDisp = dispinterface;
  _nfeRetRecepcao2CompletedEventArgs = interface;
  _nfeRetRecepcao2CompletedEventArgsDisp = dispinterface;
  _NfeRetAutorizacao = interface;
  _NfeRetAutorizacaoDisp = dispinterface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg = interface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsgDisp = dispinterface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler = interface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs = interface;
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgsDisp = dispinterface;
  _NfeRecepcao = interface;
  _NfeRecepcaoDisp = dispinterface;
  _nfeRecepcaoLoteCompletedEventHandler = interface;
  _nfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface;
  _nfeRecepcaoLoteCompletedEventArgs = interface;
  _nfeRecepcaoLoteCompletedEventArgsDisp = dispinterface;
  _RecepcaoEvento4 = interface;
  _RecepcaoEvento4Disp = dispinterface;
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _NfeAutorizacao4 = interface;
  _NfeAutorizacao4Disp = dispinterface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgsDisp = dispinterface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgsDisp = dispinterface;
  _NfeRecepcao2 = interface;
  _NfeRecepcao2Disp = dispinterface;
  _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg = interface;
  _NFe_Util_2G_NFeRecepcao2_nfeCabecMsgDisp = dispinterface;
  _nfeRecepcaoLote2CompletedEventHandler = interface;
  _nfeRecepcaoLote2CompletedEventHandlerDisp = dispinterface;
  _nfeRecepcaoLote2CompletedEventArgs = interface;
  _nfeRecepcaoLote2CompletedEventArgsDisp = dispinterface;
  _NfeInutilizacao = interface;
  _NfeInutilizacaoDisp = dispinterface;
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp = dispinterface;
  _NfeInutilizacao4 = interface;
  _NfeInutilizacao4Disp = dispinterface;
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp = dispinterface;
  _NfeInutilizacao2 = interface;
  _NfeInutilizacao2Disp = dispinterface;
  _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg = interface;
  _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsgDisp = dispinterface;
  _nfeInutilizacaoNF2CompletedEventHandler = interface;
  _nfeInutilizacaoNF2CompletedEventHandlerDisp = dispinterface;
  _nfeInutilizacaoNF2CompletedEventArgs = interface;
  _nfeInutilizacaoNF2CompletedEventArgsDisp = dispinterface;
  _NfeConsulta = interface;
  _NfeConsultaDisp = dispinterface;
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgsDisp = dispinterface;
  _NfeConsultaDest = interface;
  _NfeConsultaDestDisp = dispinterface;
  _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg = interface;
  _NFe_Util_2G_nfeConsultaDest_nfeCabecMsgDisp = dispinterface;
  _nfeConsultaNFDestCompletedEventHandler = interface;
  _nfeConsultaNFDestCompletedEventHandlerDisp = dispinterface;
  _nfeConsultaNFDestCompletedEventArgs = interface;
  _nfeConsultaNFDestCompletedEventArgsDisp = dispinterface;
  _NfeConsulta2 = interface;
  _NfeConsulta2Disp = dispinterface;
  _NFe_Util_2G_NfeConsulta2_nfeCabecMsg = interface;
  _NFe_Util_2G_NfeConsulta2_nfeCabecMsgDisp = dispinterface;
  _nfeConsultaNF2CompletedEventHandler = interface;
  _nfeConsultaNF2CompletedEventHandlerDisp = dispinterface;
  _nfeConsultaNF2CompletedEventArgs = interface;
  _nfeConsultaNF2CompletedEventArgsDisp = dispinterface;
  _NfeCancelamento = interface;
  _NfeCancelamentoDisp = dispinterface;
  _nfeCancelamentoNFCompletedEventHandler = interface;
  _nfeCancelamentoNFCompletedEventHandlerDisp = dispinterface;
  _nfeCancelamentoNFCompletedEventArgs = interface;
  _nfeCancelamentoNFCompletedEventArgsDisp = dispinterface;
  _NfeCancelamento2 = interface;
  _NfeCancelamento2Disp = dispinterface;
  _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg = interface;
  _NFe_Util_2G_NfeCancelamento2_nfeCabecMsgDisp = dispinterface;
  _nfeCancelamentoNF2CompletedEventHandler = interface;
  _nfeCancelamentoNF2CompletedEventHandlerDisp = dispinterface;
  _nfeCancelamentoNF2CompletedEventArgs = interface;
  _nfeCancelamentoNF2CompletedEventArgsDisp = dispinterface;
  _NfeDownloadNF = interface;
  _NfeDownloadNFDisp = dispinterface;
  _NFe_Util_2G_nfeDownload_nfeCabecMsg = interface;
  _NFe_Util_2G_nfeDownload_nfeCabecMsgDisp = dispinterface;
  _nfeDownloadNFCompletedEventHandler = interface;
  _nfeDownloadNFCompletedEventHandlerDisp = dispinterface;
  _nfeDownloadNFCompletedEventArgs = interface;
  _nfeDownloadNFCompletedEventArgsDisp = dispinterface;
  _NFeDistribuicaoDFe = interface;
  _NFeDistribuicaoDFeDisp = dispinterface;
  _nfeDistDFeInteresseCompletedEventHandler = interface;
  _nfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface;
  _nfeDistDFeInteresseCompletedEventArgs = interface;
  _nfeDistDFeInteresseCompletedEventArgsDisp = dispinterface;
  _NfeConsulta4 = interface;
  _NfeConsulta4Disp = dispinterface;
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgsDisp = dispinterface;
  _NfeStatusServico4 = interface;
  _NfeStatusServico4Disp = dispinterface;
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler = interface;
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs = interface;
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgsDisp = dispinterface;
  _RegistroSaida2 = interface;
  _RegistroSaida2Disp = dispinterface;
  _NFe_Util_2G_MGregSai_nfeCabecMsg = interface;
  _NFe_Util_2G_MGregSai_nfeCabecMsgDisp = dispinterface;
  _registrarSaidaCompletedEventHandler = interface;
  _registrarSaidaCompletedEventHandlerDisp = dispinterface;
  _registrarSaidaCompletedEventArgs = interface;
  _registrarSaidaCompletedEventArgsDisp = dispinterface;
  _CteConsulta = interface;
  _CteConsultaDisp = dispinterface;
  _NFe_Util_2G_cteConsulta_cteCabecMsg = interface;
  _NFe_Util_2G_cteConsulta_cteCabecMsgDisp = dispinterface;
  _cteConsultaCTCompletedEventHandler = interface;
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface;
  _cteConsultaCTCompletedEventArgs = interface;
  _cteConsultaCTCompletedEventArgsDisp = dispinterface;
  _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro = interface;
  _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastroDisp = dispinterface;
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler = interface;
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs = interface;
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgsDisp = dispinterface;
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
  _CancRegSaida2 = interface;
  _CancRegSaida2Disp = dispinterface;
  _NFe_Util_2G_MGcancRegSai_nfeCabecMsg = interface;
  _NFe_Util_2G_MGcancRegSai_nfeCabecMsgDisp = dispinterface;
  _cancRegSaida2CompletedEventHandler = interface;
  _cancRegSaida2CompletedEventHandlerDisp = dispinterface;
  _cancRegSaida2CompletedEventArgs = interface;
  _cancRegSaida2CompletedEventArgsDisp = dispinterface;
  _CteRecepcaoEvento = interface;
  _CteRecepcaoEventoDisp = dispinterface;
  _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg = interface;
  _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventHandler = interface;
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventArgs = interface;
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _ccgConsGTIN = interface;
  _ccgConsGTINDisp = dispinterface;
  _CallccgConsGTINCompletedEventHandler = interface;
  _CallccgConsGTINCompletedEventHandlerDisp = dispinterface;
  _CallccgConsGTINCompletedEventArgs = interface;
  _CallccgConsGTINCompletedEventArgsDisp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro = interface;
  _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastroDisp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler = interface;
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs = interface;
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgsDisp = dispinterface;
  _CadConsultaCadastro4 = interface;
  _CadConsultaCadastro4Disp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler = interface;
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandlerDisp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs = interface;
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgsDisp = dispinterface;
  _CadConsultaCadastro2 = interface;
  _CadConsultaCadastro2Disp = dispinterface;
  _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg = interface;
  _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsgDisp = dispinterface;
  _consultaCadastro2CompletedEventHandler = interface;
  _consultaCadastro2CompletedEventHandlerDisp = dispinterface;
  _consultaCadastro2CompletedEventArgs = interface;
  _consultaCadastro2CompletedEventArgsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Util = NFe_Util_2G_Interface;
  SCERecepcaoRFB = _SCERecepcaoRFB;
  NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg = _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
  sceRecepcaoDPECCompletedEventHandler = _sceRecepcaoDPECCompletedEventHandler;
  sceRecepcaoDPECCompletedEventArgs = _sceRecepcaoDPECCompletedEventArgs;
  SCEConsultaRFB = _SCEConsultaRFB;
  NFe_Util_2G_sceConsultaDPEC_sceCabecMsg = _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
  sceConsultaDPECCompletedEventHandler = _sceConsultaDPECCompletedEventHandler;
  sceConsultaDPECCompletedEventArgs = _sceConsultaDPECCompletedEventArgs;
  RecepcaoEvento = _RecepcaoEvento;
  NFe_Util_2G_RecepcaoEvento_nfeCabecMsg = _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
  NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
  NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
  NfeAutorizacao = _NfeAutorizacao;
  NFe_Util_2G_nfeAutorizacao_nfeCabecMsg = _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
  NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler = _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
  NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs = _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
  NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler = _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
  NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs = _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
  NfeStatusServico = _NfeStatusServico;
  NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler = _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
  NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs = _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
  NfeStatusServico2 = _NfeStatusServico2;
  NFe_Util_2G_NfeStatusServico2_nfeCabecMsg = _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
  nfeStatusServicoNF2CompletedEventHandler = _nfeStatusServicoNF2CompletedEventHandler;
  nfeStatusServicoNF2CompletedEventArgs = _nfeStatusServicoNF2CompletedEventArgs;
  NfeRetRecepcao = _NfeRetRecepcao;
  nfeRetRecepcaoCompletedEventHandler = _nfeRetRecepcaoCompletedEventHandler;
  nfeRetRecepcaoCompletedEventArgs = _nfeRetRecepcaoCompletedEventArgs;
  NfeRetAutorizacao4 = _NfeRetAutorizacao4;
  NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler = _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
  NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs = _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
  NfeRetRecepcao2 = _NfeRetRecepcao2;
  NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg = _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
  nfeRetRecepcao2CompletedEventHandler = _nfeRetRecepcao2CompletedEventHandler;
  nfeRetRecepcao2CompletedEventArgs = _nfeRetRecepcao2CompletedEventArgs;
  NfeRetAutorizacao = _NfeRetAutorizacao;
  NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg = _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
  NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler = _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
  NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs = _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
  NfeRecepcao = _NfeRecepcao;
  nfeRecepcaoLoteCompletedEventHandler = _nfeRecepcaoLoteCompletedEventHandler;
  nfeRecepcaoLoteCompletedEventArgs = _nfeRecepcaoLoteCompletedEventArgs;
  RecepcaoEvento4 = _RecepcaoEvento4;
  NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
  NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
  NfeAutorizacao4 = _NfeAutorizacao4;
  NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler = _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
  NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs = _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
  NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler = _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
  NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs = _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
  NfeRecepcao2 = _NfeRecepcao2;
  NFe_Util_2G_NFeRecepcao2_nfeCabecMsg = _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
  nfeRecepcaoLote2CompletedEventHandler = _nfeRecepcaoLote2CompletedEventHandler;
  nfeRecepcaoLote2CompletedEventArgs = _nfeRecepcaoLote2CompletedEventArgs;
  NfeInutilizacao = _NfeInutilizacao;
  NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler = _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
  NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs = _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
  NfeInutilizacao4 = _NfeInutilizacao4;
  NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler = _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
  NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs = _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
  NfeInutilizacao2 = _NfeInutilizacao2;
  NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg = _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
  nfeInutilizacaoNF2CompletedEventHandler = _nfeInutilizacaoNF2CompletedEventHandler;
  nfeInutilizacaoNF2CompletedEventArgs = _nfeInutilizacaoNF2CompletedEventArgs;
  NfeConsulta = _NfeConsulta;
  NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler = _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
  NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs = _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
  NfeConsultaDest = _NfeConsultaDest;
  NFe_Util_2G_nfeConsultaDest_nfeCabecMsg = _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
  nfeConsultaNFDestCompletedEventHandler = _nfeConsultaNFDestCompletedEventHandler;
  nfeConsultaNFDestCompletedEventArgs = _nfeConsultaNFDestCompletedEventArgs;
  NfeConsulta2 = _NfeConsulta2;
  NFe_Util_2G_NfeConsulta2_nfeCabecMsg = _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
  nfeConsultaNF2CompletedEventHandler = _nfeConsultaNF2CompletedEventHandler;
  nfeConsultaNF2CompletedEventArgs = _nfeConsultaNF2CompletedEventArgs;
  NfeCancelamento = _NfeCancelamento;
  nfeCancelamentoNFCompletedEventHandler = _nfeCancelamentoNFCompletedEventHandler;
  nfeCancelamentoNFCompletedEventArgs = _nfeCancelamentoNFCompletedEventArgs;
  NfeCancelamento2 = _NfeCancelamento2;
  NFe_Util_2G_NfeCancelamento2_nfeCabecMsg = _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
  nfeCancelamentoNF2CompletedEventHandler = _nfeCancelamentoNF2CompletedEventHandler;
  nfeCancelamentoNF2CompletedEventArgs = _nfeCancelamentoNF2CompletedEventArgs;
  NfeDownloadNF = _NfeDownloadNF;
  NFe_Util_2G_nfeDownload_nfeCabecMsg = _NFe_Util_2G_nfeDownload_nfeCabecMsg;
  nfeDownloadNFCompletedEventHandler = _nfeDownloadNFCompletedEventHandler;
  nfeDownloadNFCompletedEventArgs = _nfeDownloadNFCompletedEventArgs;
  NFeDistribuicaoDFe = _NFeDistribuicaoDFe;
  nfeDistDFeInteresseCompletedEventHandler = _nfeDistDFeInteresseCompletedEventHandler;
  nfeDistDFeInteresseCompletedEventArgs = _nfeDistDFeInteresseCompletedEventArgs;
  NfeConsulta4 = _NfeConsulta4;
  NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler = _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
  NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs = _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
  NfeStatusServico4 = _NfeStatusServico4;
  NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler = _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
  NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs = _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
  RegistroSaida2 = _RegistroSaida2;
  NFe_Util_2G_MGregSai_nfeCabecMsg = _NFe_Util_2G_MGregSai_nfeCabecMsg;
  registrarSaidaCompletedEventHandler = _registrarSaidaCompletedEventHandler;
  registrarSaidaCompletedEventArgs = _registrarSaidaCompletedEventArgs;
  CteConsulta = _CteConsulta;
  NFe_Util_2G_cteConsulta_cteCabecMsg = _NFe_Util_2G_cteConsulta_cteCabecMsg;
  cteConsultaCTCompletedEventHandler = _cteConsultaCTCompletedEventHandler;
  cteConsultaCTCompletedEventArgs = _cteConsultaCTCompletedEventArgs;
  NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro = _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
  NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler = _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
  NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs = _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
  CleCadastro = _CleCadastro;
  cleCadastroLote = _cleCadastroLote;
  cleCadastroLoteResponse = _cleCadastroLoteResponse;
  cleCadastroLoteCompletedEventHandler = _cleCadastroLoteCompletedEventHandler;
  cleCadastroLoteCompletedEventArgs = _cleCadastroLoteCompletedEventArgs;
  CancRegSaida2 = _CancRegSaida2;
  NFe_Util_2G_MGcancRegSai_nfeCabecMsg = _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
  cancRegSaida2CompletedEventHandler = _cancRegSaida2CompletedEventHandler;
  cancRegSaida2CompletedEventArgs = _cancRegSaida2CompletedEventArgs;
  CteRecepcaoEvento = _CteRecepcaoEvento;
  NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg = _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
  cteRecepcaoEventoCompletedEventHandler = _cteRecepcaoEventoCompletedEventHandler;
  cteRecepcaoEventoCompletedEventArgs = _cteRecepcaoEventoCompletedEventArgs;
  ccgConsGTIN = _ccgConsGTIN;
  CallccgConsGTINCompletedEventHandler = _CallccgConsGTINCompletedEventHandler;
  CallccgConsGTINCompletedEventArgs = _CallccgConsGTINCompletedEventArgs;
  NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro = _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
  NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler = _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
  NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs = _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
  CadConsultaCadastro4 = _CadConsultaCadastro4;
  NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler = _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
  NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs = _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
  CadConsultaCadastro2 = _CadConsultaCadastro2;
  NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg = _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
  consultaCadastro2CompletedEventHandler = _consultaCadastro2CompletedEventHandler;
  consultaCadastro2CompletedEventArgs = _consultaCadastro2CompletedEventArgs;


// *********************************************************************//
// Interface: NFe_Util_2G_Interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99784343-9309-4F35-A1DE-03C7DA586D60}
// *********************************************************************//
  NFe_Util_2G_Interface = interface(IDispatch)
    ['{99784343-9309-4F35-A1DE-03C7DA586D60}']
    function Versao: WideString; safecall;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                      out DLL_data: WideString; out DLL_dataValidade: WideString; 
                      out URL_versao: WideString; out URL_data: WideString): WideString; safecall;
    function ConsultaStatus2G(const siglaWS: WideString; const siglaUF: WideString; 
                              tipoAmbiente: Integer; const nomeCertificado: WideString; 
                              const Versao: WideString; out msgDados: WideString; 
                              out msgRetWS: WideString; out msgResultado: WideString; 
                              const proxy: WideString; const usuario: WideString; 
                              const senha: WideString): Integer; safecall;
    function EnviaLote2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         var msgDados: WideString; out msgRetWS: WideString; 
                         out msgResultado: WideString; out nRec: WideString; 
                         out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; safecall;
    function BuscaLote2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const nroRecibo: WideString; 
                         out cMsg: WideString; out xMsg: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; safecall;
    function ConsultaNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString): Integer; safecall;
    function CancelaNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const chaveNFe: WideString; 
                         const nProtocolo: WideString; const justificativa: WideString; 
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function InutilizaNroNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                              const nomeCertificado: WideString; const Versao: WideString; 
                              out msgDados: WideString; out msgRetWS: WideString; 
                              out cStat: Integer; out msgResultado: WideString; 
                              const cUF: WideString; const ano: WideString; const CNPJ: WideString; 
                              const modelo: WideString; const serie: WideString; 
                              const nroNFeInicial: WideString; const nroNFeFinal: WideString; 
                              const justificativa: WideString; out nProtocoloInut: WideString; 
                              out dProtocoloInut: WideString; const proxy: WideString; 
                              const usuario: WideString; const senha: WideString; 
                              const licenca: WideString): WideString; safecall;
    function EnviaNFe2G(const siglaWS: WideString; var NFe: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out nroRecibo: WideString; 
                        out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; safecall;
    function BuscaNFe2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                        var NFeAssinada: WideString; const nroRecibo: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out nroProtocolo: WideString; 
                        out dhProtocolo: WideString; out cMsg: WideString; out xMsg: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; 
                           out msgResultado: WideString; const tpArgumento: WideString; 
                           const argumento: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): Integer; safecall;
    function EnviaDPEC(var DPEC: WideString; const nomeCertificado: WideString; 
                       out DPECAssinado: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out dhRegDPEC: WideString; 
                       out nRegDPEC: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function ConsultaDPEC(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const tpArgumento: WideString; 
                          const argumento: WideString; out DPEC: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): Integer; safecall;
    function EnviaCCe2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const textoCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                        const dataCorrecao: WideString; out nroProtocolo: WideString; 
                        out dhProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; safecall;
    function UpLoadNFe(const padrao: WideString; const login: WideString; const NFe: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out listaMsg: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out chvCLe: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function Assinar(const XMLString: WideString; const RefUri: WideString; 
                     const NomeTitular: WideString; out resultado: Integer; 
                     out msgResultado: WideString): WideString; safecall;
    function ValidaAssinatura(const XML: WideString; out msgResultado: WideString; 
                              out Titular: WideString; out CNPJ: WideString; 
                              out NroSerie: WideString; out Emissor: WideString; 
                              out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function PegaNomeCertificado(var nomeCertificado: WideString; out msgResultado: WideString): Integer; safecall;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; safecall;
    function CriaChaveNFe(const cUF: WideString; const ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const codigoSeguranca: WideString; out msgResultado: WideString; 
                          out cNF: WideString; out cDV: WideString; out chaveNFe: WideString): Integer; safecall;
    function CriaChaveNFe2G(const cUF: WideString; const ano: WideString; const Mes: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const numero: WideString; 
                            const tpEmis: WideString; const codigoSeguranca: WideString; 
                            out msgResultado: WideString; out cNF: WideString; out cDV: WideString; 
                            out chaveNFe: WideString): Integer; safecall;
    function CriaProcNFe(var NFeAssinada: WideString; out protocolo: WideString; 
                         out resultado: Integer; const nomeCertificado: WideString; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; safecall;
    function CriaProcNFe2G(const siglaWS: WideString; var NFeAssinada: WideString; 
                           out protocolo: WideString; out retCancNFe: WideString; 
                           out resultado: Integer; const nomeCertificado: WideString; 
                           out msgResultado: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): WideString; safecall;
    function CriaProcCancNFe2G(const siglaWS: WideString; var cancNFe: WideString; 
                               out protocolo: WideString; out retCancNFe: WideString; 
                               out resultado: Integer; const nomeCertificado: WideString; 
                               out msgResultado: WideString; const proxy: WideString; 
                               const usuario: WideString; const senha: WideString): WideString; safecall;
    function criaDPEC(const _NFeLote: WideString; out _resultado: Integer; 
                      out _msgResultado: WideString; out _erroXML: WideString): WideString; safecall;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                          const CNPJ: WideString; valorTotalNFe: Double; 
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                          dataEmissaoNFe: TDateTime; out codigoBarras: WideString; 
                                          out msgResultado: WideString): Integer; safecall;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                out msgErro: WideString): Integer; safecall;
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
    function encodeBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; safecall;
    function MontaLoteNFe(const Versao: WideString; const idLote: WideString; 
                          const NFe: WideString; out quantidadeNFe: Integer; 
                          out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function PegaProtNFe(const retConsReciNFe: WideString; out Versao: WideString; 
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtNFe: Integer; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function MontaProcNFe(const Versao: WideString; const enviNFe: WideString; 
                          const retConsReciNFe: WideString; out qtdeNFe: Integer; 
                          out qtdeProcNFe: Integer; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function geraPdfDANFE(const _NFe: WideString; const _origemDadosEmissor: WideString; 
                          const _quadroRecibo: WideString; const _quadroFatura: WideString; 
                          const _quadroISSQN: WideString; const _nroDPEC: WideString; 
                          const _separadorItem: WideString; const _nomePDF: WideString; 
                          out msgResultado: WideString): Integer; safecall;
    function emitente(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                      const _xFant: WideString; const _xLgr: WideString; const _nro: WideString; 
                      const _xCpl: WideString; const _xBairro: WideString; const _cMun: WideString; 
                      const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                      const _cPais: WideString; const _xPais: WideString; const _fone: WideString; 
                      const _IE: WideString; const _IEST: WideString; const _IM: WideString; 
                      const _CNAE: WideString): WideString; safecall;
    function localRetirada(const _CNPJ: WideString; const _xLgr: WideString; 
                           const _nro: WideString; const _xCpl: WideString; 
                           const _xBairro: WideString; const _cMun: WideString; 
                           const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; 
                          const _xNome: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                          const _cPais: WideString; const _xPais: WideString; 
                          const _fone: WideString; const _IE: WideString; const _IESUF: WideString): WideString; safecall;
    function localEntrega(const _CNPJ: WideString; const _xLgr: WideString; const _nro: WideString; 
                          const _xCpl: WideString; const _xBairro: WideString; 
                          const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function identificador(_cUF: Integer; _cNF: Integer; const _natOp: WideString; 
                           _indPag: Integer; _mod: Integer; _serie: Integer; _nNF: Integer; 
                           _dEmi: TDateTime; _dSaiEnt: TDateTime; _tpNF: Integer; 
                           const _cMunFG: WideString; const _NFref: WideString; _tpImp: Integer; 
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _finNFe: Integer; 
                           _procEmi: Integer; const _verProc: WideString): WideString; safecall;
    function NFeRef(const _NFe: WideString): WideString; safecall;
    function NFRef(_cUF: Integer; const _AAMM: WideString; const _CNPJ: WideString; _mod: Integer; 
                   _serie: Integer; _nNF: Integer): WideString; safecall;
    function transportador(const _modFrete: WideString; const _transporta: WideString; 
                           const _retTransp: WideString; const _veicTransp: WideString; 
                           const _reboque: WideString; const _vol: WideString): WideString; safecall;
    function transporta(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                        const _IE: WideString; const _xEnder: WideString; const _xMun: WideString; 
                        const _UF: WideString): WideString; safecall;
    function retTransp(_vServ: Double; _vBCRet: Double; _pICMSRet: Double; _vICMSRet: Double; 
                       _CFOP: Integer; const _cMunFG: WideString): WideString; safecall;
    function veicTransp(const _placa: WideString; const _UF: WideString; const _RNTC: WideString): WideString; safecall;
    function reboque(const _placa: WideString; const _UF: WideString; const _RNTC: WideString): WideString; safecall;
    function vol(_qVol: Double; const _esp: WideString; const _marca: WideString; 
                 const _nVol: WideString; _pesoL: Double; _pesoB: Double; const _lacres: WideString): WideString; safecall;
    function arma(_tpArma: Integer; const _nSerie: WideString; const _nCano: WideString; 
                  const _descr: WideString): WideString; safecall;
    function icms(const _orig: WideString; const _CST: WideString; _modBC: Integer; 
                  _pRedBC: Double; _vBC: Double; _pICMS: Double; _vICMS: Double; _modBCST: Integer; 
                  _pMVAST: Double; _pRedBCST: Double; _vBCST: Double; _pICMSST: Double; 
                  _vICMSST: Double): WideString; safecall;
    function COFINS(const _CST: WideString; _vBC: Double; _pCOFINS: Double; _vCOFINS: Double; 
                    _qBCProd: Double; _vAliqProd: Double): WideString; safecall;
    function COFINSST(_vBC: Double; _pCOFINS: Double; _vCOFINS: Double; _qBCProd: Double; 
                      _vAliqProd: Double): WideString; safecall;
    function PISST(_vBC: Double; _pPIS: Double; _vPIS: Double; _qBCProd: Double; _vAliqProd: Double): WideString; safecall;
    function PIS(const _CST: WideString; _vBC: Double; _pPIS: Double; _vPIS: Double; 
                 _qBCProd: Double; _vAliqProd: Double): WideString; safecall;
    function II(_vBC: Double; _vDespAdu: Double; _vII: Double; _vIOF: Double): WideString; safecall;
    function IPI(const _clEnq: WideString; const _CNPJProd: WideString; const _cSelo: WideString; 
                 _qSelo: Double; const _cEnq: WideString; const _CST: WideString; _vBC: Double; 
                 _pIPI: Double; _vIPI: Double; _qUnid: Double; _vUnid: Double): WideString; safecall;
    function ISSQN(_vBC: Double; _vAliq: Double; _vISSQN: Double; const _cMunFG: WideString; 
                   _cListServ: Integer): WideString; safecall;
    function infAdProd(const _infAdProd: WideString): WideString; safecall;
    function infAdic(const _infAdFisco: WideString; const _infCpl: WideString; 
                     const _obsCont: WideString; const _obsFisco: WideString; 
                     const _procRef: WideString): WideString; safecall;
    function produto(const _cProd: WideString; const _cEAN: WideString; const _xProd: WideString; 
                     const _NCM: WideString; const _EXTIPI: WideString; _genero: Integer; 
                     _CFOP: Integer; const _uCom: WideString; _qCom: Double; _vUnCom: Double; 
                     _vProd: Double; const _cEANTrib: WideString; const _uTrib: WideString; 
                     _qTrib: Double; _vUnTrib: Double; _vFrete: Double; _vSeg: Double; 
                     _vDesc: Double; const _DI: WideString; const _DetEspecifico: WideString): WideString; safecall;
    function totalICMS(_vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; _vProd: Double; 
                       _vFrete: Double; _vSeg: Double; _vDesc: Double; _vII: Double; _vIPI: Double; 
                       _vPIS: Double; _vCOFINS: Double; _vOutro: Double; _vNF: Double): WideString; safecall;
    function totalISS(_vServ: Double; _vBC: Double; _vISS: Double; _vPIS: Double; _vCOFINS: Double): WideString; safecall;
    function tributoRetido(_vRetPIS: Double; _vRetCOFINS: Double; _vRetCSLL: Double; 
                           _vBCIRRF: Double; _vIRRF: Double; _vBCRetPrev: Double; _vRetPrev: Double): WideString; safecall;
    function total(const _ICMSTot: WideString; const _ISSQNtot: WideString; 
                   const _retTrib: WideString): WideString; safecall;
    function detalhe(_nItem: Integer; const _produto: WideString; const _imposto: WideString; 
                     const _infAdProd: WideString): WideString; safecall;
    function imposto(const _icms: WideString; const _ipi: WideString; const _ii: WideString; 
                     const _pis: WideString; const _pisst: WideString; const _cofins: WideString; 
                     const _cofinsst: WideString; const _issqn: WideString): WideString; safecall;
    function med(const _nLote: WideString; _qLote: Double; _dFab: TDateTime; _dVal: TDateTime; 
                 _vPMC: Double): WideString; safecall;
    function NFe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                 const _emit: WideString; const _avulsa: WideString; const _dest: WideString; 
                 const _retirada: WideString; const _entrega: WideString; 
                 const _detalhes: WideString; const _total: WideString; const _transp: WideString; 
                 const _cobr: WideString; const _infAdic: WideString; const _exporta: WideString; 
                 const _compra: WideString): WideString; safecall;
    function compra(const _xNEmp: WideString; const _xPed: WideString; const _xCont: WideString): WideString; safecall;
    function exporta(const _UFEmbarq: WideString; const _xLocEmbarq: WideString): WideString; safecall;
    function procRef(const _nProc: WideString; _indProc: Integer): WideString; safecall;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function cobr(const _nfat: WideString; _vOrig: Double; _vDesc: Double; _vLiq: Double; 
                  const _dup: WideString): WideString; safecall;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; safecall;
    function veicProd(_tpOp: Integer; const _chassi: WideString; const _cCor: WideString; 
                      const _xCor: WideString; const _pot: WideString; const _CM3: WideString; 
                      const _peloL: WideString; const _pesoB: WideString; 
                      const _nSerie: WideString; const _tpComb: WideString; 
                      const _nMotor: WideString; const _CMKG: WideString; const _dist: WideString; 
                      const _RENAVAM: WideString; const _anoMod: WideString; 
                      const _anoFab: WideString; const _tpPint: WideString; 
                      const _tpVeic: WideString; const _espVeic: WideString; 
                      const _VIN: WideString; const _condVeic: WideString; const _cMod: WideString): WideString; safecall;
    function adi(_nAdicao: Integer; _nSeqAdic: Integer; const _cFabricante: WideString; 
                 _vDescDI: Double): WideString; safecall;
    function DI(const _nDI: WideString; _dDi: TDateTime; const _xLocDesemb: WideString; 
                const _UFDesemb: WideString; _dDesemb: TDateTime; const _cExportador: WideString; 
                const _adi: WideString): WideString; safecall;
    function comb(const _cProdANP: WideString; const _CODIF: WideString; _qTemp: Double; 
                  _qBCProd: Double; _vAliqProd: Double; _vCIDE: Double; _vBCICMS: Double; 
                  _vICMS: Double; _vBCICMSST: Double; _vICMSST: Double; _vBCICMSSTDest: Double; 
                  _vICMSSTDest: Double; _vBCICMSSTCons: Double; _vICMSSTCons: Double; 
                  const _UFCons: WideString): WideString; safecall;
    function avulsa(const _CNPJ: WideString; const _xOrgao: WideString; const _matr: WideString; 
                    const _xAgente: WideString; const _fone: WideString; const _UF: WideString; 
                    const _nDAR: WideString; _dEmi: TDateTime; _vDAR: Double; 
                    const _repEmi: WideString; _dPag: TDateTime): WideString; safecall;
    function lacres(const _lacre: WideString): WideString; safecall;
    function emitente2G(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                        const _xFant: WideString; const _xLgr: WideString; const _nro: WideString; 
                        const _xCpl: WideString; const _xBairro: WideString; 
                        const _cMun: WideString; const _xMun: WideString; const _UF: WideString; 
                        const _CEP: WideString; const _cPais: WideString; const _xPais: WideString; 
                        const _fone: WideString; const _IE: WideString; const _IEST: WideString; 
                        const _IM: WideString; const _CNAE: WideString; const _CRT: WideString): WideString; safecall;
    function localRetirada2G(const _CNPJ: WideString; const _CPF: WideString; 
                             const _xLgr: WideString; const _nro: WideString; 
                             const _xCpl: WideString; const _xBairro: WideString; 
                             const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function destinatario2G(const _CNPJ: WideString; const _CPF: WideString; 
                            const _xNome: WideString; const _xLgr: WideString; 
                            const _nro: WideString; const _xCpl: WideString; 
                            const _xBairro: WideString; const _cMun: WideString; 
                            const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                            const _cPais: WideString; const _xPais: WideString; 
                            const _fone: WideString; const _IE: WideString; 
                            const _IESUF: WideString; const _email: WideString): WideString; safecall;
    function localEntrega2G(const _CNPJ: WideString; const _CPF: WideString; 
                            const _xLgr: WideString; const _nro: WideString; 
                            const _xCpl: WideString; const _xBairro: WideString; 
                            const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function identificador2G(_cUF: Integer; _cNF: Integer; const _natOp: WideString; 
                             _indPag: Integer; _mod: Integer; _serie: Integer; _nNF: Integer; 
                             _dEmi: TDateTime; _dSaiEnt: TDateTime; const _hSaiEnt: WideString; 
                             _tpNF: Integer; const _cMunFG: WideString; const _NFref: WideString; 
                             _tpImp: Integer; _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; 
                             _finNFe: Integer; _procEmi: Integer; const _verProc: WideString; 
                             _dhCont: TDateTime; const _xJust: WideString): WideString; safecall;
    function transportador2G(const _modFrete: WideString; const _transporta: WideString; 
                             const _retTransp: WideString; const _veicTransp: WideString; 
                             const _reboque: WideString; const _vagao: WideString; 
                             const _balsa: WideString; const _vol: WideString): WideString; safecall;
    function icms2G(const _orig: WideString; const _CST: WideString; _modBC: Integer; 
                    _pRedBC: Double; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                    _modBCST: Integer; _pMVAST: Double; _pRedBCST: Double; _vBCST: Double; 
                    _pICMSST: Double; _vICMSST: Double; _vBCSTRet: Double; _vICMSSRet: Double; 
                    _vBCSTDest: Double; _vICMSSTDest: Double; _motDesICMS: Integer; _pBCOp: Double; 
                    const _UFST: WideString; _pCredSN: Double; _vCredICMSSN: Double): WideString; safecall;
    function ISSQN2G(_vBC: Double; _vAliq: Double; _vISSQN: Double; const _cMunFG: WideString; 
                     _cListServ: Integer; const _cSitTrib: WideString): WideString; safecall;
    function infAdic2G(const _infAdFisco: WideString; const _infCpl: WideString; 
                       const _obsCont: WideString; const _obsFisco: WideString; 
                       const _procRef: WideString): WideString; safecall;
    function produto2G(const _cProd: WideString; const _cEAN: WideString; const _xProd: WideString; 
                       const _NCM: WideString; const _EXTIPI: WideString; _CFOP: Integer; 
                       const _uCom: WideString; const _qCom: WideString; const _vUnCom: WideString; 
                       _vProd: Double; const _cEANTrib: WideString; const _uTrib: WideString; 
                       const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                       _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                       const _DI: WideString; const _DetEspecifico: WideString; 
                       const _xPed: WideString; _nItemPed: Integer): WideString; safecall;
    function veicProd2G(_tpOp: Integer; const _chassi: WideString; const _cCor: WideString; 
                        const _xCor: WideString; const _pot: WideString; const _cilin: WideString; 
                        const _peloL: WideString; const _pesoB: WideString; 
                        const _nSerie: WideString; const _tpComb: WideString; 
                        const _nMotor: WideString; const _CMT: WideString; const _dist: WideString; 
                        const _anoMod: WideString; const _anoFab: WideString; 
                        const _tpPint: WideString; const _tpVeic: WideString; 
                        const _espVeic: WideString; const _VIN: WideString; 
                        const _condVeic: WideString; const _cMod: WideString; 
                        const _cCorDENATRAN: WideString; const _lota: WideString; 
                        const _tpRest: WideString): WideString; safecall;
    function comb2G(const _cProdANP: WideString; const _CODIF: WideString; _qTemp: Double; 
                    const _UFCons: WideString; _qBCProd: Double; _vAliqProd: Double; _vCIDE: Double): WideString; safecall;
    function NFRefP(_cUF: Integer; const _AAMM: WideString; const _CNPJ: WideString; 
                    const _CPF: WideString; const _IE: WideString; _mod: Integer; _serie: Integer; 
                    _nNF: Integer): WideString; safecall;
    function CTeRef(const _CTe: WideString): WideString; safecall;
    function ECFRef(const _mod: WideString; _nECF: Integer; _nCOO: Integer): WideString; safecall;
    function forDia(_dia: Integer; const _qtde: WideString): WideString; safecall;
    function deduc(const _xDed: WideString; _vDed: Double): WideString; safecall;
    function cana(const _safra: WideString; const _ref: WideString; const _forDias: WideString; 
                  const _qTotMes: WideString; const _qTotAnt: WideString; 
                  const _qTotGer: WideString; const _deducs: WideString; _vFor: Double; 
                  _vTotDed: Double; _vLiqFor: Double): WideString; safecall;
    function NFe2G(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                   const _emit: WideString; const _avulsa: WideString; const _dest: WideString; 
                   const _retirada: WideString; const _entrega: WideString; 
                   const _detalhes: WideString; const _total: WideString; 
                   const _transp: WideString; const _cobr: WideString; const _infAdic: WideString; 
                   const _exporta: WideString; const _compra: WideString; const _cana: WideString): WideString; safecall;
    function imposto2G(const _icms: WideString; const _ipi: WideString; const _ii: WideString; 
                       const _pis: WideString; const _pisst: WideString; const _cofins: WideString; 
                       const _cofinsst: WideString; const _issqn: WideString): WideString; safecall;
    function Txt2XML(const txt: WideString; geraChaveNFe: Integer; 
                     const codigoSeguranca: WideString; out txtNumerado: WideString; 
                     out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                     out msgResultado: WideString): WideString; safecall;
    function Txt2XML2G(const txt: WideString; geraChaveNFe: Integer; 
                       const codigoSeguranca: WideString; out txtNumerado: WideString; 
                       out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                       out msgResultado: WideString): WideString; safecall;
    function XML2Txt(const XML: WideString; out erros: WideString; out qtErros: Integer; 
                     out resultado: Integer; out msgResultado: WideString): WideString; safecall;
    function versaoLicenca(const CNPJ: WideString; const licenca: WideString): WideString; safecall;
    function ftpUpload(const servidorFTP: WideString; const nomeArquivoRemoto: WideString; 
                       const nomeArquivoLocal: WideString; const usuario: WideString; 
                       const senha: WideString; out msgResultado: WideString): Integer; safecall;
    function ftpDownload(const servidorFTP: WideString; const nomeArquivoRemoto: WideString; 
                         const nomeArquivoLocal: WideString; const usuario: WideString; 
                         const senha: WideString; out msgResultado: WideString): Integer; safecall;
    function EnviaManDest(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const CNPJAutor: WideString; const dhEvento: WideString; 
                          tpEvento: Integer; const xJust: WideString; out nroProtocolo: WideString; 
                          out dhProtocolo: WideString; const proxy: WideString; 
                          const usuario: WideString; const senha: WideString; 
                          const licenca: WideString): WideString; safecall;
    function ConsultaNFDest(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const CNPJ: WideString; indNFe: Integer; 
                            indEmi: Integer; const ultNSU: WideString; out dhResp: WideString; 
                            out indCont: Integer; out ultNSUConsultado: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; safecall;
    function DownloadNFWS(const siglaWS: WideString; const siglaUF: WideString; 
                          tipoAmbiente: Integer; const nomeCertificado: WideString; 
                          const Versao: WideString; out msgDados: WideString; 
                          out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; const CNPJDest: WideString; 
                          const chaveNFe: WideString; const proxy: WideString; 
                          const usuario: WideString; const senha: WideString; 
                          const licenca: WideString): WideString; safecall;
    function DownloadNFWeb(const nomeCertificado: WideString; const chaveNFe: WideString; 
                           const CNPJ: WideString; out resultado: Integer; 
                           out msgResultado: WideString; const licenca: WideString): WideString; safecall;
    function InutilizaNroNF2G_xBase(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const cUF: WideString; const ano: WideString; 
                                    const CNPJ: WideString; const modelo: WideString; 
                                    const serie: WideString; const nroNFeInicial: WideString; 
                                    const nroNFeFinal: WideString; const justificativa: WideString; 
                                    out nProtocoloInut: WideString; out dProtocoloInut: WideString; 
                                    const proxy: WideString; const licenca: WideString): WideString; safecall;
    function EnviaGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                       const Versao: WideString; var msgDados: WideString; 
                       out msgRetWS: WideString; out msgResultado: WideString; 
                       out nroRecibo: WideString; out dhRecibo: WideString; 
                       out tEstProc: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString): Integer; safecall;
    function BuscaGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                       const Versao: WideString; out msgDados: WideString; 
                       out msgRetWS: WideString; const nroRecibo: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString): WideString; safecall;
    function ConsultaConfigGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                                const Versao: WideString; out msgDados: WideString; 
                                const UF: WideString; const receita: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const proxy: WideString; const usuario: WideString; 
                                const senha: WideString): WideString; safecall;
    function CancelaNFEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveNFe: WideString; const nProtocolo: WideString; 
                             const justificativa: WideString; const dhEvento: WideString; 
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; safecall;
    function ConsultaNFEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                              const nomeCertificado: WideString; const Versao: WideString; 
                              out msgDados: WideString; out msgRetWS: WideString; 
                              out cStat: Integer; out msgResultado: WideString; 
                              const chaveNFe: WideString; out protNFe: WideString; 
                              out eventoCanc: WideString; out eventoCCe: WideString; 
                              const proxy: WideString; const usuario: WideString; 
                              const senha: WideString): WideString; safecall;
    function produto2GItem(const _cProd: WideString; const _cEAN: WideString; 
                           const _xProd: WideString; const _NCM: WideString; 
                           const _EXTIPI: WideString; _CFOP: Integer; const _uCom: WideString; 
                           const _qCom: WideString; const _vUnCom: WideString; _vProd: Double; 
                           const _cEANTrib: WideString; const _uTrib: WideString; 
                           const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                           _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                           const _DI: WideString; const _DetEspecifico: WideString; 
                           const _xPed: WideString; const _nItemPed: WideString): WideString; safecall;
    function imposto2GNovo(_vTotTrib: Double; const _icms: WideString; const _ipi: WideString; 
                           const _ii: WideString; const _pis: WideString; const _pisst: WideString; 
                           const _cofins: WideString; const _cofinsst: WideString; 
                           const _issqn: WideString): WideString; safecall;
    function totalICMSNovo(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                           vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                           vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                           vTotTrib: Double): WideString; safecall;
    function produto2GFCI(const _cProd: WideString; const _cEAN: WideString; 
                          const _xProd: WideString; const _NCM: WideString; 
                          const _EXTIPI: WideString; _CFOP: Integer; const _uCom: WideString; 
                          const _qCom: WideString; const _vUnCom: WideString; _vProd: Double; 
                          const _cEANTrib: WideString; const _uTrib: WideString; 
                          const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                          _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                          const _DI: WideString; const _DetEspecifico: WideString; 
                          const _xPed: WideString; const _nItemPed: WideString; 
                          const _nFCI: WideString): WideString; safecall;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                       const emailDestinatario: WideString; const emailBcc: WideString; 
                       const assunto: WideString; const mensagem: WideString; 
                       const arquivos: WideString; const smtpCliente: WideString; 
                       const smtpPorta: WideString; const smtpSSL: WideString; 
                       const smtpUsuario: WideString; const smtpSenha: WideString; 
                       const HTML: WideString; const confirmacao: WideString; 
                       out msgResultado: WideString; const timeout: WideString): Integer; safecall;
    function EnviaNFSincrono(const siglaWS: WideString; const NFe: WideString; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             out nroProtocolo: WideString; out dhProtocolo: WideString; 
                             out NFAssinada: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString; 
                             const licenca: WideString): WideString; safecall;
    function EnviaLoteV3(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         const msgDados: WideString; GZip: Integer; out msgRetWS: WideString; 
                         out msgResultado: WideString; out nRec: WideString; 
                         out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; safecall;
    function BuscaLoteV3(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const nroRecibo: WideString; 
                         out cMsg: WideString; out xMsg: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; safecall;
    function identificador300(cUF: Integer; cNF: Integer; const natOp: WideString; indPag: Integer; 
                              mod_: Integer; serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function destinatario300(const CNPJ: WideString; const CPF: WideString; 
                             const idEstrangeiro: WideString; const xNome: WideString; 
                             const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                             const xBairro: WideString; const cMun: WideString; 
                             const xMun: WideString; const UF: WideString; const CEP: WideString; 
                             const cPais: WideString; const xPais: WideString; 
                             const fone: WideString; const IE: WideString; const IESUF: WideString; 
                             const eMail: WideString): WideString; safecall;
    function pagamento(const tPag: WideString; vPag: Double; const CNPJ_Opc: WideString; 
                       const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; safecall;
    function NFe300(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; const dest: WideString; 
                    const retirada_Opc: WideString; const entrega_Opc: WideString; 
                    const detalhes: WideString; const total: WideString; const transp: WideString; 
                    const cobr_Opc: WideString; const pag_Opc: WideString; 
                    const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                    const compra_Opc: WideString; const cana_Opc: WideString): WideString; safecall;
    function geraUrlNFCe(const idToken: WideString; const Token: WideString; 
                         const versaoQRCode: WideString; const NFCe: WideString; 
                         var url: WideString; out msgResultado: WideString): Integer; safecall;
    function destinatario310(const CNPJ: WideString; const CPF: WideString; 
                             const idEstrangeiro: WideString; const xNome: WideString; 
                             const xLgr: WideString; const nro: WideString; 
                             const xCpl_Opc: WideString; const xBairro: WideString; 
                             const cMun: WideString; const xMun: WideString; const UF: WideString; 
                             const CEP_Opc: WideString; const cPais_Opc: WideString; 
                             const xPais_Opc: WideString; const fone_Opc: WideString; 
                             const indIEDest: WideString; const IE_Opc: WideString; 
                             const IESUF_Opc: WideString; const IM_Opc: WideString; 
                             const eMail_Opc: WideString): WideString; safecall;
    function NFe310(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; 
                    const dest_Opc: WideString; const retirada_Opc: WideString; 
                    const entrega_Opc: WideString; const detalhes: WideString; 
                    const total: WideString; const transp: WideString; const cobr_Opc: WideString; 
                    const pag_Opc: WideString; const infAdic_Opc: WideString; 
                    const exporta_Opc: WideString; const compra_Opc: WideString; 
                    const cana_Opc: WideString; const autXML_Opc: WideString): WideString; safecall;
    function produto310(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString): WideString; safecall;
    function adi310(nAdicao: Integer; nSeqAdic: Integer; const cFabricante: WideString; 
                    vDescDI_Opc: Double; const nDraw_Opc: WideString): WideString; safecall;
    function DI310(const nDI: WideString; const dDi: WideString; const xLocDesemb: WideString; 
                   const UFDesemb: WideString; const dDesemb: WideString; tpViaTransp: Integer; 
                   vAFRMM_Opc: Double; tpIntermedio: Integer; const CNPJ_Opc: WideString; 
                   const UFTerceiro_Opc: WideString; const cExportador: WideString; 
                   const adi: WideString): WideString; safecall;
    function detExport(const nDraw_Opc: WideString; const nRE: WideString; const chNFe: WideString; 
                       const qExport: WideString): WideString; safecall;
    function nRECOPI(const nRECOPI: WideString): WideString; safecall;
    function icms310(const orig: WideString; const CST: WideString; modBC: Integer; pRedBC: Double; 
                     vBC: Double; pICMS: Double; vICMS: Double; modBCST: Integer; pMVAST: Double; 
                     pRedBCST: Double; vBCST: Double; pICMSST: Double; vICMSST: Double; 
                     vBCSTRet: Double; vICMSSTRet: Double; vBCICMSSTDest: Double; 
                     vICMSSTDest: Double; motDesICMS: Integer; pBCOp: Double; 
                     const UFST: WideString; pCredSN: Double; vCredICMSSN: Double; 
                     vICMSDeson: Double; vICMSOp: Double; pDif: Double; vICMSDif: Double): WideString; safecall;
    function totalICMS310(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                          vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                          vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                          vTotTrib: Double; vICMSDeson: Double): WideString; safecall;
    function detalhe310(nItem: Integer; const produto: WideString; const imposto: WideString; 
                        const infAdProd_Opc: WideString; pDevol_Opc: Double; vIPIDevol_Opc: Double): WideString; safecall;
    function ISSQN310(vBC: Double; vAliq: Double; vISSQN: Double; const cMunFG: WideString; 
                      const cListServ: WideString; vDeducao_Opc: Double; vOutro_Opc: Double; 
                      vDescIncond_Opc: Double; vDescCond_Opc: Double; vISSRet_Opc: Double; 
                      const indISS: WideString; const cServico_Opc: WideString; 
                      const cMun_Opc: WideString; const cPais_Opc: WideString; 
                      const nProcesso_Opc: WideString; const indIncentivo: WideString): WideString; safecall;
    function totalISS310(vServ_Opc: Double; vBC_Opc: Double; vISS_Opc: Double; vPIS_Opc: Double; 
                         vCOFINS_Opc: Double; const dCompet: WideString; vDeducao_Opc: Double; 
                         vOutro_Opc: Double; vDescIncond_Opc: Double; vDescCond_Opc: Double; 
                         vISSRet_Opc: Double; const cRegTrib_Opc: WideString): WideString; safecall;
    function exporta310(const UFSaidaPais: WideString; const xLocEmbarq: WideString; 
                        const xLocDespacho_Opc: WideString): WideString; safecall;
    function comb310(const cProdANP: WideString; pMixGN_Opc: Double; const CODIF_Opc: WideString; 
                     qTemp_Opc: Double; const UFCons: WideString; qBCProd_Opc: Double; 
                     vAliqProd_Opc: Double; vCIDE_Opc: Double): WideString; safecall;
    function imposto310(vTotTrib: Double; const Grupo_Icms: WideString; 
                        const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                        const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                        const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                        const Grupo_Issqn: WideString): WideString; safecall;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; safecall;
    function ValidaProcNFe(const nomeArquivo: WideString; out resultado: Integer; 
                           const nomeCertificado: WideString; out msgResultado: WideString; 
                           const proxy_Opc: WideString; const usuario_Opc: WideString; 
                           const senha_Opc: WideString): WideString; safecall;
    function XML2Txt310(const XML: WideString; out erros: WideString; out qtErros: Integer; 
                        out resultado: Integer; out msgResultado: WideString): WideString; safecall;
    function ValidaSchemaXML(const XML: WideString; const NomeArquivoSchemaXML: WideString; 
                             out msgResultado: WideString; out qtdeErros: Integer; 
                             out erroXML: WideString): Integer; safecall;
    function geraQRCode(const url: WideString; escala: Integer; const nomeArquivo: WideString; 
                        out msgResultado: WideString): Integer; safecall;
    function NVE(const NVE: WideString): WideString; safecall;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        const chaveCTe: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString): Integer; safecall;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer; 
                       out msgResultado: WideString; const XMLNFe: WideString; 
                       const dhEvento: WideString; out nProtocoloEPEC: WideString; 
                       out dProtocoloEPEC: WideString; out listaChNFe: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; safecall;
    function geraPdfDACTE(const XML: WideString; const logo: WideString; 
                          const quadroRecibo: WideString; const visualizar: WideString; 
                          const parametros: WideString; out msgResultado: WideString): Integer; safecall;
    function Txt2XML310(const txt: WideString; geraChaveNFe: Integer; 
                        const codigoSeguranca: WideString; out txtNumerado: WideString; 
                        out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                        out msgResultado: WideString): WideString; safecall;
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
    function EnviaPedProrrog(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveNFe: WideString; const nProt: WideString; 
                             const itensPedido: WideString; const tpEvento: WideString; 
                             textoAcentuado: Integer; nroSeq: Integer; 
                             const dataEvento: WideString; out nroProtocolo: WideString; 
                             out dhProtocolo: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString; 
                             const licenca: WideString): WideString; safecall;
    function itemPedido(const numItem: WideString; const qtdeItem: WideString): WideString; safecall;
    function EnviaCancPedProrrog(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveNFe: WideString; const tpEvento: WideString; 
                                 const idPedidoCancelado: WideString; const nProt: WideString; 
                                 textoAcentuado: Integer; nroSeq: Integer; 
                                 const dataEvento: WideString; out nroProtocolo: WideString; 
                                 out dhProtocolo: WideString; const proxy: WideString; 
                                 const usuario: WideString; const senha: WideString; 
                                 const licenca: WideString): WideString; safecall;
    function encerrante(const nBico: WideString; const nBomba_Opc: WideString; 
                        const nTanque: WideString; const vEncIni: WideString; 
                        const vEncFin: WideString): WideString; safecall;
    function combNT2015002(const cProdANP: WideString; pMixGN_Opc: Double; 
                           const CODIF_Opc: WideString; qTemp_Opc: Double; 
                           const UFCons: WideString; qBCProd_Opc: Double; vAliqProd_Opc: Double; 
                           vCIDE_Opc: Double; const encerrante_Opc: WideString): WideString; safecall;
    function pagamentoNT2015002(const tPag: WideString; vPag: Double; const CNPJ_Opc: WideString; 
                                const tBand_Opc: WideString; const cAut_Opc: WideString; 
                                const tpIntegra_Opc: WideString): WideString; safecall;
    function AssinarNFCe(const NFe: WideString; const nomeCertificado: WideString; 
                         const idToken: WideString; const Token: WideString; 
                         const versaoQRCode: WideString; const URLConsulta: WideString; 
                         const indSinc: WideString; out cStat: Integer; 
                         out msgResultado: WideString; out lote: WideString; out urlNFCe: WideString): WideString; safecall;
    function produtoNT2015003(const cProd: WideString; const cEAN: WideString; 
                              const xProd: WideString; const NCM: WideString; 
                              const NVE_Opc: WideString; const CEST_Opc: WideString; 
                              const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                              const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                              const cEANTrib: WideString; const uTrib: WideString; 
                              const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                              vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                              const DI_Opc: WideString; const detExport_Opc: WideString; 
                              const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                              const nItemPed_Opc: WideString; const nFCI_Opc: WideString): WideString; safecall;
    function ICMSUFDest(vBCUFDest: Double; pFCPUFDest: Double; pICMSUFDest: Double; 
                        pICMSInter: Double; pICMSInterPart: Double; vFCPUFDest: Double; 
                        vICMSUFDest: Double; vICMSUFRemet: Double): WideString; safecall;
    function totalICMSNT2015003(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                vOutro: Double; vNF: Double; vTotTrib: Double; vICMSDeson: Double; 
                                vICMSUFDest_Opc: Double; vICMSUFRemet_Opc: Double; 
                                vFCPUFDest_Opc: Double): WideString; safecall;
    function impostoNT2015003(vTotTrib: Double; const Grupo_Icms: WideString; 
                              const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                              const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                              const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                              const Grupo_Issqn: WideString; const Grupo_ICMSUFDest: WideString): WideString; safecall;
    function calcICMSUFDest(formaCalculo: Integer; valorBase: Double; aliqDestino: Double; 
                            aliqInterestadual: Double; aliqFCP: Double; anoOperacao: Integer; 
                            out vBCUFDest: Double; out pFCPUFDest: Double; out pICMSUFDest: Double; 
                            out pICMSInter: Double; out pICMSInterPart: Double; 
                            out vFCPUFDest: Double; out vICMSUFDest: Double; 
                            out vICMSUFRemet: Double; out vBCOpeInter: Double; 
                            out vICMSOpeInter: Double; out cResultado: Integer; 
                            out msgResultado: WideString): WideString; safecall;
    function Txt2XML2015003(const txt: WideString; geraChaveNFe: Integer; 
                            const codigoSeguranca: WideString; out txtNumerado: WideString; 
                            out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                            out msgResultado: WideString): WideString; safecall;
    function consChNFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const CNPJ: WideString; 
                       const chaveNFe: WideString; out verAplic: WideString; 
                       out NSUXML: WideString; out schemaXML: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; safecall;
    function identificador400(cUF: Integer; cNF: Integer; const natOp: WideString; mod_: Integer; 
                              serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function produto400(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const CEST_Opc: WideString; const indEscala_Opc: WideString; 
                        const CNPJFab_Opc: WideString; const cBenef_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                        const rastro_Opc: WideString): WideString; safecall;
    function rastro(const nLote: WideString; qLote: Double; dFab: TDateTime; dVal: TDateTime; 
                    const cAgreg_Opc: WideString): WideString; safecall;
    function med400(const cProdANVISA: WideString; vPMC: Double): WideString; safecall;
    function comb400(const cProdANP: WideString; const descANP: WideString; pGLP_Opc: Double; 
                     pGNn_Opc: Double; pGNi_Opc: Double; vPart_Opc: Double; 
                     const CODIF_Opc: WideString; qTemp_Opc: Double; const UFCons: WideString; 
                     qBCProd_Opc: Double; vAliqProd_Opc: Double; vCIDE_Opc: Double; 
                     const encerrante_Opc: WideString): WideString; safecall;
    function icms400(const orig: WideString; const CST: WideString; modBC: Integer; pRedBC: Double; 
                     vBC: Double; pICMS: Double; vICMS: Double; modBCST: Integer; pMVAST: Double; 
                     pRedBCST: Double; vBCST: Double; pICMSST: Double; vICMSST: Double; 
                     vBCSTRet: Double; vICMSSRet: Double; vBCSTDest: Double; vICMSSTDest: Double; 
                     motDesICMS: Integer; pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                     vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                     vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                     vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                     pFCPSTRet: Double; vFCPSTRet: Double; pST: Double): WideString; safecall;
    function ICMSUFDest400(vBCUFDest: Double; vBCFCPUFDest_Opc: Double; pFCPUFDest_Opc: Double; 
                           pICMSUFDest: Double; pICMSInter: Double; pICMSInterPart: Double; 
                           vFCPUFDest_Opc: Double; vICMSUFDest: Double; vICMSUFRemet: Double): WideString; safecall;
    function totalICMS400(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                          vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                          vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                          vTotTrib: Double; vICMSDeson: Double; vICMSUFDest_Opc: Double; 
                          vICMSUFRemet_Opc: Double; vFCPUFDest_Opc: Double; vFCP: Double; 
                          vFCPST: Double; vFCPSTRet: Double; vIPIDevol: Double): WideString; safecall;
    function AssinarNFCe400(const NFe: WideString; const nomeCertificado: WideString; 
                            const idToken: WideString; const Token: WideString; 
                            const versaoQRCode: WideString; const URLConsulta: WideString; 
                            const urlChave: WideString; const indSinc: WideString; 
                            out cStat: Integer; out msgResultado: WideString; out lote: WideString; 
                            out urlNFCe: WideString): WideString; safecall;
    function pagamento400(const detPag: WideString; vTroco_Opc: Double): WideString; safecall;
    function detPag(const indPag_Opc: WideString; const tPag: WideString; vPag: Double; 
                    const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                    const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; safecall;
    function IPI400(const CNPJProd: WideString; const cSelo: WideString; qSelo: Double; 
                    const cEnq: WideString; const CST: WideString; vBC: Double; pIPI: Double; 
                    vIPI: Double; qUnid: Double; vUnid: Double): WideString; safecall;
    function produto400VFP(const cProd: WideString; const cEAN: WideString; 
                           const xProd: WideString; const NCM: WideString; 
                           const NVE_Opc: WideString; const CEST_Opc: WideString; 
                           const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                           const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                           const cEANTrib: WideString; const uTrib: WideString; 
                           const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                           vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                           const DI_Opc: WideString; const detExport_Opc: WideString; 
                           const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                           const nItemPed_Opc: WideString; const camposV400: WideString): WideString; safecall;
    function icms400VFP(const orig: WideString; const CST: WideString; modBC: Integer; 
                        pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                        modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                        pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSTRet: Double; 
                        vBCICMSSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                        pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                        vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                        vICMSDif: Double; const camposV400: WideString): WideString; safecall;
    function calcICMSUFDest400(formaCalculo: Integer; valorBase: Double; aliqDestino: Double; 
                               aliqInterestadual: Double; valorBaseFCP: Double; aliqFCP: Double; 
                               anoOperacao: Integer; out vBCUFDest: Double; out pFCPUFDest: Double; 
                               out pICMSUFDest: Double; out pICMSInter: Double; 
                               out pICMSInterPart: Double; out vFCPUFDest: Double; 
                               out vICMSUFDest: Double; out vICMSUFRemet: Double; 
                               out vBCOpeInter: Double; out vICMSOpeInter: Double; 
                               out cResultado: Integer; out msgResultado: WideString; 
                               out vBCFCPUFDest: Double): WideString; safecall;
    function envRegSaida(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out msgResultado: WideString; const chaveNFe: WideString; 
                         const nSeqRegSaida: WideString; const dtHrRegSaida: WideString; 
                         const placaVeiculo_Opc: WideString; const UFVeiculo_Opc: WideString; 
                         const placaCarreta_Opc: WideString; const UFCarreta_Opc: WideString; 
                         const placaCarreta2_Opc: WideString; const UFCarreta2_Opc: WideString; 
                         const qtdVias_Opc: WideString; const formSeg_Opc: WideString; 
                         out dhRecbto: WideString; out nProt: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; safecall;
    function cancRegSaida(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const nProt: WideString; const xJust: WideString; 
                          out dhRecbto: WideString; out nProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): Integer; safecall;
    function icmsEfet(const orig: WideString; const CST: WideString; vBCSTRet_Opc: Double; 
                      pST_Opc: Double; vICMSSTRet_Opc: Double; vBCFCPSTRet_Opc: Double; 
                      pFCPSTRet_Opc: Double; vFCPSTRet_Opc: Double; pRedBCEfet_Opc: Double; 
                      vBCEfet_Opc: Double; pICMSEfet_Opc: Double; vICMSEfet_Opc: Double): WideString; safecall;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveCTe: WideString; const CNPJTomador: WideString; 
                                 const xObs: WideString; const dhEvento: WideString; 
                                 out nProtocolo: WideString; out dProtocolo: WideString; 
                                 const proxy: WideString; const usuario: WideString; 
                                 const senha: WideString; const licenca: WideString): WideString; safecall;
    function CancelaNFSubst(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const nProtocolo: WideString; const justificativa: WideString; 
                            const dhEvento: WideString; const verAplic: WideString; 
                            const chaveNFeSubst: WideString; out nProtocoloCanc: WideString; 
                            out dProtocoloCanc: WideString; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; safecall;
    function infRespTec(const CNPJ: WideString; const xContato: WideString; 
                        const eMail: WideString; const fone: WideString; const idCSRT: WideString; 
                        const CSRT_Opc: WideString; const chaveNFe_Opc: WideString): WideString; safecall;
    function localEntregaNT201805(const CNPJ: WideString; const CPF: WideString; 
                                  const xNome_Opc: WideString; const xLgr: WideString; 
                                  const nro: WideString; const xCpl_Opc: WideString; 
                                  const xBairro: WideString; const cMun: WideString; 
                                  const xMun: WideString; const UF: WideString; 
                                  const CEP_Opc: WideString; const cPais_Opc: WideString; 
                                  const xPais_Opc: WideString; const fone_Opc: WideString; 
                                  const eMail_Opc: WideString; const IE_Opc: WideString): WideString; safecall;
    function localRetiradaNT201805(const CNPJ: WideString; const CPF: WideString; 
                                   const xNome_Opc: WideString; const xLgr: WideString; 
                                   const nro: WideString; const xCpl_Opc: WideString; 
                                   const xBairro: WideString; const cMun: WideString; 
                                   const xMun: WideString; const UF: WideString; 
                                   const CEP_Opc: WideString; const cPais_Opc: WideString; 
                                   const xPais_Opc: WideString; const fone_Opc: WideString; 
                                   const eMail_Opc: WideString; const IE_Opc: WideString): WideString; safecall;
    function medNT201805(const cProdANVISA: WideString; const xMotivoIsencao_Opc: WideString; 
                         vPMC: Double): WideString; safecall;
    function icmsEfetNT201805(const orig: WideString; const CST: WideString; vBCSTRet: Double; 
                              pST: Double; vICMSSubstituto: Double; vICMSSTRet: Double; 
                              vBCFCPSTRet: Double; pFCPSTRet: Double; vFCPSTRet: Double; 
                              pRedBCEfet: Double; vBCEfet: Double; pICMSEfet: Double; 
                              vICMSEfet: Double; vBCSTDest: Double; vICMSSTDest: Double): WideString; safecall;
    function NFe201805(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const emit: WideString; const avulsa_Opc: WideString; 
                       const dest_Opc: WideString; const retirada_Opc: WideString; 
                       const entrega_Opc: WideString; const detalhes: WideString; 
                       const total: WideString; const transp: WideString; 
                       const cobr_Opc: WideString; const pag_Opc: WideString; 
                       const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                       const compra_Opc: WideString; const cana_Opc: WideString; 
                       const autXML_Opc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function identificador202006(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                 mod_: Integer; serie: Integer; nNF: Integer; 
                                 const dhEmi: WideString; const dhSaiEnt: WideString; 
                                 tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                 const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                 cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                 indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                 const dhCont_Opc: WideString; const xJust_Opc: WideString; 
                                 indIntermed_Opc: Integer): WideString; safecall;
    function infIntermed(const CNPJ: WideString; const idCadIntTran: WideString): WideString; safecall;
    function NFe202006(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const emit: WideString; const avulsa_Opc: WideString; 
                       const dest_Opc: WideString; const retirada_Opc: WideString; 
                       const entrega_Opc: WideString; const detalhes: WideString; 
                       const total: WideString; const transp: WideString; 
                       const cobr_Opc: WideString; const pag_Opc: WideString; 
                       const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                       const compra_Opc: WideString; const cana_Opc: WideString; 
                       const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                       const infIntermed_Opc: WideString): WideString; safecall;
    function EnviaAtorInter(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const CNPJAutor: WideString; const dhEvento: WideString; 
                            const cOrgaoAutor: WideString; tpAutor: Integer; 
                            const verAplic: WideString; const CNPJCPFAutorizado: WideString; 
                            tpAutorizacao: Integer; nroSeqEvento: Integer; 
                            out nroProtocolo: WideString; out dhProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; safecall;
    function detPag202006(const indPag_Opc: WideString; const tPag: WideString; 
                          const xPag_Opc: WideString; vPag: Double; 
                          const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                          const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; safecall;
    function EnviaCENFE(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const dhEvento: WideString; nroCENFe: Integer; const verAplic: WideString; 
                        const dhEntrega: WideString; const nDoc: WideString; 
                        const xNome: WideString; latGPS: Double; longGPS: Double; 
                        const hashComprovante: WideString; const dhHashComprovante: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function calcSha1(const texto: WideString): WideString; safecall;
    function EnviaCancCENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const dhEvento: WideString; nroCancCE: Integer; 
                            const verAplic: WideString; const nProtEvento: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; safecall;
    function icmsNT2020005(const orig: WideString; const CST: WideString; modBC: Integer; 
                           pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                           modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                           pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSRet: Double; 
                           vBCSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                           pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                           vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                           vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                           vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                           pFCPSTRet: Double; vFCPSTRet: Double; pST: Double; pFCPDif: Double; 
                           vFCPDif: Double; vFCPEfet: Double; vICMSSTDeson: Double; 
                           motDesICMSST: Integer): WideString; safecall;
    function PISSTNT2020005(vBC: Double; pPIS: Double; vPIS: Double; qBCProd: Double; 
                            vAliqProd: Double; indSomaPISST: Integer): WideString; safecall;
    function COFINSSTNT2020005(vBC: Double; pCOFINS: Double; vCOFINS: Double; qBCProd: Double; 
                               vAliqProd: Double; indSomaCOFINSST: Integer): WideString; safecall;
    function detalheNT2021004(nItem: Integer; const produto: WideString; const imposto: WideString; 
                              const infAdProd_Opc: WideString; pDevol_Opc: Double; 
                              vIPIDevol_Opc: Double; const obsContItem_Opc: WideString; 
                              const obsFiscoItem_Opc: WideString): WideString; safecall;
    function procRefNT2021004(const nProc: WideString; indProc: Integer; const tpAto_Opc: WideString): WideString; safecall;
    function ConsGTIN(const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; const GTIN: WideString; out dhResp: WideString; 
                      out tpGTIN: WideString; out xProd: WideString; out NCM: WideString; 
                      out CEST1: WideString; out CEST2: WideString; out CEST3: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function NFeSigRef(const NFe: WideString): WideString; safecall;
    function combNT2023001(const cProdANP: WideString; const descANP: WideString; pGLP_Opc: Double; 
                           pGNn_Opc: Double; pGNi_Opc: Double; vPart_Opc: Double; 
                           const CODIF_Opc: WideString; qTemp_Opc: Double; 
                           const UFCons: WideString; qBCProd_Opc: Double; vAliqProd_Opc: Double; 
                           vCIDE_Opc: Double; const encerrante_Opc: WideString; pBio_Opc: Double; 
                           const origComb_Opc: WideString): WideString; safecall;
    function origComb(indImport: Integer; cUFOrig: Integer; pOrig: Double): WideString; safecall;
    function icms02(const orig: WideString; qBCMono_Opc: Double; adRemICMS: Double; 
                    vICMSMono: Double): WideString; safecall;
    function icms15(const orig: WideString; qBCMono_Opc: Double; adRemICMS: Double; 
                    vICMSMono: Double; qBCMonoReten_Opc: Double; adRemICMSReten: Double; 
                    vICMSMonoReten: Double; pRedAdRem_Opc: Double; motRedAdRem_Opc: Integer): WideString; safecall;
    function icms53(const orig: WideString; qBCMono_Opc: Double; adRemICMS_Opc: Double; 
                    vICMSMonoOp_Opc: Double; pDif_Opc: Double; vICMSMonoDif_Opc: Double; 
                    vICMSMono_Opc: Double): WideString; safecall;
    function icms61(const orig: WideString; qBCMonoRet_Opc: Double; adRemICMSRet: Double; 
                    vICMSMonoRet: Double): WideString; safecall;
    function totalICMSNT2023001(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                vOutro: Double; vNF: Double; vTotTrib: Double; vICMSDeson: Double; 
                                vICMSUFDest_Opc: Double; vICMSUFRemet_Opc: Double; 
                                vFCPUFDest_Opc: Double; vFCP: Double; vFCPST: Double; 
                                vFCPSTRet: Double; vIPIDevol: Double; qBCMono_Opc: Double; 
                                vICMSMono_Opc: Double; qBCMonoReten_Opc: Double; 
                                vICMSMonoReten_Opc: Double; qBCMonoRet_Opc: Double; 
                                vICMSMonoRet_Opc: Double): WideString; safecall;
    function totalICMSNT2023001VFP(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                   vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                   vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                   vOutro: Double; vNF: Double; vTotTrib: Double; 
                                   vICMSDeson: Double; vICMSUFDest_Opc: Double; 
                                   vICMSUFRemet_Opc: Double; vFCPUFDest_Opc: Double; vFCP: Double; 
                                   vFCPST: Double; vFCPSTRet: Double; vIPIDevol: Double; 
                                   const camposNT2023001: WideString): WideString; safecall;
    function detPag2023004(const indPag_Opc: WideString; const tPag: WideString; 
                           const xPag_Opc: WideString; vPag: Double; 
                           const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                           const tBand_Opc: WideString; const cAut_Opc: WideString; 
                           const dPag_Opc: WideString; const CNPJPag_Opc: WideString; 
                           const UFPag_Opc: WideString; const CNPJReceb_Opc: WideString; 
                           const idTermPag_Opc: WideString): WideString; safecall;
    function icmsNT2023004(const orig: WideString; const CST: WideString; modBC: Integer; 
                           pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                           modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                           pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSRet: Double; 
                           vBCSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                           pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                           vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                           vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                           vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                           pFCPSTRet: Double; vFCPSTRet: Double; pST: Double; pFCPDif: Double; 
                           vFCPDif: Double; vFCPEfet: Double; vICMSSTDeson: Double; 
                           motDesICMSST: Integer; indDeduzDeson: Integer; 
                           const cBenefRBC: WideString): WideString; safecall;
    function CredPresumido(const cCredPresumido: WideString; pCredPresumido: Double; 
                           vCredPresumido: Double): WideString; safecall;
    function produtoNT2019001(const cProd: WideString; const cEAN: WideString; 
                              const xProd: WideString; const NCM: WideString; 
                              const NVE_Opc: WideString; const CEST_Opc: WideString; 
                              const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                              const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                              CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                              const vUnCom: WideString; vProd: Double; const cEANTrib: WideString; 
                              const uTrib: WideString; const qTrib: WideString; 
                              const vUnTrib: WideString; vFrete: Double; vSeg: Double; 
                              vDesc: Double; vOutro: Double; indTot: Integer; 
                              const DI_Opc: WideString; const detExport_Opc: WideString; 
                              const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                              const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                              const rastro_Opc: WideString; const credPresumido_Opc: WideString): WideString; safecall;
    function EnviaIENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const CNPJAutor: WideString; 
                        const chaveNFe: WideString; const dhEvento: WideString; nSeqIENFe: Integer; 
                        const verAplic: WideString; const dhTentativaEntrega: WideString; 
                        nTentativa: Integer; tpMotivo: Integer; const xJustMotivo: WideString; 
                        latGPS: Double; longGPS: Double; const hashTentativaEntrega: WideString; 
                        const dhHashTentativaEntrega: WideString; out nProtocolo: WideString; 
                        out dProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; safecall;
    function EnviaCancIENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const CNPJAutor: WideString; 
                            const chaveNFe: WideString; const dhEvento: WideString; 
                            nSeqCancIENFe: Integer; const verAplic: WideString; 
                            const nProtEvento: WideString; out nProtocolo: WideString; 
                            out dProtocolo: WideString; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; safecall;
    function EnviaManDest2(const siglaWS: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                           out msgResultado: WideString; const chaveNFe: WideString; 
                           const CNPJAutor: WideString; const dhEvento: WideString; 
                           tpEvento: Integer; nSeqEvento: Integer; const xJust: WideString; 
                           out nroProtocolo: WideString; out dhProtocolo: WideString; 
                           const proxy: WideString; const usuario: WideString; 
                           const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaECONF(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const detPag: WideString; const dhEvento: WideString; nSeqEvento: Integer; 
                        const verAplic: WideString; out nProtocolo: WideString; 
                        out dProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; safecall;
    function EnviaCancECONF(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const nProtEvento: WideString; const dhEvento: WideString; 
                            nSeqEvento: Integer; const verAplic: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; safecall;
    function detPagECONF(const indPag_Opc: WideString; const tPag: WideString; 
                         const xPag_Opc: WideString; vPag: Double; const dPag: WideString; 
                         const CNPJPag_Opc: WideString; const UFPag_Opc: WideString; 
                         const CNPJIF_Opc: WideString; const tBand_Opc: WideString; 
                         const cAut_Opc: WideString; const CNPJReceb_Opc: WideString; 
                         const UFReceb_Opc: WideString): WideString; safecall;
    function defensivo(const nReceituario: WideString; const CPFRespTec: WideString): WideString; safecall;
    function guiaTransito(tpGuia: Integer; const UFGuia_Opc: WideString; 
                          const serieGuia_Opc: WideString; const nGuia: WideString): WideString; safecall;
    function NFe2024003(const Versao: WideString; const Id: WideString; const ide: WideString; 
                        const emit: WideString; const avulsa_Opc: WideString; 
                        const dest_Opc: WideString; const retirada_Opc: WideString; 
                        const entrega_Opc: WideString; const detalhes: WideString; 
                        const total: WideString; const transp: WideString; 
                        const cobr_Opc: WideString; const pag_Opc: WideString; 
                        const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                        const compra_Opc: WideString; const cana_Opc: WideString; 
                        const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                        const infIntermed_Opc: WideString; const agropecuario_Opc: WideString): WideString; safecall;
    function identificadorRTC(cUF: Integer; cNF: Integer; const natOp: WideString; mod_: Integer; 
                              serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont: WideString; const xJust: WideString; 
                              indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                              const tpNFDebito_Opc: WideString; const tpNFCredito_Opc: WideString; 
                              const gCompraGov_Opc: WideString; 
                              const NFePagAntecipado_Opc: WideString): WideString; safecall;
    function gCompraGov(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer): WideString; safecall;
    function IS_(const CSTIS: WideString; const cClassTribIS: WideString; vBCIS: Double; 
                 PIS: Double; adRemIS_Opc: Double; const uTrib_Opc: WideString; qTrib_Opc: Double; 
                 vIS: Double): WideString; safecall;
    function IBSCBS(const CST: WideString; const cClassTrib: WideString; 
                    const gTributo: WideString; const gCredPresIBSZFM_Opc: WideString): WideString; safecall;
    function gIBSUF(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                    pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSUF: Double): WideString; safecall;
    function gIBSMun(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                     pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSMun: Double): WideString; safecall;
    function gCBS(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                  pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vCBS: Double): WideString; safecall;
    function gTribRegular(const CSTReg: WideString; const cClassTribReg: WideString; 
                          pAliqEfetRegIBSUF: Double; vTribRegIBSUF: Double; 
                          pAliqEfetRegIBSMun: Double; vTribRegIBSMun: Double; 
                          pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; safecall;
    function gIBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double; 
                          vCredPresCondSus_Alt: Double): WideString; safecall;
    function gCBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double; 
                          vCredPresCondSus_Alt: Double): WideString; safecall;
    function gIBSCBSMono(qBCMono: Double; adRemIBS: Double; adRemCBS: Double; vIBSMono: Double; 
                         vCBSMono: Double; qBCMonoReten_Opc: Double; adRemIBSReten_Opc: Double; 
                         vIBSMonoReten_Opc: Double; adRemCBSReten_Opc: Double; 
                         vCBSMonoReten_Opc: Double; qBCMonoRet_Opc: Double; 
                         adRemIBSRet_Opc: Double; vIBSMonoRet_Opc: Double; adRemCBSRet_Opc: Double; 
                         vCBSMonoRet_Opc: Double; pDifIBS_Opc: Double; vIBSMonoDif_Opc: Double; 
                         pDifCBS_Opc: Double; vCBSMonoDif_Opc: Double; vTotIBSMonoItem: Double; 
                         vTotCBSMonoItem: Double): WideString; safecall;
    function DFeReferenciado(const chaveAcesso: WideString; nItem: Integer): WideString; safecall;
    function gIBSCBS(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString; 
                     vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString; 
                     const gIBSCredPres_Opc: WideString; const gCBSCredPres_Opc: WideString; 
                     const gTribCompraGov_Opc: WideString): WideString; safecall;
    function impostoRTC(vTotTrib: Double; const Grupo_Icms: WideString; 
                        const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                        const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                        const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                        const Grupo_Issqn: WideString; const Grupo_ICMSUFDest: WideString; 
                        const Grupo_IS: WideString; const Grupo_IBSCBS: WideString): WideString; safecall;
    function gIBSTot(vDif_UF: Double; vDevTrib_UF: Double; vIBSUF: Double; vDif_Mun: Double; 
                     vDevTrib_Mun: Double; vIBSMun: Double; vIBS: Double; vCredPres: Double; 
                     vCredPresCondSus: Double): WideString; safecall;
    function gCBSTot(vDif: Double; vDevTrib: Double; vCBS: Double; vCredPres: Double; 
                     vCredPresCondSus: Double): WideString; safecall;
    function gMonoTot(vIBSMono: Double; vCBSMono: Double; vIBSMonoReten: Double; 
                      vCBSMonoReten: Double; vIBSMonoRet: Double; vCBSMonoRet: Double): WideString; safecall;
    function IBSCBSTot(vBCIBSCBS: Double; const gIBS_Opc: WideString; const gCBS_Opc: WideString; 
                       const gMono_Opc: WideString): WideString; safecall;
    function totalRTC(const ICMSTot: WideString; const ISSQNtot: WideString; 
                      const retTrib: WideString; vIS: Double; const IBSCBSTot: WideString; 
                      vNFTot: Double): WideString; safecall;
    function detalheRTC(nItem: Integer; const produto: WideString; const imposto: WideString; 
                        const infAdProd_Opc: WideString; pDevol_Opc: Double; vIPIDevol_Opc: Double; 
                        const obsContItem_Opc: WideString; const obsFiscoItem_Opc: WideString; 
                        vItem_Opc: Double; const DFeReferenciado_Opc: WideString): WideString; safecall;
    function ev112110_informaPagto(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; out nProtocolo: WideString; 
                                   out dProtocolo: WideString; out msgDados: WideString; 
                                   out msgRetWS: WideString; out cStat: Integer; 
                                   out msgResultado: WideString; const proxy: WideString; 
                                   const usuario: WideString; const senha: WideString; 
                                   const licenca: WideString): WideString; safecall;
    function ev211110_credPresumido(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    tpAutor: Integer; const CNPJAutor: WideString; 
                                    const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                    const dhEvento: WideString; nSeqEvento: Integer; 
                                    const verAplic: WideString; const gCredPres: WideString; 
                                    out nProtocolo: WideString; out dProtocolo: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const proxy: WideString; const usuario: WideString; 
                                    const senha: WideString; const licenca: WideString): WideString; safecall;
    function gCredPres(nItem: Integer; vBC: Double; const cCredPresIBS_Opc: WideString; 
                       pCredPresIBS_Opc: Double; vCredPresIBS_Opc: Double; 
                       const cCredPresCBS_Opc: WideString; pCredPresCBS_Opc: Double; 
                       vCredPresCBS_Opc: Double): WideString; safecall;
    function ev211120_destConsumo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                  const nomeCertificado: WideString; const Versao: WideString; 
                                  tpAutor: Integer; const CNPJAutor: WideString; 
                                  const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                  const dhEvento: WideString; nSeqEvento: Integer; 
                                  const verAplic: WideString; const gConsumo: WideString; 
                                  out nProtocolo: WideString; out dProtocolo: WideString; 
                                  out msgDados: WideString; out msgRetWS: WideString; 
                                  out cStat: Integer; out msgResultado: WideString; 
                                  const proxy: WideString; const usuario: WideString; 
                                  const senha: WideString; const licenca: WideString): WideString; safecall;
    function gConsumo(nItem: Integer; vIBS: Double; vCBS: Double; qConsumo: Double; 
                      const uConsumo: WideString; const DFeRef: WideString; nItemDFeRef: Integer): WideString; safecall;
    function ev211124_perdaFOB(const siglaWS: WideString; tipoAmbiente: Integer; 
                               const nomeCertificado: WideString; const Versao: WideString; 
                               tpAutor: Integer; const CNPJAutor: WideString; 
                               const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                               const dhEvento: WideString; nSeqEvento: Integer; 
                               const verAplic: WideString; const gPerecimento: WideString; 
                               out nProtocolo: WideString; out dProtocolo: WideString; 
                               out msgDados: WideString; out msgRetWS: WideString; 
                               out cStat: Integer; out msgResultado: WideString; 
                               const proxy: WideString; const usuario: WideString; 
                               const senha: WideString; const licenca: WideString): WideString; safecall;
    function gPerecimento(nItem: Integer; vIBS: Double; vCBS: Double; qPerecimento: Double; 
                          const uPerecimento: WideString): WideString; safecall;
    function ev211128_aceiteDebito(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; safecall;
    function ev211130_imobilizaItem(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    tpAutor: Integer; const CNPJAutor: WideString; 
                                    const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                    const dhEvento: WideString; nSeqEvento: Integer; 
                                    const verAplic: WideString; const gImobilizacao: WideString; 
                                    out nProtocolo: WideString; out dProtocolo: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const proxy: WideString; const usuario: WideString; 
                                    const senha: WideString; const licenca: WideString): WideString; safecall;
    function gImobilizacao(nItem: Integer; vIBS: Double; vCBS: Double; qImobilizado: Double; 
                           const uImobilizado: WideString): WideString; safecall;
    function ev211140_credCombustivel(const siglaWS: WideString; tipoAmbiente: Integer; 
                                      const nomeCertificado: WideString; const Versao: WideString; 
                                      tpAutor: Integer; const CNPJAutor: WideString; 
                                      const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                      const dhEvento: WideString; nSeqEvento: Integer; 
                                      const verAplic: WideString; const gConsumoComb: WideString; 
                                      out nProtocolo: WideString; out dProtocolo: WideString; 
                                      out msgDados: WideString; out msgRetWS: WideString; 
                                      out cStat: Integer; out msgResultado: WideString; 
                                      const proxy: WideString; const usuario: WideString; 
                                      const senha: WideString; const licenca: WideString): WideString; safecall;
    function gConsumoComb(nItem: Integer; vIBS: Double; vCBS: Double; qComb: Double; 
                          const uComb: WideString): WideString; safecall;
    function ev211150_credBensServicos(const siglaWS: WideString; tipoAmbiente: Integer; 
                                       const nomeCertificado: WideString; const Versao: WideString; 
                                       tpAutor: Integer; const CNPJAutor: WideString; 
                                       const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                       const dhEvento: WideString; nSeqEvento: Integer; 
                                       const verAplic: WideString; const gCredito: WideString; 
                                       out nProtocolo: WideString; out dProtocolo: WideString; 
                                       out msgDados: WideString; out msgRetWS: WideString; 
                                       out cStat: Integer; out msgResultado: WideString; 
                                       const proxy: WideString; const usuario: WideString; 
                                       const senha: WideString; const licenca: WideString): WideString; safecall;
    function gCredito(nItem: Integer; vCredIBS: Double; vCredCBS: Double): WideString; safecall;
    function ev212110_transCredIBS(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; safecall;
    function ev212120_transCredCBS(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; safecall;
    function ev110001_cancEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 tpAutor: Integer; const CNPJAutor: WideString; 
                                 const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                 const dhEvento: WideString; nSeqEvento: Integer; 
                                 const verAplic: WideString; const tpEventoAut: WideString; 
                                 const nProtEvento: WideString; out nProtocolo: WideString; 
                                 out dProtocolo: WideString; out msgDados: WideString; 
                                 out msgRetWS: WideString; out cStat: Integer; 
                                 out msgResultado: WideString; const proxy: WideString; 
                                 const usuario: WideString; const senha: WideString; 
                                 const licenca: WideString): WideString; safecall;
    function refNFe(const chaveNFe: WideString): WideString; safecall;
    function gTransfCred(vIBS: Double; vCBS: Double): WideString; safecall;
    function gTribCompraGov(pAliqIBSUF: Double; vTribIBSUF: Double; pAliqIBSMun: Double; 
                            vTribIBSMun: Double; pAliqCBS: Double; vTribCBS: Double): WideString; safecall;
    function gCredPresIBSZFM(tpCredPresIBSZFM: Integer; vCredPresIBSZFM: Double): WideString; safecall;
    function ev112130_perdaCIF(const siglaWS: WideString; tipoAmbiente: Integer; 
                               const nomeCertificado: WideString; const Versao: WideString; 
                               tpAutor: Integer; const CNPJAutor: WideString; 
                               const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                               const dhEvento: WideString; nSeqEvento: Integer; 
                               const verAplic: WideString; const gPerecimento: WideString; 
                               out nProtocolo: WideString; out dProtocolo: WideString; 
                               out msgDados: WideString; out msgRetWS: WideString; 
                               out cStat: Integer; out msgResultado: WideString; 
                               const proxy: WideString; const usuario: WideString; 
                               const senha: WideString; const licenca: WideString): WideString; safecall;
    function ev112120_ImpALCZFM(const siglaWS: WideString; tipoAmbiente: Integer; 
                                const nomeCertificado: WideString; const Versao: WideString; 
                                tpAutor: Integer; const CNPJAutor: WideString; 
                                const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                const dhEvento: WideString; nSeqEvento: Integer; 
                                const verAplic: WideString; const gPerecimento: WideString; 
                                out nProtocolo: WideString; out dProtocolo: WideString; 
                                out msgDados: WideString; out msgRetWS: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const proxy: WideString; const usuario: WideString; 
                                const senha: WideString; const licenca: WideString): WideString; safecall;
    function ev112140_naoOcFornPagAnt(const siglaWS: WideString; tipoAmbiente: Integer; 
                                      const nomeCertificado: WideString; const Versao: WideString; 
                                      tpAutor: Integer; const CNPJAutor: WideString; 
                                      const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                      const dhEvento: WideString; nSeqEvento: Integer; 
                                      const verAplic: WideString; const gPerecimento: WideString; 
                                      out nProtocolo: WideString; out dProtocolo: WideString; 
                                      out msgDados: WideString; out msgRetWS: WideString; 
                                      out cStat: Integer; out msgResultado: WideString; 
                                      const proxy: WideString; const usuario: WideString; 
                                      const senha: WideString; const licenca: WideString): WideString; safecall;
    function gItemNaoFornecido(nItem: Integer; vIBS: Double; vCBS: Double; qNaoFornecida: Double; 
                               const uNaoFornecida: WideString): WideString; safecall;
    function gConsumoZFM(nItem: Integer; vIBS: Double; vCBS: Double; qtde: Double; 
                         const unidade: WideString): WideString; safecall;
    function produtoRTC(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const CEST_Opc: WideString; const indEscala_Opc: WideString; 
                        const CNPJFab_Opc: WideString; const cBenef_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                        const rastro_Opc: WideString; const credPresumido_Opc: WideString; 
                        indBemMovelUsado_Opc: Integer): WideString; safecall;
    function identificadorRTCVFP(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                 mod_: Integer; serie: Integer; nNF: Integer; 
                                 const dhEmi: WideString; const dhSaiEnt: WideString; 
                                 tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                 const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                 cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                 indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                 const dhCont_Opc: WideString; const xJust_Opc: WideString; 
                                 indIntermed_Opc: Integer; const camposRTC_Opc: WideString): WideString; safecall;
    function gPerecimentoCIF(nItem: Integer; vIBS: Double; vCBS: Double; qPerecimento: Double; 
                             const uPerecimento: WideString; vEstornoIBS: Double; 
                             vEstornoCBS: Double): WideString; safecall;
    function identificadorRTCv130(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                  mod_: Integer; serie: Integer; nNF: Integer; 
                                  const dhEmi: WideString; const dhSaiEnt: WideString; 
                                  tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                  const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                  cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                  indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                  const dhCont: WideString; const xJust: WideString; 
                                  indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                                  const tpNFDebito_Opc: WideString; 
                                  const tpNFCredito_Opc: WideString; 
                                  const gCompraGov_Opc: WideString; 
                                  const NFePagAntecipado_Opc: WideString; 
                                  const dPrevEntrega_Opc: WideString): WideString; safecall;
    function produtoRTCv130(const cProd: WideString; const cEAN: WideString; 
                            const xProd: WideString; const NCM: WideString; 
                            const NVE_Opc: WideString; const CEST_Opc: WideString; 
                            const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                            const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                            CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                            const vUnCom: WideString; vProd: Double; const cEANTrib: WideString; 
                            const uTrib: WideString; const qTrib: WideString; 
                            const vUnTrib: WideString; vFrete: Double; vSeg: Double; vDesc: Double; 
                            vOutro: Double; indTot: Integer; const DI_Opc: WideString; 
                            const detExport_Opc: WideString; const DetEspecifico_Opc: WideString; 
                            const xPed_Opc: WideString; const nItemPed_Opc: WideString; 
                            const nFCI_Opc: WideString; const rastro_Opc: WideString; 
                            const credPresumido_Opc: WideString; indBemMovelUsado_Opc: Integer; 
                            const tpCredPresIBSZFM_Opc: WideString): WideString; safecall;
    function IBSCBSv130(const CST: WideString; const cClassTrib: WideString; 
                        const indDoacao_Opc: WideString; const gTributo: WideString; 
                        const gEstornoCred_Opc: WideString; const gCredPresumido_Opc: WideString): WideString; safecall;
    function gAjusteCompet(const competApur: WideString; vIBS: Double; vCBS: Double): WideString; safecall;
    function gEstornoCred(vIBSEstCred: Double; vCBSEstCred: Double): WideString; safecall;
    function gCredPresOper(vBCCredPres: Double; const cCredPres: WideString; 
                           pIBSCredPres_Opc: Double; vIBSCredPres_Opc: Double; 
                           vIBSCredPresCondSus_Opc: Double; pCBSCredPres_Opc: Double; 
                           vCBSCredPres_Opc: Double; vCBSCredPresCondSus_Opc: Double): WideString; safecall;
    function gCredPresIBSZFMv130(const competApur: WideString; tpCredPresIBSZFM: Integer; 
                                 vCredPresIBSZFM: Double): WideString; safecall;
    function IBSCBSTotv130(vBCIBSCBS: Double; const gIBS_Opc: WideString; 
                           const gCBS_Opc: WideString; const gMono_Opc: WideString; 
                           const gEstornoCred_Opc: WideString): WideString; safecall;
    function ev112150_atualizaDataPrevEntrega(const siglaWS: WideString; tipoAmbiente: Integer; 
                                              const nomeCertificado: WideString; 
                                              const Versao: WideString; tpAutor: Integer; 
                                              const CNPJAutor: WideString; 
                                              const cOrgaoAutor: WideString; 
                                              const chaveNFe: WideString; 
                                              const dhEvento: WideString; nSeqEvento: Integer; 
                                              const verAplic: WideString; 
                                              const dPrevEntrega: WideString; 
                                              out nProtocolo: WideString; 
                                              out dProtocolo: WideString; out msgDados: WideString; 
                                              out msgRetWS: WideString; out cStat: Integer; 
                                              out msgResultado: WideString; 
                                              const proxy: WideString; const usuario: WideString; 
                                              const senha: WideString; const licenca: WideString): WideString; safecall;
    function gIBSCBSv130(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString; 
                         vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString; 
                         const gTribCompraGov_Opc: WideString): WideString; safecall;
    function identificadorRTCv140(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                  mod_: Integer; serie: Integer; nNF: Integer; 
                                  const dhEmi: WideString; const dhSaiEnt: WideString; 
                                  tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                  const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                  cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                  indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                  const dhCont: WideString; const xJust: WideString; 
                                  indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                                  const tpNFDebito_Opc: WideString; 
                                  const tpNFCredito_Opc: WideString; 
                                  const gCompraGov_Opc: WideString; 
                                  const NFePagAntecipado_Opc: WideString; 
                                  const dPrevEntrega_Opc: WideString; const cIndOp_Opc: WideString): WideString; safecall;
    function gCompraGovv140(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer; 
                            const refDFeAnt_Opc: WideString): WideString; safecall;
    function refDFeAnt(const chaveDFe: WideString): WideString; safecall;
    function emitenteRTC(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                         const xFant: WideString; const xLgr: WideString; const nro: WideString; 
                         const xCpl: WideString; const xBairro: WideString; const cMun: WideString; 
                         const xMun: WideString; const UF: WideString; const CEP: WideString; 
                         const cPais: WideString; const xPais: WideString; const fone: WideString; 
                         const IE: WideString; const IEST: WideString; const IM: WideString; 
                         const CNAE: WideString; const CRT: WideString; const ISUFEmit: WideString): WideString; safecall;
    function gIBSUFv140(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                        vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                        vIBSUF: Double): WideString; safecall;
    function gIBSMunv140(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                         vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                         vIBSMun: Double): WideString; safecall;
    function gCBSv140(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                      vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                      const gALCZFMCBS_Opc: WideString; vCBS: Double): WideString; safecall;
    function gALCZFMCBS(tpALCZFMCBS: Integer; const nProcSuframa_Opc: WideString; 
                        pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; safecall;
    function gCredPresOperv140(nItem: Integer; vBCCredPres: Double; const cCredPres: WideString; 
                               pIBSCredPres_Opc: Double; vIBSCredPres_Opc: Double; 
                               pCBSCredPres_Opc: Double; vCBSCredPres_Opc: Double): WideString; safecall;
    function gIBSCBSMonov150(const gIBSMonoAdRem_Opc: WideString; 
                             const gIBSMonoAdValorem_Opc: WideString; 
                             const gCBSMonoAdRem_Opc: WideString; 
                             const gCBSMonoAdValorem_Opc: WideString; vTotIBSMonoItem: Double; 
                             vTotCBSMonoItem: Double): WideString; safecall;
    function gIBSMonoAdRem(qBCMono_Opc: Double; adRemIBS_Opc: Double; vIBSMono_Opc: Double; 
                           qBCMonoReten_Opc: Double; adRemIBSReten_Opc: Double; 
                           vIBSMonoReten_Opc: Double; vIBSMonoRet_Opc: Double; 
                           qBCBioComb_Opc: Double; vIBSDiferenca_Opc: Double): WideString; safecall;
    function gIBSMonoAdValorem(vBCMono_Opc: Double; pAliqMonoUF_Opc: Double; 
                               vIBSMonoUF_Opc: Double; pAliqMonoMun_Opc: Double; 
                               vIBSMonoMun_Opc: Double; vIBSMono_Opc: Double; 
                               vBCMonoReten_Opc: Double; pAliqMonoReten_Opc: Double; 
                               vIBSMonoReten_Opc: Double; vIBSMonoRet_Opc: Double; 
                               qBCBioComb_Opc: Double; vIBSDiferenca_Opc: Double): WideString; safecall;
    function gCBSMonoAdRem(qBCMono_Opc: Double; adRemCBS_Opc: Double; vCBSMono_Opc: Double; 
                           qBCMonoReten_Opc: Double; adRemCBSReten_Opc: Double; 
                           vCBSMonoReten_Opc: Double; vCBSMonoRet_Opc: Double; 
                           qBCBioComb_Opc: Double; vCBSDiferenca_Opc: Double): WideString; safecall;
    function gCBSMonoAdValorem(vBCMono_Opc: Double; pAliqMonoCBS_Opc: Double; vCBSMono_Opc: Double; 
                               vBCMonoReten_Opc: Double; pAliqMonoReten_Opc: Double; 
                               vCBSMonoReten_Opc: Double; vCBSMonoRet_Opc: Double; 
                               qBCBioComb_Opc: Double; vCBSDiferenca_Opc: Double): WideString; safecall;
    function produtoRTCvProdLiq(const cProd: WideString; const cEAN: WideString; 
                                const xProd: WideString; const NCM: WideString; 
                                const NVE_Opc: WideString; const CEST_Opc: WideString; 
                                const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                                const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                                CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                                const vUnCom: WideString; vProd: Double; 
                                const cEANTrib: WideString; const uTrib: WideString; 
                                const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                                vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                                const DI_Opc: WideString; const detExport_Opc: WideString; 
                                const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                                const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                                const rastro_Opc: WideString; const credPresumido_Opc: WideString; 
                                indBemMovelUsado_Opc: Integer; 
                                const tpCredPresIBSZFM_Opc: WideString; 
                                const vUnComLiq: WideString; vProdLiq: Double): WideString; safecall;
    function ICMSPrevistoPagAnt(vICMSPrevisto: Double): WideString; safecall;
    function totalRTCvProdLiqTot(const ICMSTot: WideString; const ISSQNtot: WideString; 
                                 const retTrib: WideString; vIS: Double; 
                                 const IBSCBSTot: WideString; vNFTot: Double; vProdLiqTot: Double): WideString; safecall;
    function gPgto(nPag: Integer; const idTransacao: WideString; const tpMeioPgto: WideString; 
                   const CNPJReceb: WideString; const CNPJBasePSP: WideString): WideString; safecall;
    function NFeRTC(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; 
                    const dest_Opc: WideString; const retirada_Opc: WideString; 
                    const entrega_Opc: WideString; const detalhes: WideString; 
                    const total: WideString; const transp: WideString; const cobr_Opc: WideString; 
                    const pag_Opc: WideString; const infAdic_Opc: WideString; 
                    const exporta_Opc: WideString; const compra_Opc: WideString; 
                    const cana_Opc: WideString; const autXML_Opc: WideString; 
                    const infRespTec_Opc: WideString; const infIntermed_Opc: WideString; 
                    const agropecuario_Opc: WideString; const gPgtoVinc_Opc: WideString): WideString; safecall;
    function ev110300_vinculaPagto(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const nProt: WideString; 
                                   const idTransacao: WideString; const tpMeioPgto: WideString; 
                                   const CNPJReceb: WideString; const CNPJBasePSP: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  NFe_Util_2G_InterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99784343-9309-4F35-A1DE-03C7DA586D60}
// *********************************************************************//
  NFe_Util_2G_InterfaceDisp = dispinterface
    ['{99784343-9309-4F35-A1DE-03C7DA586D60}']
    function Versao: WideString; dispid 1;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString; 
                      out DLL_data: WideString; out DLL_dataValidade: WideString; 
                      out URL_versao: WideString; out URL_data: WideString): WideString; dispid 2;
    function ConsultaStatus2G(const siglaWS: WideString; const siglaUF: WideString; 
                              tipoAmbiente: Integer; const nomeCertificado: WideString; 
                              const Versao: WideString; out msgDados: WideString; 
                              out msgRetWS: WideString; out msgResultado: WideString; 
                              const proxy: WideString; const usuario: WideString; 
                              const senha: WideString): Integer; dispid 10;
    function EnviaLote2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         var msgDados: WideString; out msgRetWS: WideString; 
                         out msgResultado: WideString; out nRec: WideString; 
                         out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; dispid 11;
    function BuscaLote2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const nroRecibo: WideString; 
                         out cMsg: WideString; out xMsg: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; dispid 12;
    function ConsultaNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString): Integer; dispid 13;
    function CancelaNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const chaveNFe: WideString; 
                         const nProtocolo: WideString; const justificativa: WideString; 
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; dispid 14;
    function InutilizaNroNF2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                              const nomeCertificado: WideString; const Versao: WideString; 
                              out msgDados: WideString; out msgRetWS: WideString; 
                              out cStat: Integer; out msgResultado: WideString; 
                              const cUF: WideString; const ano: WideString; const CNPJ: WideString; 
                              const modelo: WideString; const serie: WideString; 
                              const nroNFeInicial: WideString; const nroNFeFinal: WideString; 
                              const justificativa: WideString; out nProtocoloInut: WideString; 
                              out dProtocoloInut: WideString; const proxy: WideString; 
                              const usuario: WideString; const senha: WideString; 
                              const licenca: WideString): WideString; dispid 15;
    function EnviaNFe2G(const siglaWS: WideString; var NFe: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out nroRecibo: WideString; 
                        out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; dispid 16;
    function BuscaNFe2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                        var NFeAssinada: WideString; const nroRecibo: WideString; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; out nroProtocolo: WideString; 
                        out dhProtocolo: WideString; out cMsg: WideString; out xMsg: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; dispid 17;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; 
                           out msgResultado: WideString; const tpArgumento: WideString; 
                           const argumento: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): Integer; dispid 18;
    function EnviaDPEC(var DPEC: WideString; const nomeCertificado: WideString; 
                       out DPECAssinado: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out dhRegDPEC: WideString; 
                       out nRegDPEC: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 19;
    function ConsultaDPEC(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const tpArgumento: WideString; 
                          const argumento: WideString; out DPEC: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): Integer; dispid 20;
    function EnviaCCe2G(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const textoCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer; 
                        const dataCorrecao: WideString; out nroProtocolo: WideString; 
                        out dhProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; dispid 21;
    function UpLoadNFe(const padrao: WideString; const login: WideString; const NFe: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; 
                       out msgResultado: WideString; out listaMsg: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 50;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; out chvCLe: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 51;
    function Assinar(const XMLString: WideString; const RefUri: WideString; 
                     const NomeTitular: WideString; out resultado: Integer; 
                     out msgResultado: WideString): WideString; dispid 100;
    function ValidaAssinatura(const XML: WideString; out msgResultado: WideString; 
                              out Titular: WideString; out CNPJ: WideString; 
                              out NroSerie: WideString; out Emissor: WideString; 
                              out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 101;
    function PegaNomeCertificado(var nomeCertificado: WideString; out msgResultado: WideString): Integer; dispid 102;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 103;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; dispid 104;
    function CriaChaveNFe(const cUF: WideString; const ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const codigoSeguranca: WideString; out msgResultado: WideString; 
                          out cNF: WideString; out cDV: WideString; out chaveNFe: WideString): Integer; dispid 200;
    function CriaChaveNFe2G(const cUF: WideString; const ano: WideString; const Mes: WideString; 
                            const CNPJ: WideString; const modelo: WideString; 
                            const serie: WideString; const numero: WideString; 
                            const tpEmis: WideString; const codigoSeguranca: WideString; 
                            out msgResultado: WideString; out cNF: WideString; out cDV: WideString; 
                            out chaveNFe: WideString): Integer; dispid 201;
    function CriaProcNFe(var NFeAssinada: WideString; out protocolo: WideString; 
                         out resultado: Integer; const nomeCertificado: WideString; 
                         out msgResultado: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; dispid 202;
    function CriaProcNFe2G(const siglaWS: WideString; var NFeAssinada: WideString; 
                           out protocolo: WideString; out retCancNFe: WideString; 
                           out resultado: Integer; const nomeCertificado: WideString; 
                           out msgResultado: WideString; const proxy: WideString; 
                           const usuario: WideString; const senha: WideString): WideString; dispid 203;
    function CriaProcCancNFe2G(const siglaWS: WideString; var cancNFe: WideString; 
                               out protocolo: WideString; out retCancNFe: WideString; 
                               out resultado: Integer; const nomeCertificado: WideString; 
                               out msgResultado: WideString; const proxy: WideString; 
                               const usuario: WideString; const senha: WideString): WideString; dispid 204;
    function criaDPEC(const _NFeLote: WideString; out _resultado: Integer; 
                      out _msgResultado: WideString; out _erroXML: WideString): WideString; dispid 205;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer; 
                                          const CNPJ: WideString; valorTotalNFe: Double; 
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer; 
                                          dataEmissaoNFe: TDateTime; out codigoBarras: WideString; 
                                          out msgResultado: WideString): Integer; dispid 206;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString; 
                                out msgErro: WideString): Integer; dispid 207;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString; 
                      const emailDestinatario: WideString; const emailBcc: WideString; 
                      const assunto: WideString; const mensagem: WideString; 
                      const arquivos: WideString; const smtpCliente: WideString; 
                      const smtpPorta: WideString; const smtpSSL: WideString; 
                      const smtpUsuario: WideString; const smtpSenha: WideString; 
                      const HTML: WideString; const confirmacao: WideString; 
                      out msgResultado: WideString): Integer; dispid 208;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString; dispid 209;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString; dispid 210;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString; dispid 211;
    function encodeBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 212;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 213;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; dispid 214;
    function MontaLoteNFe(const Versao: WideString; const idLote: WideString; 
                          const NFe: WideString; out quantidadeNFe: Integer; 
                          out cResultado: Integer; out msgResultado: WideString): WideString; dispid 215;
    function PegaProtNFe(const retConsReciNFe: WideString; out Versao: WideString; 
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString; 
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer; 
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtNFe: Integer; 
                         out cResultado: Integer; out msgResultado: WideString): WideString; dispid 216;
    function MontaProcNFe(const Versao: WideString; const enviNFe: WideString; 
                          const retConsReciNFe: WideString; out qtdeNFe: Integer; 
                          out qtdeProcNFe: Integer; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 217;
    function geraPdfDANFE(const _NFe: WideString; const _origemDadosEmissor: WideString; 
                          const _quadroRecibo: WideString; const _quadroFatura: WideString; 
                          const _quadroISSQN: WideString; const _nroDPEC: WideString; 
                          const _separadorItem: WideString; const _nomePDF: WideString; 
                          out msgResultado: WideString): Integer; dispid 218;
    function emitente(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                      const _xFant: WideString; const _xLgr: WideString; const _nro: WideString; 
                      const _xCpl: WideString; const _xBairro: WideString; const _cMun: WideString; 
                      const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                      const _cPais: WideString; const _xPais: WideString; const _fone: WideString; 
                      const _IE: WideString; const _IEST: WideString; const _IM: WideString; 
                      const _CNAE: WideString): WideString; dispid 300;
    function localRetirada(const _CNPJ: WideString; const _xLgr: WideString; 
                           const _nro: WideString; const _xCpl: WideString; 
                           const _xBairro: WideString; const _cMun: WideString; 
                           const _xMun: WideString; const _UF: WideString): WideString; dispid 301;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; 
                          const _xNome: WideString; const _xLgr: WideString; 
                          const _nro: WideString; const _xCpl: WideString; 
                          const _xBairro: WideString; const _cMun: WideString; 
                          const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                          const _cPais: WideString; const _xPais: WideString; 
                          const _fone: WideString; const _IE: WideString; const _IESUF: WideString): WideString; dispid 302;
    function localEntrega(const _CNPJ: WideString; const _xLgr: WideString; const _nro: WideString; 
                          const _xCpl: WideString; const _xBairro: WideString; 
                          const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; dispid 303;
    function identificador(_cUF: Integer; _cNF: Integer; const _natOp: WideString; 
                           _indPag: Integer; _mod: Integer; _serie: Integer; _nNF: Integer; 
                           _dEmi: TDateTime; _dSaiEnt: TDateTime; _tpNF: Integer; 
                           const _cMunFG: WideString; const _NFref: WideString; _tpImp: Integer; 
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _finNFe: Integer; 
                           _procEmi: Integer; const _verProc: WideString): WideString; dispid 304;
    function NFeRef(const _NFe: WideString): WideString; dispid 305;
    function NFRef(_cUF: Integer; const _AAMM: WideString; const _CNPJ: WideString; _mod: Integer; 
                   _serie: Integer; _nNF: Integer): WideString; dispid 306;
    function transportador(const _modFrete: WideString; const _transporta: WideString; 
                           const _retTransp: WideString; const _veicTransp: WideString; 
                           const _reboque: WideString; const _vol: WideString): WideString; dispid 307;
    function transporta(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                        const _IE: WideString; const _xEnder: WideString; const _xMun: WideString; 
                        const _UF: WideString): WideString; dispid 308;
    function retTransp(_vServ: Double; _vBCRet: Double; _pICMSRet: Double; _vICMSRet: Double; 
                       _CFOP: Integer; const _cMunFG: WideString): WideString; dispid 309;
    function veicTransp(const _placa: WideString; const _UF: WideString; const _RNTC: WideString): WideString; dispid 310;
    function reboque(const _placa: WideString; const _UF: WideString; const _RNTC: WideString): WideString; dispid 311;
    function vol(_qVol: Double; const _esp: WideString; const _marca: WideString; 
                 const _nVol: WideString; _pesoL: Double; _pesoB: Double; const _lacres: WideString): WideString; dispid 312;
    function arma(_tpArma: Integer; const _nSerie: WideString; const _nCano: WideString; 
                  const _descr: WideString): WideString; dispid 313;
    function icms(const _orig: WideString; const _CST: WideString; _modBC: Integer; 
                  _pRedBC: Double; _vBC: Double; _pICMS: Double; _vICMS: Double; _modBCST: Integer; 
                  _pMVAST: Double; _pRedBCST: Double; _vBCST: Double; _pICMSST: Double; 
                  _vICMSST: Double): WideString; dispid 314;
    function COFINS(const _CST: WideString; _vBC: Double; _pCOFINS: Double; _vCOFINS: Double; 
                    _qBCProd: Double; _vAliqProd: Double): WideString; dispid 315;
    function COFINSST(_vBC: Double; _pCOFINS: Double; _vCOFINS: Double; _qBCProd: Double; 
                      _vAliqProd: Double): WideString; dispid 316;
    function PISST(_vBC: Double; _pPIS: Double; _vPIS: Double; _qBCProd: Double; _vAliqProd: Double): WideString; dispid 317;
    function PIS(const _CST: WideString; _vBC: Double; _pPIS: Double; _vPIS: Double; 
                 _qBCProd: Double; _vAliqProd: Double): WideString; dispid 318;
    function II(_vBC: Double; _vDespAdu: Double; _vII: Double; _vIOF: Double): WideString; dispid 319;
    function IPI(const _clEnq: WideString; const _CNPJProd: WideString; const _cSelo: WideString; 
                 _qSelo: Double; const _cEnq: WideString; const _CST: WideString; _vBC: Double; 
                 _pIPI: Double; _vIPI: Double; _qUnid: Double; _vUnid: Double): WideString; dispid 320;
    function ISSQN(_vBC: Double; _vAliq: Double; _vISSQN: Double; const _cMunFG: WideString; 
                   _cListServ: Integer): WideString; dispid 321;
    function infAdProd(const _infAdProd: WideString): WideString; dispid 322;
    function infAdic(const _infAdFisco: WideString; const _infCpl: WideString; 
                     const _obsCont: WideString; const _obsFisco: WideString; 
                     const _procRef: WideString): WideString; dispid 323;
    function produto(const _cProd: WideString; const _cEAN: WideString; const _xProd: WideString; 
                     const _NCM: WideString; const _EXTIPI: WideString; _genero: Integer; 
                     _CFOP: Integer; const _uCom: WideString; _qCom: Double; _vUnCom: Double; 
                     _vProd: Double; const _cEANTrib: WideString; const _uTrib: WideString; 
                     _qTrib: Double; _vUnTrib: Double; _vFrete: Double; _vSeg: Double; 
                     _vDesc: Double; const _DI: WideString; const _DetEspecifico: WideString): WideString; dispid 324;
    function totalICMS(_vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double; _vProd: Double; 
                       _vFrete: Double; _vSeg: Double; _vDesc: Double; _vII: Double; _vIPI: Double; 
                       _vPIS: Double; _vCOFINS: Double; _vOutro: Double; _vNF: Double): WideString; dispid 325;
    function totalISS(_vServ: Double; _vBC: Double; _vISS: Double; _vPIS: Double; _vCOFINS: Double): WideString; dispid 326;
    function tributoRetido(_vRetPIS: Double; _vRetCOFINS: Double; _vRetCSLL: Double; 
                           _vBCIRRF: Double; _vIRRF: Double; _vBCRetPrev: Double; _vRetPrev: Double): WideString; dispid 327;
    function total(const _ICMSTot: WideString; const _ISSQNtot: WideString; 
                   const _retTrib: WideString): WideString; dispid 328;
    function detalhe(_nItem: Integer; const _produto: WideString; const _imposto: WideString; 
                     const _infAdProd: WideString): WideString; dispid 329;
    function imposto(const _icms: WideString; const _ipi: WideString; const _ii: WideString; 
                     const _pis: WideString; const _pisst: WideString; const _cofins: WideString; 
                     const _cofinsst: WideString; const _issqn: WideString): WideString; dispid 330;
    function med(const _nLote: WideString; _qLote: Double; _dFab: TDateTime; _dVal: TDateTime; 
                 _vPMC: Double): WideString; dispid 331;
    function NFe(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                 const _emit: WideString; const _avulsa: WideString; const _dest: WideString; 
                 const _retirada: WideString; const _entrega: WideString; 
                 const _detalhes: WideString; const _total: WideString; const _transp: WideString; 
                 const _cobr: WideString; const _infAdic: WideString; const _exporta: WideString; 
                 const _compra: WideString): WideString; dispid 332;
    function compra(const _xNEmp: WideString; const _xPed: WideString; const _xCont: WideString): WideString; dispid 333;
    function exporta(const _UFEmbarq: WideString; const _xLocEmbarq: WideString): WideString; dispid 334;
    function procRef(const _nProc: WideString; _indProc: Integer): WideString; dispid 335;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 336;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 337;
    function cobr(const _nfat: WideString; _vOrig: Double; _vDesc: Double; _vLiq: Double; 
                  const _dup: WideString): WideString; dispid 338;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; dispid 339;
    function veicProd(_tpOp: Integer; const _chassi: WideString; const _cCor: WideString; 
                      const _xCor: WideString; const _pot: WideString; const _CM3: WideString; 
                      const _peloL: WideString; const _pesoB: WideString; 
                      const _nSerie: WideString; const _tpComb: WideString; 
                      const _nMotor: WideString; const _CMKG: WideString; const _dist: WideString; 
                      const _RENAVAM: WideString; const _anoMod: WideString; 
                      const _anoFab: WideString; const _tpPint: WideString; 
                      const _tpVeic: WideString; const _espVeic: WideString; 
                      const _VIN: WideString; const _condVeic: WideString; const _cMod: WideString): WideString; dispid 340;
    function adi(_nAdicao: Integer; _nSeqAdic: Integer; const _cFabricante: WideString; 
                 _vDescDI: Double): WideString; dispid 341;
    function DI(const _nDI: WideString; _dDi: TDateTime; const _xLocDesemb: WideString; 
                const _UFDesemb: WideString; _dDesemb: TDateTime; const _cExportador: WideString; 
                const _adi: WideString): WideString; dispid 342;
    function comb(const _cProdANP: WideString; const _CODIF: WideString; _qTemp: Double; 
                  _qBCProd: Double; _vAliqProd: Double; _vCIDE: Double; _vBCICMS: Double; 
                  _vICMS: Double; _vBCICMSST: Double; _vICMSST: Double; _vBCICMSSTDest: Double; 
                  _vICMSSTDest: Double; _vBCICMSSTCons: Double; _vICMSSTCons: Double; 
                  const _UFCons: WideString): WideString; dispid 343;
    function avulsa(const _CNPJ: WideString; const _xOrgao: WideString; const _matr: WideString; 
                    const _xAgente: WideString; const _fone: WideString; const _UF: WideString; 
                    const _nDAR: WideString; _dEmi: TDateTime; _vDAR: Double; 
                    const _repEmi: WideString; _dPag: TDateTime): WideString; dispid 344;
    function lacres(const _lacre: WideString): WideString; dispid 345;
    function emitente2G(const _CNPJ: WideString; const _CPF: WideString; const _xNome: WideString; 
                        const _xFant: WideString; const _xLgr: WideString; const _nro: WideString; 
                        const _xCpl: WideString; const _xBairro: WideString; 
                        const _cMun: WideString; const _xMun: WideString; const _UF: WideString; 
                        const _CEP: WideString; const _cPais: WideString; const _xPais: WideString; 
                        const _fone: WideString; const _IE: WideString; const _IEST: WideString; 
                        const _IM: WideString; const _CNAE: WideString; const _CRT: WideString): WideString; dispid 346;
    function localRetirada2G(const _CNPJ: WideString; const _CPF: WideString; 
                             const _xLgr: WideString; const _nro: WideString; 
                             const _xCpl: WideString; const _xBairro: WideString; 
                             const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; dispid 347;
    function destinatario2G(const _CNPJ: WideString; const _CPF: WideString; 
                            const _xNome: WideString; const _xLgr: WideString; 
                            const _nro: WideString; const _xCpl: WideString; 
                            const _xBairro: WideString; const _cMun: WideString; 
                            const _xMun: WideString; const _UF: WideString; const _CEP: WideString; 
                            const _cPais: WideString; const _xPais: WideString; 
                            const _fone: WideString; const _IE: WideString; 
                            const _IESUF: WideString; const _email: WideString): WideString; dispid 348;
    function localEntrega2G(const _CNPJ: WideString; const _CPF: WideString; 
                            const _xLgr: WideString; const _nro: WideString; 
                            const _xCpl: WideString; const _xBairro: WideString; 
                            const _cMun: WideString; const _xMun: WideString; const _UF: WideString): WideString; dispid 349;
    function identificador2G(_cUF: Integer; _cNF: Integer; const _natOp: WideString; 
                             _indPag: Integer; _mod: Integer; _serie: Integer; _nNF: Integer; 
                             _dEmi: TDateTime; _dSaiEnt: TDateTime; const _hSaiEnt: WideString; 
                             _tpNF: Integer; const _cMunFG: WideString; const _NFref: WideString; 
                             _tpImp: Integer; _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; 
                             _finNFe: Integer; _procEmi: Integer; const _verProc: WideString; 
                             _dhCont: TDateTime; const _xJust: WideString): WideString; dispid 350;
    function transportador2G(const _modFrete: WideString; const _transporta: WideString; 
                             const _retTransp: WideString; const _veicTransp: WideString; 
                             const _reboque: WideString; const _vagao: WideString; 
                             const _balsa: WideString; const _vol: WideString): WideString; dispid 351;
    function icms2G(const _orig: WideString; const _CST: WideString; _modBC: Integer; 
                    _pRedBC: Double; _vBC: Double; _pICMS: Double; _vICMS: Double; 
                    _modBCST: Integer; _pMVAST: Double; _pRedBCST: Double; _vBCST: Double; 
                    _pICMSST: Double; _vICMSST: Double; _vBCSTRet: Double; _vICMSSRet: Double; 
                    _vBCSTDest: Double; _vICMSSTDest: Double; _motDesICMS: Integer; _pBCOp: Double; 
                    const _UFST: WideString; _pCredSN: Double; _vCredICMSSN: Double): WideString; dispid 352;
    function ISSQN2G(_vBC: Double; _vAliq: Double; _vISSQN: Double; const _cMunFG: WideString; 
                     _cListServ: Integer; const _cSitTrib: WideString): WideString; dispid 353;
    function infAdic2G(const _infAdFisco: WideString; const _infCpl: WideString; 
                       const _obsCont: WideString; const _obsFisco: WideString; 
                       const _procRef: WideString): WideString; dispid 354;
    function produto2G(const _cProd: WideString; const _cEAN: WideString; const _xProd: WideString; 
                       const _NCM: WideString; const _EXTIPI: WideString; _CFOP: Integer; 
                       const _uCom: WideString; const _qCom: WideString; const _vUnCom: WideString; 
                       _vProd: Double; const _cEANTrib: WideString; const _uTrib: WideString; 
                       const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                       _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                       const _DI: WideString; const _DetEspecifico: WideString; 
                       const _xPed: WideString; _nItemPed: Integer): WideString; dispid 355;
    function veicProd2G(_tpOp: Integer; const _chassi: WideString; const _cCor: WideString; 
                        const _xCor: WideString; const _pot: WideString; const _cilin: WideString; 
                        const _peloL: WideString; const _pesoB: WideString; 
                        const _nSerie: WideString; const _tpComb: WideString; 
                        const _nMotor: WideString; const _CMT: WideString; const _dist: WideString; 
                        const _anoMod: WideString; const _anoFab: WideString; 
                        const _tpPint: WideString; const _tpVeic: WideString; 
                        const _espVeic: WideString; const _VIN: WideString; 
                        const _condVeic: WideString; const _cMod: WideString; 
                        const _cCorDENATRAN: WideString; const _lota: WideString; 
                        const _tpRest: WideString): WideString; dispid 356;
    function comb2G(const _cProdANP: WideString; const _CODIF: WideString; _qTemp: Double; 
                    const _UFCons: WideString; _qBCProd: Double; _vAliqProd: Double; _vCIDE: Double): WideString; dispid 357;
    function NFRefP(_cUF: Integer; const _AAMM: WideString; const _CNPJ: WideString; 
                    const _CPF: WideString; const _IE: WideString; _mod: Integer; _serie: Integer; 
                    _nNF: Integer): WideString; dispid 358;
    function CTeRef(const _CTe: WideString): WideString; dispid 359;
    function ECFRef(const _mod: WideString; _nECF: Integer; _nCOO: Integer): WideString; dispid 360;
    function forDia(_dia: Integer; const _qtde: WideString): WideString; dispid 361;
    function deduc(const _xDed: WideString; _vDed: Double): WideString; dispid 362;
    function cana(const _safra: WideString; const _ref: WideString; const _forDias: WideString; 
                  const _qTotMes: WideString; const _qTotAnt: WideString; 
                  const _qTotGer: WideString; const _deducs: WideString; _vFor: Double; 
                  _vTotDed: Double; _vLiqFor: Double): WideString; dispid 363;
    function NFe2G(const _versao: WideString; const _Id: WideString; const _ide: WideString; 
                   const _emit: WideString; const _avulsa: WideString; const _dest: WideString; 
                   const _retirada: WideString; const _entrega: WideString; 
                   const _detalhes: WideString; const _total: WideString; 
                   const _transp: WideString; const _cobr: WideString; const _infAdic: WideString; 
                   const _exporta: WideString; const _compra: WideString; const _cana: WideString): WideString; dispid 364;
    function imposto2G(const _icms: WideString; const _ipi: WideString; const _ii: WideString; 
                       const _pis: WideString; const _pisst: WideString; const _cofins: WideString; 
                       const _cofinsst: WideString; const _issqn: WideString): WideString; dispid 365;
    function Txt2XML(const txt: WideString; geraChaveNFe: Integer; 
                     const codigoSeguranca: WideString; out txtNumerado: WideString; 
                     out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                     out msgResultado: WideString): WideString; dispid 400;
    function Txt2XML2G(const txt: WideString; geraChaveNFe: Integer; 
                       const codigoSeguranca: WideString; out txtNumerado: WideString; 
                       out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                       out msgResultado: WideString): WideString; dispid 401;
    function XML2Txt(const XML: WideString; out erros: WideString; out qtErros: Integer; 
                     out resultado: Integer; out msgResultado: WideString): WideString; dispid 402;
    function versaoLicenca(const CNPJ: WideString; const licenca: WideString): WideString; dispid 500;
    function ftpUpload(const servidorFTP: WideString; const nomeArquivoRemoto: WideString; 
                       const nomeArquivoLocal: WideString; const usuario: WideString; 
                       const senha: WideString; out msgResultado: WideString): Integer; dispid 501;
    function ftpDownload(const servidorFTP: WideString; const nomeArquivoRemoto: WideString; 
                         const nomeArquivoLocal: WideString; const usuario: WideString; 
                         const senha: WideString; out msgResultado: WideString): Integer; dispid 502;
    function EnviaManDest(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const CNPJAutor: WideString; const dhEvento: WideString; 
                          tpEvento: Integer; const xJust: WideString; out nroProtocolo: WideString; 
                          out dhProtocolo: WideString; const proxy: WideString; 
                          const usuario: WideString; const senha: WideString; 
                          const licenca: WideString): WideString; dispid 503;
    function ConsultaNFDest(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const CNPJ: WideString; indNFe: Integer; 
                            indEmi: Integer; const ultNSU: WideString; out dhResp: WideString; 
                            out indCont: Integer; out ultNSUConsultado: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; dispid 504;
    function DownloadNFWS(const siglaWS: WideString; const siglaUF: WideString; 
                          tipoAmbiente: Integer; const nomeCertificado: WideString; 
                          const Versao: WideString; out msgDados: WideString; 
                          out msgRetWS: WideString; out cStat: Integer; 
                          out msgResultado: WideString; const CNPJDest: WideString; 
                          const chaveNFe: WideString; const proxy: WideString; 
                          const usuario: WideString; const senha: WideString; 
                          const licenca: WideString): WideString; dispid 505;
    function DownloadNFWeb(const nomeCertificado: WideString; const chaveNFe: WideString; 
                           const CNPJ: WideString; out resultado: Integer; 
                           out msgResultado: WideString; const licenca: WideString): WideString; dispid 506;
    function InutilizaNroNF2G_xBase(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const cUF: WideString; const ano: WideString; 
                                    const CNPJ: WideString; const modelo: WideString; 
                                    const serie: WideString; const nroNFeInicial: WideString; 
                                    const nroNFeFinal: WideString; const justificativa: WideString; 
                                    out nProtocoloInut: WideString; out dProtocoloInut: WideString; 
                                    const proxy: WideString; const licenca: WideString): WideString; dispid 507;
    function EnviaGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                       const Versao: WideString; var msgDados: WideString; 
                       out msgRetWS: WideString; out msgResultado: WideString; 
                       out nroRecibo: WideString; out dhRecibo: WideString; 
                       out tEstProc: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString): Integer; dispid 508;
    function BuscaGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                       const Versao: WideString; out msgDados: WideString; 
                       out msgRetWS: WideString; const nroRecibo: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString): WideString; dispid 509;
    function ConsultaConfigGNRE(tipoAmbiente: Integer; const nomeCertificado: WideString; 
                                const Versao: WideString; out msgDados: WideString; 
                                const UF: WideString; const receita: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const proxy: WideString; const usuario: WideString; 
                                const senha: WideString): WideString; dispid 510;
    function CancelaNFEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveNFe: WideString; const nProtocolo: WideString; 
                             const justificativa: WideString; const dhEvento: WideString; 
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; dispid 511;
    function ConsultaNFEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                              const nomeCertificado: WideString; const Versao: WideString; 
                              out msgDados: WideString; out msgRetWS: WideString; 
                              out cStat: Integer; out msgResultado: WideString; 
                              const chaveNFe: WideString; out protNFe: WideString; 
                              out eventoCanc: WideString; out eventoCCe: WideString; 
                              const proxy: WideString; const usuario: WideString; 
                              const senha: WideString): WideString; dispid 512;
    function produto2GItem(const _cProd: WideString; const _cEAN: WideString; 
                           const _xProd: WideString; const _NCM: WideString; 
                           const _EXTIPI: WideString; _CFOP: Integer; const _uCom: WideString; 
                           const _qCom: WideString; const _vUnCom: WideString; _vProd: Double; 
                           const _cEANTrib: WideString; const _uTrib: WideString; 
                           const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                           _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                           const _DI: WideString; const _DetEspecifico: WideString; 
                           const _xPed: WideString; const _nItemPed: WideString): WideString; dispid 513;
    function imposto2GNovo(_vTotTrib: Double; const _icms: WideString; const _ipi: WideString; 
                           const _ii: WideString; const _pis: WideString; const _pisst: WideString; 
                           const _cofins: WideString; const _cofinsst: WideString; 
                           const _issqn: WideString): WideString; dispid 520;
    function totalICMSNovo(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                           vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                           vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                           vTotTrib: Double): WideString; dispid 521;
    function produto2GFCI(const _cProd: WideString; const _cEAN: WideString; 
                          const _xProd: WideString; const _NCM: WideString; 
                          const _EXTIPI: WideString; _CFOP: Integer; const _uCom: WideString; 
                          const _qCom: WideString; const _vUnCom: WideString; _vProd: Double; 
                          const _cEANTrib: WideString; const _uTrib: WideString; 
                          const _qTrib: WideString; const _vUnTrib: WideString; _vFrete: Double; 
                          _vSeg: Double; _vDesc: Double; _vOutro: Double; _indTot: Integer; 
                          const _DI: WideString; const _DetEspecifico: WideString; 
                          const _xPed: WideString; const _nItemPed: WideString; 
                          const _nFCI: WideString): WideString; dispid 522;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString; 
                       const emailDestinatario: WideString; const emailBcc: WideString; 
                       const assunto: WideString; const mensagem: WideString; 
                       const arquivos: WideString; const smtpCliente: WideString; 
                       const smtpPorta: WideString; const smtpSSL: WideString; 
                       const smtpUsuario: WideString; const smtpSenha: WideString; 
                       const HTML: WideString; const confirmacao: WideString; 
                       out msgResultado: WideString; const timeout: WideString): Integer; dispid 523;
    function EnviaNFSincrono(const siglaWS: WideString; const NFe: WideString; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             out nroProtocolo: WideString; out dhProtocolo: WideString; 
                             out NFAssinada: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString; 
                             const licenca: WideString): WideString; dispid 524;
    function EnviaLoteV3(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         const msgDados: WideString; GZip: Integer; out msgRetWS: WideString; 
                         out msgResultado: WideString; out nRec: WideString; 
                         out dhRecbto: WideString; out tMed: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; dispid 525;
    function BuscaLoteV3(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out cStat: Integer; 
                         out msgResultado: WideString; const nroRecibo: WideString; 
                         out cMsg: WideString; out xMsg: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString): WideString; dispid 526;
    function identificador300(cUF: Integer; cNF: Integer; const natOp: WideString; indPag: Integer; 
                              mod_: Integer; serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 527;
    function destinatario300(const CNPJ: WideString; const CPF: WideString; 
                             const idEstrangeiro: WideString; const xNome: WideString; 
                             const xLgr: WideString; const nro: WideString; const xCpl: WideString; 
                             const xBairro: WideString; const cMun: WideString; 
                             const xMun: WideString; const UF: WideString; const CEP: WideString; 
                             const cPais: WideString; const xPais: WideString; 
                             const fone: WideString; const IE: WideString; const IESUF: WideString; 
                             const eMail: WideString): WideString; dispid 528;
    function pagamento(const tPag: WideString; vPag: Double; const CNPJ_Opc: WideString; 
                       const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; dispid 529;
    function NFe300(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; const dest: WideString; 
                    const retirada_Opc: WideString; const entrega_Opc: WideString; 
                    const detalhes: WideString; const total: WideString; const transp: WideString; 
                    const cobr_Opc: WideString; const pag_Opc: WideString; 
                    const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                    const compra_Opc: WideString; const cana_Opc: WideString): WideString; dispid 530;
    function geraUrlNFCe(const idToken: WideString; const Token: WideString; 
                         const versaoQRCode: WideString; const NFCe: WideString; 
                         var url: WideString; out msgResultado: WideString): Integer; dispid 531;
    function destinatario310(const CNPJ: WideString; const CPF: WideString; 
                             const idEstrangeiro: WideString; const xNome: WideString; 
                             const xLgr: WideString; const nro: WideString; 
                             const xCpl_Opc: WideString; const xBairro: WideString; 
                             const cMun: WideString; const xMun: WideString; const UF: WideString; 
                             const CEP_Opc: WideString; const cPais_Opc: WideString; 
                             const xPais_Opc: WideString; const fone_Opc: WideString; 
                             const indIEDest: WideString; const IE_Opc: WideString; 
                             const IESUF_Opc: WideString; const IM_Opc: WideString; 
                             const eMail_Opc: WideString): WideString; dispid 532;
    function NFe310(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; 
                    const dest_Opc: WideString; const retirada_Opc: WideString; 
                    const entrega_Opc: WideString; const detalhes: WideString; 
                    const total: WideString; const transp: WideString; const cobr_Opc: WideString; 
                    const pag_Opc: WideString; const infAdic_Opc: WideString; 
                    const exporta_Opc: WideString; const compra_Opc: WideString; 
                    const cana_Opc: WideString; const autXML_Opc: WideString): WideString; dispid 533;
    function produto310(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString): WideString; dispid 534;
    function adi310(nAdicao: Integer; nSeqAdic: Integer; const cFabricante: WideString; 
                    vDescDI_Opc: Double; const nDraw_Opc: WideString): WideString; dispid 535;
    function DI310(const nDI: WideString; const dDi: WideString; const xLocDesemb: WideString; 
                   const UFDesemb: WideString; const dDesemb: WideString; tpViaTransp: Integer; 
                   vAFRMM_Opc: Double; tpIntermedio: Integer; const CNPJ_Opc: WideString; 
                   const UFTerceiro_Opc: WideString; const cExportador: WideString; 
                   const adi: WideString): WideString; dispid 536;
    function detExport(const nDraw_Opc: WideString; const nRE: WideString; const chNFe: WideString; 
                       const qExport: WideString): WideString; dispid 537;
    function nRECOPI(const nRECOPI: WideString): WideString; dispid 538;
    function icms310(const orig: WideString; const CST: WideString; modBC: Integer; pRedBC: Double; 
                     vBC: Double; pICMS: Double; vICMS: Double; modBCST: Integer; pMVAST: Double; 
                     pRedBCST: Double; vBCST: Double; pICMSST: Double; vICMSST: Double; 
                     vBCSTRet: Double; vICMSSTRet: Double; vBCICMSSTDest: Double; 
                     vICMSSTDest: Double; motDesICMS: Integer; pBCOp: Double; 
                     const UFST: WideString; pCredSN: Double; vCredICMSSN: Double; 
                     vICMSDeson: Double; vICMSOp: Double; pDif: Double; vICMSDif: Double): WideString; dispid 539;
    function totalICMS310(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                          vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                          vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                          vTotTrib: Double; vICMSDeson: Double): WideString; dispid 540;
    function detalhe310(nItem: Integer; const produto: WideString; const imposto: WideString; 
                        const infAdProd_Opc: WideString; pDevol_Opc: Double; vIPIDevol_Opc: Double): WideString; dispid 541;
    function ISSQN310(vBC: Double; vAliq: Double; vISSQN: Double; const cMunFG: WideString; 
                      const cListServ: WideString; vDeducao_Opc: Double; vOutro_Opc: Double; 
                      vDescIncond_Opc: Double; vDescCond_Opc: Double; vISSRet_Opc: Double; 
                      const indISS: WideString; const cServico_Opc: WideString; 
                      const cMun_Opc: WideString; const cPais_Opc: WideString; 
                      const nProcesso_Opc: WideString; const indIncentivo: WideString): WideString; dispid 542;
    function totalISS310(vServ_Opc: Double; vBC_Opc: Double; vISS_Opc: Double; vPIS_Opc: Double; 
                         vCOFINS_Opc: Double; const dCompet: WideString; vDeducao_Opc: Double; 
                         vOutro_Opc: Double; vDescIncond_Opc: Double; vDescCond_Opc: Double; 
                         vISSRet_Opc: Double; const cRegTrib_Opc: WideString): WideString; dispid 543;
    function exporta310(const UFSaidaPais: WideString; const xLocEmbarq: WideString; 
                        const xLocDespacho_Opc: WideString): WideString; dispid 544;
    function comb310(const cProdANP: WideString; pMixGN_Opc: Double; const CODIF_Opc: WideString; 
                     qTemp_Opc: Double; const UFCons: WideString; qBCProd_Opc: Double; 
                     vAliqProd_Opc: Double; vCIDE_Opc: Double): WideString; dispid 545;
    function imposto310(vTotTrib: Double; const Grupo_Icms: WideString; 
                        const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                        const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                        const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                        const Grupo_Issqn: WideString): WideString; dispid 546;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; dispid 556;
    function ValidaProcNFe(const nomeArquivo: WideString; out resultado: Integer; 
                           const nomeCertificado: WideString; out msgResultado: WideString; 
                           const proxy_Opc: WideString; const usuario_Opc: WideString; 
                           const senha_Opc: WideString): WideString; dispid 557;
    function XML2Txt310(const XML: WideString; out erros: WideString; out qtErros: Integer; 
                        out resultado: Integer; out msgResultado: WideString): WideString; dispid 558;
    function ValidaSchemaXML(const XML: WideString; const NomeArquivoSchemaXML: WideString; 
                             out msgResultado: WideString; out qtdeErros: Integer; 
                             out erroXML: WideString): Integer; dispid 559;
    function geraQRCode(const url: WideString; escala: Integer; const nomeArquivo: WideString; 
                        out msgResultado: WideString): Integer; dispid 560;
    function NVE(const NVE: WideString): WideString; dispid 561;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        const chaveCTe: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString): Integer; dispid 562;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer; 
                       out msgResultado: WideString; const XMLNFe: WideString; 
                       const dhEvento: WideString; out nProtocoloEPEC: WideString; 
                       out dProtocoloEPEC: WideString; out listaChNFe: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; dispid 563;
    function geraPdfDACTE(const XML: WideString; const logo: WideString; 
                          const quadroRecibo: WideString; const visualizar: WideString; 
                          const parametros: WideString; out msgResultado: WideString): Integer; dispid 564;
    function Txt2XML310(const txt: WideString; geraChaveNFe: Integer; 
                        const codigoSeguranca: WideString; out txtNumerado: WideString; 
                        out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                        out msgResultado: WideString): WideString; dispid 565;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString; 
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString; 
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; dispid 566;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer; 
                     const nomeCertificado: WideString; const Versao: WideString; 
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString; 
                     const ultNSURecebido: WideString; out verAplic: WideString; 
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString; 
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString; 
                     const senha: WideString; const licenca: WideString): WideString; dispid 567;
    function EnviaPedProrrog(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out cStat: Integer; out msgResultado: WideString; 
                             const chaveNFe: WideString; const nProt: WideString; 
                             const itensPedido: WideString; const tpEvento: WideString; 
                             textoAcentuado: Integer; nroSeq: Integer; 
                             const dataEvento: WideString; out nroProtocolo: WideString; 
                             out dhProtocolo: WideString; const proxy: WideString; 
                             const usuario: WideString; const senha: WideString; 
                             const licenca: WideString): WideString; dispid 568;
    function itemPedido(const numItem: WideString; const qtdeItem: WideString): WideString; dispid 569;
    function EnviaCancPedProrrog(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveNFe: WideString; const tpEvento: WideString; 
                                 const idPedidoCancelado: WideString; const nProt: WideString; 
                                 textoAcentuado: Integer; nroSeq: Integer; 
                                 const dataEvento: WideString; out nroProtocolo: WideString; 
                                 out dhProtocolo: WideString; const proxy: WideString; 
                                 const usuario: WideString; const senha: WideString; 
                                 const licenca: WideString): WideString; dispid 570;
    function encerrante(const nBico: WideString; const nBomba_Opc: WideString; 
                        const nTanque: WideString; const vEncIni: WideString; 
                        const vEncFin: WideString): WideString; dispid 571;
    function combNT2015002(const cProdANP: WideString; pMixGN_Opc: Double; 
                           const CODIF_Opc: WideString; qTemp_Opc: Double; 
                           const UFCons: WideString; qBCProd_Opc: Double; vAliqProd_Opc: Double; 
                           vCIDE_Opc: Double; const encerrante_Opc: WideString): WideString; dispid 572;
    function pagamentoNT2015002(const tPag: WideString; vPag: Double; const CNPJ_Opc: WideString; 
                                const tBand_Opc: WideString; const cAut_Opc: WideString; 
                                const tpIntegra_Opc: WideString): WideString; dispid 573;
    function AssinarNFCe(const NFe: WideString; const nomeCertificado: WideString; 
                         const idToken: WideString; const Token: WideString; 
                         const versaoQRCode: WideString; const URLConsulta: WideString; 
                         const indSinc: WideString; out cStat: Integer; 
                         out msgResultado: WideString; out lote: WideString; out urlNFCe: WideString): WideString; dispid 574;
    function produtoNT2015003(const cProd: WideString; const cEAN: WideString; 
                              const xProd: WideString; const NCM: WideString; 
                              const NVE_Opc: WideString; const CEST_Opc: WideString; 
                              const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                              const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                              const cEANTrib: WideString; const uTrib: WideString; 
                              const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                              vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                              const DI_Opc: WideString; const detExport_Opc: WideString; 
                              const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                              const nItemPed_Opc: WideString; const nFCI_Opc: WideString): WideString; dispid 575;
    function ICMSUFDest(vBCUFDest: Double; pFCPUFDest: Double; pICMSUFDest: Double; 
                        pICMSInter: Double; pICMSInterPart: Double; vFCPUFDest: Double; 
                        vICMSUFDest: Double; vICMSUFRemet: Double): WideString; dispid 576;
    function totalICMSNT2015003(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                vOutro: Double; vNF: Double; vTotTrib: Double; vICMSDeson: Double; 
                                vICMSUFDest_Opc: Double; vICMSUFRemet_Opc: Double; 
                                vFCPUFDest_Opc: Double): WideString; dispid 577;
    function impostoNT2015003(vTotTrib: Double; const Grupo_Icms: WideString; 
                              const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                              const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                              const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                              const Grupo_Issqn: WideString; const Grupo_ICMSUFDest: WideString): WideString; dispid 578;
    function calcICMSUFDest(formaCalculo: Integer; valorBase: Double; aliqDestino: Double; 
                            aliqInterestadual: Double; aliqFCP: Double; anoOperacao: Integer; 
                            out vBCUFDest: Double; out pFCPUFDest: Double; out pICMSUFDest: Double; 
                            out pICMSInter: Double; out pICMSInterPart: Double; 
                            out vFCPUFDest: Double; out vICMSUFDest: Double; 
                            out vICMSUFRemet: Double; out vBCOpeInter: Double; 
                            out vICMSOpeInter: Double; out cResultado: Integer; 
                            out msgResultado: WideString): WideString; dispid 579;
    function Txt2XML2015003(const txt: WideString; geraChaveNFe: Integer; 
                            const codigoSeguranca: WideString; out txtNumerado: WideString; 
                            out resultado: Integer; out erros: WideString; out qtErros: Integer; 
                            out msgResultado: WideString): WideString; dispid 580;
    function consChNFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; const CNPJ: WideString; 
                       const chaveNFe: WideString; out verAplic: WideString; 
                       out NSUXML: WideString; out schemaXML: WideString; const proxy: WideString; 
                       const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; dispid 581;
    function identificador400(cUF: Integer; cNF: Integer; const natOp: WideString; mod_: Integer; 
                              serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 582;
    function produto400(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const CEST_Opc: WideString; const indEscala_Opc: WideString; 
                        const CNPJFab_Opc: WideString; const cBenef_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                        const rastro_Opc: WideString): WideString; dispid 583;
    function rastro(const nLote: WideString; qLote: Double; dFab: TDateTime; dVal: TDateTime; 
                    const cAgreg_Opc: WideString): WideString; dispid 584;
    function med400(const cProdANVISA: WideString; vPMC: Double): WideString; dispid 585;
    function comb400(const cProdANP: WideString; const descANP: WideString; pGLP_Opc: Double; 
                     pGNn_Opc: Double; pGNi_Opc: Double; vPart_Opc: Double; 
                     const CODIF_Opc: WideString; qTemp_Opc: Double; const UFCons: WideString; 
                     qBCProd_Opc: Double; vAliqProd_Opc: Double; vCIDE_Opc: Double; 
                     const encerrante_Opc: WideString): WideString; dispid 586;
    function icms400(const orig: WideString; const CST: WideString; modBC: Integer; pRedBC: Double; 
                     vBC: Double; pICMS: Double; vICMS: Double; modBCST: Integer; pMVAST: Double; 
                     pRedBCST: Double; vBCST: Double; pICMSST: Double; vICMSST: Double; 
                     vBCSTRet: Double; vICMSSRet: Double; vBCSTDest: Double; vICMSSTDest: Double; 
                     motDesICMS: Integer; pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                     vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                     vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                     vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                     pFCPSTRet: Double; vFCPSTRet: Double; pST: Double): WideString; dispid 587;
    function ICMSUFDest400(vBCUFDest: Double; vBCFCPUFDest_Opc: Double; pFCPUFDest_Opc: Double; 
                           pICMSUFDest: Double; pICMSInter: Double; pICMSInterPart: Double; 
                           vFCPUFDest_Opc: Double; vICMSUFDest: Double; vICMSUFRemet: Double): WideString; dispid 588;
    function totalICMS400(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; vProd: Double; 
                          vFrete: Double; vSeg: Double; vDesc: Double; vII: Double; vIPI: Double; 
                          vPIS: Double; vCOFINS: Double; vOutro: Double; vNF: Double; 
                          vTotTrib: Double; vICMSDeson: Double; vICMSUFDest_Opc: Double; 
                          vICMSUFRemet_Opc: Double; vFCPUFDest_Opc: Double; vFCP: Double; 
                          vFCPST: Double; vFCPSTRet: Double; vIPIDevol: Double): WideString; dispid 589;
    function AssinarNFCe400(const NFe: WideString; const nomeCertificado: WideString; 
                            const idToken: WideString; const Token: WideString; 
                            const versaoQRCode: WideString; const URLConsulta: WideString; 
                            const urlChave: WideString; const indSinc: WideString; 
                            out cStat: Integer; out msgResultado: WideString; out lote: WideString; 
                            out urlNFCe: WideString): WideString; dispid 590;
    function pagamento400(const detPag: WideString; vTroco_Opc: Double): WideString; dispid 591;
    function detPag(const indPag_Opc: WideString; const tPag: WideString; vPag: Double; 
                    const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                    const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; dispid 592;
    function IPI400(const CNPJProd: WideString; const cSelo: WideString; qSelo: Double; 
                    const cEnq: WideString; const CST: WideString; vBC: Double; pIPI: Double; 
                    vIPI: Double; qUnid: Double; vUnid: Double): WideString; dispid 593;
    function produto400VFP(const cProd: WideString; const cEAN: WideString; 
                           const xProd: WideString; const NCM: WideString; 
                           const NVE_Opc: WideString; const CEST_Opc: WideString; 
                           const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                           const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                           const cEANTrib: WideString; const uTrib: WideString; 
                           const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                           vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                           const DI_Opc: WideString; const detExport_Opc: WideString; 
                           const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                           const nItemPed_Opc: WideString; const camposV400: WideString): WideString; dispid 594;
    function icms400VFP(const orig: WideString; const CST: WideString; modBC: Integer; 
                        pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                        modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                        pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSTRet: Double; 
                        vBCICMSSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                        pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                        vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                        vICMSDif: Double; const camposV400: WideString): WideString; dispid 595;
    function calcICMSUFDest400(formaCalculo: Integer; valorBase: Double; aliqDestino: Double; 
                               aliqInterestadual: Double; valorBaseFCP: Double; aliqFCP: Double; 
                               anoOperacao: Integer; out vBCUFDest: Double; out pFCPUFDest: Double; 
                               out pICMSUFDest: Double; out pICMSInter: Double; 
                               out pICMSInterPart: Double; out vFCPUFDest: Double; 
                               out vICMSUFDest: Double; out vICMSUFRemet: Double; 
                               out vBCOpeInter: Double; out vICMSOpeInter: Double; 
                               out cResultado: Integer; out msgResultado: WideString; 
                               out vBCFCPUFDest: Double): WideString; dispid 596;
    function envRegSaida(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out msgResultado: WideString; const chaveNFe: WideString; 
                         const nSeqRegSaida: WideString; const dtHrRegSaida: WideString; 
                         const placaVeiculo_Opc: WideString; const UFVeiculo_Opc: WideString; 
                         const placaCarreta_Opc: WideString; const UFCarreta_Opc: WideString; 
                         const placaCarreta2_Opc: WideString; const UFCarreta2_Opc: WideString; 
                         const qtdVias_Opc: WideString; const formSeg_Opc: WideString; 
                         out dhRecbto: WideString; out nProt: WideString; const proxy: WideString; 
                         const usuario: WideString; const senha: WideString; 
                         const licenca: WideString): Integer; dispid 597;
    function cancRegSaida(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveNFe: WideString; 
                          const nProt: WideString; const xJust: WideString; 
                          out dhRecbto: WideString; out nProtocolo: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString; const licenca: WideString): Integer; dispid 598;
    function icmsEfet(const orig: WideString; const CST: WideString; vBCSTRet_Opc: Double; 
                      pST_Opc: Double; vICMSSTRet_Opc: Double; vBCFCPSTRet_Opc: Double; 
                      pFCPSTRet_Opc: Double; vFCPSTRet_Opc: Double; pRedBCEfet_Opc: Double; 
                      vBCEfet_Opc: Double; pICMSEfet_Opc: Double; vICMSEfet_Opc: Double): WideString; dispid 599;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 out msgDados: WideString; out msgRetWS: WideString; 
                                 out cStat: Integer; out msgResultado: WideString; 
                                 const chaveCTe: WideString; const CNPJTomador: WideString; 
                                 const xObs: WideString; const dhEvento: WideString; 
                                 out nProtocolo: WideString; out dProtocolo: WideString; 
                                 const proxy: WideString; const usuario: WideString; 
                                 const senha: WideString; const licenca: WideString): WideString; dispid 600;
    function CancelaNFSubst(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const nProtocolo: WideString; const justificativa: WideString; 
                            const dhEvento: WideString; const verAplic: WideString; 
                            const chaveNFeSubst: WideString; out nProtocoloCanc: WideString; 
                            out dProtocoloCanc: WideString; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; dispid 601;
    function infRespTec(const CNPJ: WideString; const xContato: WideString; 
                        const eMail: WideString; const fone: WideString; const idCSRT: WideString; 
                        const CSRT_Opc: WideString; const chaveNFe_Opc: WideString): WideString; dispid 602;
    function localEntregaNT201805(const CNPJ: WideString; const CPF: WideString; 
                                  const xNome_Opc: WideString; const xLgr: WideString; 
                                  const nro: WideString; const xCpl_Opc: WideString; 
                                  const xBairro: WideString; const cMun: WideString; 
                                  const xMun: WideString; const UF: WideString; 
                                  const CEP_Opc: WideString; const cPais_Opc: WideString; 
                                  const xPais_Opc: WideString; const fone_Opc: WideString; 
                                  const eMail_Opc: WideString; const IE_Opc: WideString): WideString; dispid 603;
    function localRetiradaNT201805(const CNPJ: WideString; const CPF: WideString; 
                                   const xNome_Opc: WideString; const xLgr: WideString; 
                                   const nro: WideString; const xCpl_Opc: WideString; 
                                   const xBairro: WideString; const cMun: WideString; 
                                   const xMun: WideString; const UF: WideString; 
                                   const CEP_Opc: WideString; const cPais_Opc: WideString; 
                                   const xPais_Opc: WideString; const fone_Opc: WideString; 
                                   const eMail_Opc: WideString; const IE_Opc: WideString): WideString; dispid 604;
    function medNT201805(const cProdANVISA: WideString; const xMotivoIsencao_Opc: WideString; 
                         vPMC: Double): WideString; dispid 605;
    function icmsEfetNT201805(const orig: WideString; const CST: WideString; vBCSTRet: Double; 
                              pST: Double; vICMSSubstituto: Double; vICMSSTRet: Double; 
                              vBCFCPSTRet: Double; pFCPSTRet: Double; vFCPSTRet: Double; 
                              pRedBCEfet: Double; vBCEfet: Double; pICMSEfet: Double; 
                              vICMSEfet: Double; vBCSTDest: Double; vICMSSTDest: Double): WideString; dispid 606;
    function NFe201805(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const emit: WideString; const avulsa_Opc: WideString; 
                       const dest_Opc: WideString; const retirada_Opc: WideString; 
                       const entrega_Opc: WideString; const detalhes: WideString; 
                       const total: WideString; const transp: WideString; 
                       const cobr_Opc: WideString; const pag_Opc: WideString; 
                       const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                       const compra_Opc: WideString; const cana_Opc: WideString; 
                       const autXML_Opc: WideString; const infRespTec_Opc: WideString): WideString; dispid 607;
    function identificador202006(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                 mod_: Integer; serie: Integer; nNF: Integer; 
                                 const dhEmi: WideString; const dhSaiEnt: WideString; 
                                 tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                 const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                 cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                 indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                 const dhCont_Opc: WideString; const xJust_Opc: WideString; 
                                 indIntermed_Opc: Integer): WideString; dispid 608;
    function infIntermed(const CNPJ: WideString; const idCadIntTran: WideString): WideString; dispid 609;
    function NFe202006(const Versao: WideString; const Id: WideString; const ide: WideString; 
                       const emit: WideString; const avulsa_Opc: WideString; 
                       const dest_Opc: WideString; const retirada_Opc: WideString; 
                       const entrega_Opc: WideString; const detalhes: WideString; 
                       const total: WideString; const transp: WideString; 
                       const cobr_Opc: WideString; const pag_Opc: WideString; 
                       const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                       const compra_Opc: WideString; const cana_Opc: WideString; 
                       const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                       const infIntermed_Opc: WideString): WideString; dispid 610;
    function EnviaAtorInter(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const CNPJAutor: WideString; const dhEvento: WideString; 
                            const cOrgaoAutor: WideString; tpAutor: Integer; 
                            const verAplic: WideString; const CNPJCPFAutorizado: WideString; 
                            tpAutorizacao: Integer; nroSeqEvento: Integer; 
                            out nroProtocolo: WideString; out dhProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; dispid 611;
    function detPag202006(const indPag_Opc: WideString; const tPag: WideString; 
                          const xPag_Opc: WideString; vPag: Double; 
                          const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                          const tBand_Opc: WideString; const cAut_Opc: WideString): WideString; dispid 612;
    function EnviaCENFE(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const dhEvento: WideString; nroCENFe: Integer; const verAplic: WideString; 
                        const dhEntrega: WideString; const nDoc: WideString; 
                        const xNome: WideString; latGPS: Double; longGPS: Double; 
                        const hashComprovante: WideString; const dhHashComprovante: WideString; 
                        out nProtocolo: WideString; out dProtocolo: WideString; 
                        const proxy: WideString; const usuario: WideString; 
                        const senha: WideString; const licenca: WideString): WideString; dispid 613;
    function calcSha1(const texto: WideString): WideString; dispid 614;
    function EnviaCancCENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const dhEvento: WideString; nroCancCE: Integer; 
                            const verAplic: WideString; const nProtEvento: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; dispid 615;
    function icmsNT2020005(const orig: WideString; const CST: WideString; modBC: Integer; 
                           pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                           modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                           pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSRet: Double; 
                           vBCSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                           pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                           vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                           vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                           vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                           pFCPSTRet: Double; vFCPSTRet: Double; pST: Double; pFCPDif: Double; 
                           vFCPDif: Double; vFCPEfet: Double; vICMSSTDeson: Double; 
                           motDesICMSST: Integer): WideString; dispid 616;
    function PISSTNT2020005(vBC: Double; pPIS: Double; vPIS: Double; qBCProd: Double; 
                            vAliqProd: Double; indSomaPISST: Integer): WideString; dispid 617;
    function COFINSSTNT2020005(vBC: Double; pCOFINS: Double; vCOFINS: Double; qBCProd: Double; 
                               vAliqProd: Double; indSomaCOFINSST: Integer): WideString; dispid 618;
    function detalheNT2021004(nItem: Integer; const produto: WideString; const imposto: WideString; 
                              const infAdProd_Opc: WideString; pDevol_Opc: Double; 
                              vIPIDevol_Opc: Double; const obsContItem_Opc: WideString; 
                              const obsFiscoItem_Opc: WideString): WideString; dispid 619;
    function procRefNT2021004(const nProc: WideString; indProc: Integer; const tpAto_Opc: WideString): WideString; dispid 620;
    function ConsGTIN(const nomeCertificado: WideString; const Versao: WideString; 
                      out msgDados: WideString; out msgRetWS: WideString; 
                      out msgResultado: WideString; const GTIN: WideString; out dhResp: WideString; 
                      out tpGTIN: WideString; out xProd: WideString; out NCM: WideString; 
                      out CEST1: WideString; out CEST2: WideString; out CEST3: WideString; 
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 621;
    function NFeSigRef(const NFe: WideString): WideString; dispid 622;
    function combNT2023001(const cProdANP: WideString; const descANP: WideString; pGLP_Opc: Double; 
                           pGNn_Opc: Double; pGNi_Opc: Double; vPart_Opc: Double; 
                           const CODIF_Opc: WideString; qTemp_Opc: Double; 
                           const UFCons: WideString; qBCProd_Opc: Double; vAliqProd_Opc: Double; 
                           vCIDE_Opc: Double; const encerrante_Opc: WideString; pBio_Opc: Double; 
                           const origComb_Opc: WideString): WideString; dispid 623;
    function origComb(indImport: Integer; cUFOrig: Integer; pOrig: Double): WideString; dispid 624;
    function icms02(const orig: WideString; qBCMono_Opc: Double; adRemICMS: Double; 
                    vICMSMono: Double): WideString; dispid 625;
    function icms15(const orig: WideString; qBCMono_Opc: Double; adRemICMS: Double; 
                    vICMSMono: Double; qBCMonoReten_Opc: Double; adRemICMSReten: Double; 
                    vICMSMonoReten: Double; pRedAdRem_Opc: Double; motRedAdRem_Opc: Integer): WideString; dispid 626;
    function icms53(const orig: WideString; qBCMono_Opc: Double; adRemICMS_Opc: Double; 
                    vICMSMonoOp_Opc: Double; pDif_Opc: Double; vICMSMonoDif_Opc: Double; 
                    vICMSMono_Opc: Double): WideString; dispid 627;
    function icms61(const orig: WideString; qBCMonoRet_Opc: Double; adRemICMSRet: Double; 
                    vICMSMonoRet: Double): WideString; dispid 628;
    function totalICMSNT2023001(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                vOutro: Double; vNF: Double; vTotTrib: Double; vICMSDeson: Double; 
                                vICMSUFDest_Opc: Double; vICMSUFRemet_Opc: Double; 
                                vFCPUFDest_Opc: Double; vFCP: Double; vFCPST: Double; 
                                vFCPSTRet: Double; vIPIDevol: Double; qBCMono_Opc: Double; 
                                vICMSMono_Opc: Double; qBCMonoReten_Opc: Double; 
                                vICMSMonoReten_Opc: Double; qBCMonoRet_Opc: Double; 
                                vICMSMonoRet_Opc: Double): WideString; dispid 629;
    function totalICMSNT2023001VFP(vBC: Double; vICMS: Double; vBCST: Double; vST: Double; 
                                   vProd: Double; vFrete: Double; vSeg: Double; vDesc: Double; 
                                   vII: Double; vIPI: Double; vPIS: Double; vCOFINS: Double; 
                                   vOutro: Double; vNF: Double; vTotTrib: Double; 
                                   vICMSDeson: Double; vICMSUFDest_Opc: Double; 
                                   vICMSUFRemet_Opc: Double; vFCPUFDest_Opc: Double; vFCP: Double; 
                                   vFCPST: Double; vFCPSTRet: Double; vIPIDevol: Double; 
                                   const camposNT2023001: WideString): WideString; dispid 630;
    function detPag2023004(const indPag_Opc: WideString; const tPag: WideString; 
                           const xPag_Opc: WideString; vPag: Double; 
                           const tpIntegra_Opc: WideString; const CNPJ_Opc: WideString; 
                           const tBand_Opc: WideString; const cAut_Opc: WideString; 
                           const dPag_Opc: WideString; const CNPJPag_Opc: WideString; 
                           const UFPag_Opc: WideString; const CNPJReceb_Opc: WideString; 
                           const idTermPag_Opc: WideString): WideString; dispid 631;
    function icmsNT2023004(const orig: WideString; const CST: WideString; modBC: Integer; 
                           pRedBC: Double; vBC: Double; pICMS: Double; vICMS: Double; 
                           modBCST: Integer; pMVAST: Double; pRedBCST: Double; vBCST: Double; 
                           pICMSST: Double; vICMSST: Double; vBCSTRet: Double; vICMSSRet: Double; 
                           vBCSTDest: Double; vICMSSTDest: Double; motDesICMS: Integer; 
                           pBCOp: Double; const UFST: WideString; pCredSN: Double; 
                           vCredICMSSN: Double; vICMSDeson: Double; vICMSOp: Double; pDif: Double; 
                           vICMSDif: Double; vBCFCP: Double; pFCP: Double; vFCP: Double; 
                           vBCFCPST: Double; pFCPST: Double; vFCPST: Double; vBCFCPSTRet: Double; 
                           pFCPSTRet: Double; vFCPSTRet: Double; pST: Double; pFCPDif: Double; 
                           vFCPDif: Double; vFCPEfet: Double; vICMSSTDeson: Double; 
                           motDesICMSST: Integer; indDeduzDeson: Integer; 
                           const cBenefRBC: WideString): WideString; dispid 632;
    function CredPresumido(const cCredPresumido: WideString; pCredPresumido: Double; 
                           vCredPresumido: Double): WideString; dispid 633;
    function produtoNT2019001(const cProd: WideString; const cEAN: WideString; 
                              const xProd: WideString; const NCM: WideString; 
                              const NVE_Opc: WideString; const CEST_Opc: WideString; 
                              const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                              const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                              CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                              const vUnCom: WideString; vProd: Double; const cEANTrib: WideString; 
                              const uTrib: WideString; const qTrib: WideString; 
                              const vUnTrib: WideString; vFrete: Double; vSeg: Double; 
                              vDesc: Double; vOutro: Double; indTot: Integer; 
                              const DI_Opc: WideString; const detExport_Opc: WideString; 
                              const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                              const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                              const rastro_Opc: WideString; const credPresumido_Opc: WideString): WideString; dispid 634;
    function EnviaIENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const CNPJAutor: WideString; 
                        const chaveNFe: WideString; const dhEvento: WideString; nSeqIENFe: Integer; 
                        const verAplic: WideString; const dhTentativaEntrega: WideString; 
                        nTentativa: Integer; tpMotivo: Integer; const xJustMotivo: WideString; 
                        latGPS: Double; longGPS: Double; const hashTentativaEntrega: WideString; 
                        const dhHashTentativaEntrega: WideString; out nProtocolo: WideString; 
                        out dProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; dispid 635;
    function EnviaCancIENFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const CNPJAutor: WideString; 
                            const chaveNFe: WideString; const dhEvento: WideString; 
                            nSeqCancIENFe: Integer; const verAplic: WideString; 
                            const nProtEvento: WideString; out nProtocolo: WideString; 
                            out dProtocolo: WideString; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; dispid 636;
    function EnviaManDest2(const siglaWS: WideString; tipoAmbiente: Integer; 
                           const nomeCertificado: WideString; const Versao: WideString; 
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                           out msgResultado: WideString; const chaveNFe: WideString; 
                           const CNPJAutor: WideString; const dhEvento: WideString; 
                           tpEvento: Integer; nSeqEvento: Integer; const xJust: WideString; 
                           out nroProtocolo: WideString; out dhProtocolo: WideString; 
                           const proxy: WideString; const usuario: WideString; 
                           const senha: WideString; const licenca: WideString): WideString; dispid 637;
    function EnviaECONF(const siglaWS: WideString; tipoAmbiente: Integer; 
                        const nomeCertificado: WideString; const Versao: WideString; 
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                        out msgResultado: WideString; const chaveNFe: WideString; 
                        const detPag: WideString; const dhEvento: WideString; nSeqEvento: Integer; 
                        const verAplic: WideString; out nProtocolo: WideString; 
                        out dProtocolo: WideString; const proxy: WideString; 
                        const usuario: WideString; const senha: WideString; 
                        const licenca: WideString): WideString; dispid 638;
    function EnviaCancECONF(const siglaWS: WideString; tipoAmbiente: Integer; 
                            const nomeCertificado: WideString; const Versao: WideString; 
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                            out msgResultado: WideString; const chaveNFe: WideString; 
                            const nProtEvento: WideString; const dhEvento: WideString; 
                            nSeqEvento: Integer; const verAplic: WideString; 
                            out nProtocolo: WideString; out dProtocolo: WideString; 
                            const proxy: WideString; const usuario: WideString; 
                            const senha: WideString; const licenca: WideString): WideString; dispid 639;
    function detPagECONF(const indPag_Opc: WideString; const tPag: WideString; 
                         const xPag_Opc: WideString; vPag: Double; const dPag: WideString; 
                         const CNPJPag_Opc: WideString; const UFPag_Opc: WideString; 
                         const CNPJIF_Opc: WideString; const tBand_Opc: WideString; 
                         const cAut_Opc: WideString; const CNPJReceb_Opc: WideString; 
                         const UFReceb_Opc: WideString): WideString; dispid 640;
    function defensivo(const nReceituario: WideString; const CPFRespTec: WideString): WideString; dispid 641;
    function guiaTransito(tpGuia: Integer; const UFGuia_Opc: WideString; 
                          const serieGuia_Opc: WideString; const nGuia: WideString): WideString; dispid 642;
    function NFe2024003(const Versao: WideString; const Id: WideString; const ide: WideString; 
                        const emit: WideString; const avulsa_Opc: WideString; 
                        const dest_Opc: WideString; const retirada_Opc: WideString; 
                        const entrega_Opc: WideString; const detalhes: WideString; 
                        const total: WideString; const transp: WideString; 
                        const cobr_Opc: WideString; const pag_Opc: WideString; 
                        const infAdic_Opc: WideString; const exporta_Opc: WideString; 
                        const compra_Opc: WideString; const cana_Opc: WideString; 
                        const autXML_Opc: WideString; const infRespTec_Opc: WideString; 
                        const infIntermed_Opc: WideString; const agropecuario_Opc: WideString): WideString; dispid 643;
    function identificadorRTC(cUF: Integer; cNF: Integer; const natOp: WideString; mod_: Integer; 
                              serie: Integer; nNF: Integer; const dhEmi: WideString; 
                              const dhSaiEnt: WideString; tpNF: Integer; idDest: Integer; 
                              const cMunFG: WideString; const NFref_Opc: WideString; 
                              tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; 
                              finNFe: Integer; indFinal: Integer; indPres: Integer; 
                              procEmi: Integer; const verProc: WideString; 
                              const dhCont: WideString; const xJust: WideString; 
                              indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                              const tpNFDebito_Opc: WideString; const tpNFCredito_Opc: WideString; 
                              const gCompraGov_Opc: WideString; 
                              const NFePagAntecipado_Opc: WideString): WideString; dispid 644;
    function gCompraGov(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer): WideString; dispid 645;
    function IS_(const CSTIS: WideString; const cClassTribIS: WideString; vBCIS: Double; 
                 PIS: Double; adRemIS_Opc: Double; const uTrib_Opc: WideString; qTrib_Opc: Double; 
                 vIS: Double): WideString; dispid 646;
    function IBSCBS(const CST: WideString; const cClassTrib: WideString; 
                    const gTributo: WideString; const gCredPresIBSZFM_Opc: WideString): WideString; dispid 647;
    function gIBSUF(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                    pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSUF: Double): WideString; dispid 648;
    function gIBSMun(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                     pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSMun: Double): WideString; dispid 649;
    function gCBS(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double; 
                  pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vCBS: Double): WideString; dispid 650;
    function gTribRegular(const CSTReg: WideString; const cClassTribReg: WideString; 
                          pAliqEfetRegIBSUF: Double; vTribRegIBSUF: Double; 
                          pAliqEfetRegIBSMun: Double; vTribRegIBSMun: Double; 
                          pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; dispid 651;
    function gIBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double; 
                          vCredPresCondSus_Alt: Double): WideString; dispid 652;
    function gCBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double; 
                          vCredPresCondSus_Alt: Double): WideString; dispid 653;
    function gIBSCBSMono(qBCMono: Double; adRemIBS: Double; adRemCBS: Double; vIBSMono: Double; 
                         vCBSMono: Double; qBCMonoReten_Opc: Double; adRemIBSReten_Opc: Double; 
                         vIBSMonoReten_Opc: Double; adRemCBSReten_Opc: Double; 
                         vCBSMonoReten_Opc: Double; qBCMonoRet_Opc: Double; 
                         adRemIBSRet_Opc: Double; vIBSMonoRet_Opc: Double; adRemCBSRet_Opc: Double; 
                         vCBSMonoRet_Opc: Double; pDifIBS_Opc: Double; vIBSMonoDif_Opc: Double; 
                         pDifCBS_Opc: Double; vCBSMonoDif_Opc: Double; vTotIBSMonoItem: Double; 
                         vTotCBSMonoItem: Double): WideString; dispid 654;
    function DFeReferenciado(const chaveAcesso: WideString; nItem: Integer): WideString; dispid 655;
    function gIBSCBS(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString; 
                     vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString; 
                     const gIBSCredPres_Opc: WideString; const gCBSCredPres_Opc: WideString; 
                     const gTribCompraGov_Opc: WideString): WideString; dispid 656;
    function impostoRTC(vTotTrib: Double; const Grupo_Icms: WideString; 
                        const Grupo_Ipi: WideString; const Grupo_Ii: WideString; 
                        const Grupo_Pis: WideString; const Grupo_Pisst: WideString; 
                        const Grupo_Cofins: WideString; const Grupo_Cofinsst: WideString; 
                        const Grupo_Issqn: WideString; const Grupo_ICMSUFDest: WideString; 
                        const Grupo_IS: WideString; const Grupo_IBSCBS: WideString): WideString; dispid 657;
    function gIBSTot(vDif_UF: Double; vDevTrib_UF: Double; vIBSUF: Double; vDif_Mun: Double; 
                     vDevTrib_Mun: Double; vIBSMun: Double; vIBS: Double; vCredPres: Double; 
                     vCredPresCondSus: Double): WideString; dispid 658;
    function gCBSTot(vDif: Double; vDevTrib: Double; vCBS: Double; vCredPres: Double; 
                     vCredPresCondSus: Double): WideString; dispid 659;
    function gMonoTot(vIBSMono: Double; vCBSMono: Double; vIBSMonoReten: Double; 
                      vCBSMonoReten: Double; vIBSMonoRet: Double; vCBSMonoRet: Double): WideString; dispid 660;
    function IBSCBSTot(vBCIBSCBS: Double; const gIBS_Opc: WideString; const gCBS_Opc: WideString; 
                       const gMono_Opc: WideString): WideString; dispid 661;
    function totalRTC(const ICMSTot: WideString; const ISSQNtot: WideString; 
                      const retTrib: WideString; vIS: Double; const IBSCBSTot: WideString; 
                      vNFTot: Double): WideString; dispid 662;
    function detalheRTC(nItem: Integer; const produto: WideString; const imposto: WideString; 
                        const infAdProd_Opc: WideString; pDevol_Opc: Double; vIPIDevol_Opc: Double; 
                        const obsContItem_Opc: WideString; const obsFiscoItem_Opc: WideString; 
                        vItem_Opc: Double; const DFeReferenciado_Opc: WideString): WideString; dispid 663;
    function ev112110_informaPagto(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; out nProtocolo: WideString; 
                                   out dProtocolo: WideString; out msgDados: WideString; 
                                   out msgRetWS: WideString; out cStat: Integer; 
                                   out msgResultado: WideString; const proxy: WideString; 
                                   const usuario: WideString; const senha: WideString; 
                                   const licenca: WideString): WideString; dispid 664;
    function ev211110_credPresumido(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    tpAutor: Integer; const CNPJAutor: WideString; 
                                    const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                    const dhEvento: WideString; nSeqEvento: Integer; 
                                    const verAplic: WideString; const gCredPres: WideString; 
                                    out nProtocolo: WideString; out dProtocolo: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const proxy: WideString; const usuario: WideString; 
                                    const senha: WideString; const licenca: WideString): WideString; dispid 665;
    function gCredPres(nItem: Integer; vBC: Double; const cCredPresIBS_Opc: WideString; 
                       pCredPresIBS_Opc: Double; vCredPresIBS_Opc: Double; 
                       const cCredPresCBS_Opc: WideString; pCredPresCBS_Opc: Double; 
                       vCredPresCBS_Opc: Double): WideString; dispid 666;
    function ev211120_destConsumo(const siglaWS: WideString; tipoAmbiente: Integer; 
                                  const nomeCertificado: WideString; const Versao: WideString; 
                                  tpAutor: Integer; const CNPJAutor: WideString; 
                                  const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                  const dhEvento: WideString; nSeqEvento: Integer; 
                                  const verAplic: WideString; const gConsumo: WideString; 
                                  out nProtocolo: WideString; out dProtocolo: WideString; 
                                  out msgDados: WideString; out msgRetWS: WideString; 
                                  out cStat: Integer; out msgResultado: WideString; 
                                  const proxy: WideString; const usuario: WideString; 
                                  const senha: WideString; const licenca: WideString): WideString; dispid 667;
    function gConsumo(nItem: Integer; vIBS: Double; vCBS: Double; qConsumo: Double; 
                      const uConsumo: WideString; const DFeRef: WideString; nItemDFeRef: Integer): WideString; dispid 668;
    function ev211124_perdaFOB(const siglaWS: WideString; tipoAmbiente: Integer; 
                               const nomeCertificado: WideString; const Versao: WideString; 
                               tpAutor: Integer; const CNPJAutor: WideString; 
                               const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                               const dhEvento: WideString; nSeqEvento: Integer; 
                               const verAplic: WideString; const gPerecimento: WideString; 
                               out nProtocolo: WideString; out dProtocolo: WideString; 
                               out msgDados: WideString; out msgRetWS: WideString; 
                               out cStat: Integer; out msgResultado: WideString; 
                               const proxy: WideString; const usuario: WideString; 
                               const senha: WideString; const licenca: WideString): WideString; dispid 669;
    function gPerecimento(nItem: Integer; vIBS: Double; vCBS: Double; qPerecimento: Double; 
                          const uPerecimento: WideString): WideString; dispid 670;
    function ev211128_aceiteDebito(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; dispid 671;
    function ev211130_imobilizaItem(const siglaWS: WideString; tipoAmbiente: Integer; 
                                    const nomeCertificado: WideString; const Versao: WideString; 
                                    tpAutor: Integer; const CNPJAutor: WideString; 
                                    const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                    const dhEvento: WideString; nSeqEvento: Integer; 
                                    const verAplic: WideString; const gImobilizacao: WideString; 
                                    out nProtocolo: WideString; out dProtocolo: WideString; 
                                    out msgDados: WideString; out msgRetWS: WideString; 
                                    out cStat: Integer; out msgResultado: WideString; 
                                    const proxy: WideString; const usuario: WideString; 
                                    const senha: WideString; const licenca: WideString): WideString; dispid 672;
    function gImobilizacao(nItem: Integer; vIBS: Double; vCBS: Double; qImobilizado: Double; 
                           const uImobilizado: WideString): WideString; dispid 673;
    function ev211140_credCombustivel(const siglaWS: WideString; tipoAmbiente: Integer; 
                                      const nomeCertificado: WideString; const Versao: WideString; 
                                      tpAutor: Integer; const CNPJAutor: WideString; 
                                      const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                      const dhEvento: WideString; nSeqEvento: Integer; 
                                      const verAplic: WideString; const gConsumoComb: WideString; 
                                      out nProtocolo: WideString; out dProtocolo: WideString; 
                                      out msgDados: WideString; out msgRetWS: WideString; 
                                      out cStat: Integer; out msgResultado: WideString; 
                                      const proxy: WideString; const usuario: WideString; 
                                      const senha: WideString; const licenca: WideString): WideString; dispid 674;
    function gConsumoComb(nItem: Integer; vIBS: Double; vCBS: Double; qComb: Double; 
                          const uComb: WideString): WideString; dispid 675;
    function ev211150_credBensServicos(const siglaWS: WideString; tipoAmbiente: Integer; 
                                       const nomeCertificado: WideString; const Versao: WideString; 
                                       tpAutor: Integer; const CNPJAutor: WideString; 
                                       const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                       const dhEvento: WideString; nSeqEvento: Integer; 
                                       const verAplic: WideString; const gCredito: WideString; 
                                       out nProtocolo: WideString; out dProtocolo: WideString; 
                                       out msgDados: WideString; out msgRetWS: WideString; 
                                       out cStat: Integer; out msgResultado: WideString; 
                                       const proxy: WideString; const usuario: WideString; 
                                       const senha: WideString; const licenca: WideString): WideString; dispid 676;
    function gCredito(nItem: Integer; vCredIBS: Double; vCredCBS: Double): WideString; dispid 677;
    function ev212110_transCredIBS(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; dispid 678;
    function ev212120_transCredCBS(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const indAceitacao: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; dispid 679;
    function ev110001_cancEvento(const siglaWS: WideString; tipoAmbiente: Integer; 
                                 const nomeCertificado: WideString; const Versao: WideString; 
                                 tpAutor: Integer; const CNPJAutor: WideString; 
                                 const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                 const dhEvento: WideString; nSeqEvento: Integer; 
                                 const verAplic: WideString; const tpEventoAut: WideString; 
                                 const nProtEvento: WideString; out nProtocolo: WideString; 
                                 out dProtocolo: WideString; out msgDados: WideString; 
                                 out msgRetWS: WideString; out cStat: Integer; 
                                 out msgResultado: WideString; const proxy: WideString; 
                                 const usuario: WideString; const senha: WideString; 
                                 const licenca: WideString): WideString; dispid 680;
    function refNFe(const chaveNFe: WideString): WideString; dispid 681;
    function gTransfCred(vIBS: Double; vCBS: Double): WideString; dispid 682;
    function gTribCompraGov(pAliqIBSUF: Double; vTribIBSUF: Double; pAliqIBSMun: Double; 
                            vTribIBSMun: Double; pAliqCBS: Double; vTribCBS: Double): WideString; dispid 683;
    function gCredPresIBSZFM(tpCredPresIBSZFM: Integer; vCredPresIBSZFM: Double): WideString; dispid 684;
    function ev112130_perdaCIF(const siglaWS: WideString; tipoAmbiente: Integer; 
                               const nomeCertificado: WideString; const Versao: WideString; 
                               tpAutor: Integer; const CNPJAutor: WideString; 
                               const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                               const dhEvento: WideString; nSeqEvento: Integer; 
                               const verAplic: WideString; const gPerecimento: WideString; 
                               out nProtocolo: WideString; out dProtocolo: WideString; 
                               out msgDados: WideString; out msgRetWS: WideString; 
                               out cStat: Integer; out msgResultado: WideString; 
                               const proxy: WideString; const usuario: WideString; 
                               const senha: WideString; const licenca: WideString): WideString; dispid 685;
    function ev112120_ImpALCZFM(const siglaWS: WideString; tipoAmbiente: Integer; 
                                const nomeCertificado: WideString; const Versao: WideString; 
                                tpAutor: Integer; const CNPJAutor: WideString; 
                                const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                const dhEvento: WideString; nSeqEvento: Integer; 
                                const verAplic: WideString; const gPerecimento: WideString; 
                                out nProtocolo: WideString; out dProtocolo: WideString; 
                                out msgDados: WideString; out msgRetWS: WideString; 
                                out cStat: Integer; out msgResultado: WideString; 
                                const proxy: WideString; const usuario: WideString; 
                                const senha: WideString; const licenca: WideString): WideString; dispid 686;
    function ev112140_naoOcFornPagAnt(const siglaWS: WideString; tipoAmbiente: Integer; 
                                      const nomeCertificado: WideString; const Versao: WideString; 
                                      tpAutor: Integer; const CNPJAutor: WideString; 
                                      const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                      const dhEvento: WideString; nSeqEvento: Integer; 
                                      const verAplic: WideString; const gPerecimento: WideString; 
                                      out nProtocolo: WideString; out dProtocolo: WideString; 
                                      out msgDados: WideString; out msgRetWS: WideString; 
                                      out cStat: Integer; out msgResultado: WideString; 
                                      const proxy: WideString; const usuario: WideString; 
                                      const senha: WideString; const licenca: WideString): WideString; dispid 687;
    function gItemNaoFornecido(nItem: Integer; vIBS: Double; vCBS: Double; qNaoFornecida: Double; 
                               const uNaoFornecida: WideString): WideString; dispid 688;
    function gConsumoZFM(nItem: Integer; vIBS: Double; vCBS: Double; qtde: Double; 
                         const unidade: WideString): WideString; dispid 689;
    function produtoRTC(const cProd: WideString; const cEAN: WideString; const xProd: WideString; 
                        const NCM: WideString; const NVE_Opc: WideString; 
                        const CEST_Opc: WideString; const indEscala_Opc: WideString; 
                        const CNPJFab_Opc: WideString; const cBenef_Opc: WideString; 
                        const EXTIPI_Opc: WideString; CFOP: Integer; const uCom: WideString; 
                        const qCom: WideString; const vUnCom: WideString; vProd: Double; 
                        const cEANTrib: WideString; const uTrib: WideString; 
                        const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                        vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                        const DI_Opc: WideString; const detExport_Opc: WideString; 
                        const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                        const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                        const rastro_Opc: WideString; const credPresumido_Opc: WideString; 
                        indBemMovelUsado_Opc: Integer): WideString; dispid 690;
    function identificadorRTCVFP(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                 mod_: Integer; serie: Integer; nNF: Integer; 
                                 const dhEmi: WideString; const dhSaiEnt: WideString; 
                                 tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                 const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                 cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                 indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                 const dhCont_Opc: WideString; const xJust_Opc: WideString; 
                                 indIntermed_Opc: Integer; const camposRTC_Opc: WideString): WideString; dispid 691;
    function gPerecimentoCIF(nItem: Integer; vIBS: Double; vCBS: Double; qPerecimento: Double; 
                             const uPerecimento: WideString; vEstornoIBS: Double; 
                             vEstornoCBS: Double): WideString; dispid 692;
    function identificadorRTCv130(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                  mod_: Integer; serie: Integer; nNF: Integer; 
                                  const dhEmi: WideString; const dhSaiEnt: WideString; 
                                  tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                  const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                  cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                  indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                  const dhCont: WideString; const xJust: WideString; 
                                  indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                                  const tpNFDebito_Opc: WideString; 
                                  const tpNFCredito_Opc: WideString; 
                                  const gCompraGov_Opc: WideString; 
                                  const NFePagAntecipado_Opc: WideString; 
                                  const dPrevEntrega_Opc: WideString): WideString; dispid 693;
    function produtoRTCv130(const cProd: WideString; const cEAN: WideString; 
                            const xProd: WideString; const NCM: WideString; 
                            const NVE_Opc: WideString; const CEST_Opc: WideString; 
                            const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                            const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                            CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                            const vUnCom: WideString; vProd: Double; const cEANTrib: WideString; 
                            const uTrib: WideString; const qTrib: WideString; 
                            const vUnTrib: WideString; vFrete: Double; vSeg: Double; vDesc: Double; 
                            vOutro: Double; indTot: Integer; const DI_Opc: WideString; 
                            const detExport_Opc: WideString; const DetEspecifico_Opc: WideString; 
                            const xPed_Opc: WideString; const nItemPed_Opc: WideString; 
                            const nFCI_Opc: WideString; const rastro_Opc: WideString; 
                            const credPresumido_Opc: WideString; indBemMovelUsado_Opc: Integer; 
                            const tpCredPresIBSZFM_Opc: WideString): WideString; dispid 694;
    function IBSCBSv130(const CST: WideString; const cClassTrib: WideString; 
                        const indDoacao_Opc: WideString; const gTributo: WideString; 
                        const gEstornoCred_Opc: WideString; const gCredPresumido_Opc: WideString): WideString; dispid 695;
    function gAjusteCompet(const competApur: WideString; vIBS: Double; vCBS: Double): WideString; dispid 696;
    function gEstornoCred(vIBSEstCred: Double; vCBSEstCred: Double): WideString; dispid 697;
    function gCredPresOper(vBCCredPres: Double; const cCredPres: WideString; 
                           pIBSCredPres_Opc: Double; vIBSCredPres_Opc: Double; 
                           vIBSCredPresCondSus_Opc: Double; pCBSCredPres_Opc: Double; 
                           vCBSCredPres_Opc: Double; vCBSCredPresCondSus_Opc: Double): WideString; dispid 698;
    function gCredPresIBSZFMv130(const competApur: WideString; tpCredPresIBSZFM: Integer; 
                                 vCredPresIBSZFM: Double): WideString; dispid 699;
    function IBSCBSTotv130(vBCIBSCBS: Double; const gIBS_Opc: WideString; 
                           const gCBS_Opc: WideString; const gMono_Opc: WideString; 
                           const gEstornoCred_Opc: WideString): WideString; dispid 700;
    function ev112150_atualizaDataPrevEntrega(const siglaWS: WideString; tipoAmbiente: Integer; 
                                              const nomeCertificado: WideString; 
                                              const Versao: WideString; tpAutor: Integer; 
                                              const CNPJAutor: WideString; 
                                              const cOrgaoAutor: WideString; 
                                              const chaveNFe: WideString; 
                                              const dhEvento: WideString; nSeqEvento: Integer; 
                                              const verAplic: WideString; 
                                              const dPrevEntrega: WideString; 
                                              out nProtocolo: WideString; 
                                              out dProtocolo: WideString; out msgDados: WideString; 
                                              out msgRetWS: WideString; out cStat: Integer; 
                                              out msgResultado: WideString; 
                                              const proxy: WideString; const usuario: WideString; 
                                              const senha: WideString; const licenca: WideString): WideString; dispid 701;
    function gIBSCBSv130(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString; 
                         vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString; 
                         const gTribCompraGov_Opc: WideString): WideString; dispid 702;
    function identificadorRTCv140(cUF: Integer; cNF: Integer; const natOp: WideString; 
                                  mod_: Integer; serie: Integer; nNF: Integer; 
                                  const dhEmi: WideString; const dhSaiEnt: WideString; 
                                  tpNF: Integer; idDest: Integer; const cMunFG: WideString; 
                                  const NFref_Opc: WideString; tpImp: Integer; tpEmis: Integer; 
                                  cDV: Integer; tpAmb: Integer; finNFe: Integer; indFinal: Integer; 
                                  indPres: Integer; procEmi: Integer; const verProc: WideString; 
                                  const dhCont: WideString; const xJust: WideString; 
                                  indIntermed_Opc: Integer; const cMunFGIBS_Opc: WideString; 
                                  const tpNFDebito_Opc: WideString; 
                                  const tpNFCredito_Opc: WideString; 
                                  const gCompraGov_Opc: WideString; 
                                  const NFePagAntecipado_Opc: WideString; 
                                  const dPrevEntrega_Opc: WideString; const cIndOp_Opc: WideString): WideString; dispid 703;
    function gCompraGovv140(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer; 
                            const refDFeAnt_Opc: WideString): WideString; dispid 704;
    function refDFeAnt(const chaveDFe: WideString): WideString; dispid 705;
    function emitenteRTC(const CNPJ: WideString; const CPF: WideString; const xNome: WideString; 
                         const xFant: WideString; const xLgr: WideString; const nro: WideString; 
                         const xCpl: WideString; const xBairro: WideString; const cMun: WideString; 
                         const xMun: WideString; const UF: WideString; const CEP: WideString; 
                         const cPais: WideString; const xPais: WideString; const fone: WideString; 
                         const IE: WideString; const IEST: WideString; const IM: WideString; 
                         const CNAE: WideString; const CRT: WideString; const ISUFEmit: WideString): WideString; dispid 706;
    function gIBSUFv140(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                        vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                        vIBSUF: Double): WideString; dispid 707;
    function gIBSMunv140(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                         vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                         vIBSMun: Double): WideString; dispid 708;
    function gCBSv140(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double; 
                      vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double; 
                      const gALCZFMCBS_Opc: WideString; vCBS: Double): WideString; dispid 709;
    function gALCZFMCBS(tpALCZFMCBS: Integer; const nProcSuframa_Opc: WideString; 
                        pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; dispid 710;
    function gCredPresOperv140(nItem: Integer; vBCCredPres: Double; const cCredPres: WideString; 
                               pIBSCredPres_Opc: Double; vIBSCredPres_Opc: Double; 
                               pCBSCredPres_Opc: Double; vCBSCredPres_Opc: Double): WideString; dispid 711;
    function gIBSCBSMonov150(const gIBSMonoAdRem_Opc: WideString; 
                             const gIBSMonoAdValorem_Opc: WideString; 
                             const gCBSMonoAdRem_Opc: WideString; 
                             const gCBSMonoAdValorem_Opc: WideString; vTotIBSMonoItem: Double; 
                             vTotCBSMonoItem: Double): WideString; dispid 712;
    function gIBSMonoAdRem(qBCMono_Opc: Double; adRemIBS_Opc: Double; vIBSMono_Opc: Double; 
                           qBCMonoReten_Opc: Double; adRemIBSReten_Opc: Double; 
                           vIBSMonoReten_Opc: Double; vIBSMonoRet_Opc: Double; 
                           qBCBioComb_Opc: Double; vIBSDiferenca_Opc: Double): WideString; dispid 713;
    function gIBSMonoAdValorem(vBCMono_Opc: Double; pAliqMonoUF_Opc: Double; 
                               vIBSMonoUF_Opc: Double; pAliqMonoMun_Opc: Double; 
                               vIBSMonoMun_Opc: Double; vIBSMono_Opc: Double; 
                               vBCMonoReten_Opc: Double; pAliqMonoReten_Opc: Double; 
                               vIBSMonoReten_Opc: Double; vIBSMonoRet_Opc: Double; 
                               qBCBioComb_Opc: Double; vIBSDiferenca_Opc: Double): WideString; dispid 714;
    function gCBSMonoAdRem(qBCMono_Opc: Double; adRemCBS_Opc: Double; vCBSMono_Opc: Double; 
                           qBCMonoReten_Opc: Double; adRemCBSReten_Opc: Double; 
                           vCBSMonoReten_Opc: Double; vCBSMonoRet_Opc: Double; 
                           qBCBioComb_Opc: Double; vCBSDiferenca_Opc: Double): WideString; dispid 715;
    function gCBSMonoAdValorem(vBCMono_Opc: Double; pAliqMonoCBS_Opc: Double; vCBSMono_Opc: Double; 
                               vBCMonoReten_Opc: Double; pAliqMonoReten_Opc: Double; 
                               vCBSMonoReten_Opc: Double; vCBSMonoRet_Opc: Double; 
                               qBCBioComb_Opc: Double; vCBSDiferenca_Opc: Double): WideString; dispid 716;
    function produtoRTCvProdLiq(const cProd: WideString; const cEAN: WideString; 
                                const xProd: WideString; const NCM: WideString; 
                                const NVE_Opc: WideString; const CEST_Opc: WideString; 
                                const indEscala_Opc: WideString; const CNPJFab_Opc: WideString; 
                                const cBenef_Opc: WideString; const EXTIPI_Opc: WideString; 
                                CFOP: Integer; const uCom: WideString; const qCom: WideString; 
                                const vUnCom: WideString; vProd: Double; 
                                const cEANTrib: WideString; const uTrib: WideString; 
                                const qTrib: WideString; const vUnTrib: WideString; vFrete: Double; 
                                vSeg: Double; vDesc: Double; vOutro: Double; indTot: Integer; 
                                const DI_Opc: WideString; const detExport_Opc: WideString; 
                                const DetEspecifico_Opc: WideString; const xPed_Opc: WideString; 
                                const nItemPed_Opc: WideString; const nFCI_Opc: WideString; 
                                const rastro_Opc: WideString; const credPresumido_Opc: WideString; 
                                indBemMovelUsado_Opc: Integer; 
                                const tpCredPresIBSZFM_Opc: WideString; 
                                const vUnComLiq: WideString; vProdLiq: Double): WideString; dispid 717;
    function ICMSPrevistoPagAnt(vICMSPrevisto: Double): WideString; dispid 718;
    function totalRTCvProdLiqTot(const ICMSTot: WideString; const ISSQNtot: WideString; 
                                 const retTrib: WideString; vIS: Double; 
                                 const IBSCBSTot: WideString; vNFTot: Double; vProdLiqTot: Double): WideString; dispid 719;
    function gPgto(nPag: Integer; const idTransacao: WideString; const tpMeioPgto: WideString; 
                   const CNPJReceb: WideString; const CNPJBasePSP: WideString): WideString; dispid 720;
    function NFeRTC(const Versao: WideString; const Id: WideString; const ide: WideString; 
                    const emit: WideString; const avulsa_Opc: WideString; 
                    const dest_Opc: WideString; const retirada_Opc: WideString; 
                    const entrega_Opc: WideString; const detalhes: WideString; 
                    const total: WideString; const transp: WideString; const cobr_Opc: WideString; 
                    const pag_Opc: WideString; const infAdic_Opc: WideString; 
                    const exporta_Opc: WideString; const compra_Opc: WideString; 
                    const cana_Opc: WideString; const autXML_Opc: WideString; 
                    const infRespTec_Opc: WideString; const infIntermed_Opc: WideString; 
                    const agropecuario_Opc: WideString; const gPgtoVinc_Opc: WideString): WideString; dispid 721;
    function ev110300_vinculaPagto(const siglaWS: WideString; tipoAmbiente: Integer; 
                                   const nomeCertificado: WideString; const Versao: WideString; 
                                   tpAutor: Integer; const CNPJAutor: WideString; 
                                   const cOrgaoAutor: WideString; const chaveNFe: WideString; 
                                   const dhEvento: WideString; nSeqEvento: Integer; 
                                   const verAplic: WideString; const nProt: WideString; 
                                   const idTransacao: WideString; const tpMeioPgto: WideString; 
                                   const CNPJReceb: WideString; const CNPJBasePSP: WideString; 
                                   out nProtocolo: WideString; out dProtocolo: WideString; 
                                   out msgDados: WideString; out msgRetWS: WideString; 
                                   out cStat: Integer; out msgResultado: WideString; 
                                   const proxy: WideString; const usuario: WideString; 
                                   const senha: WideString; const licenca: WideString): WideString; dispid 722;
  end;

// *********************************************************************//
// DispIntf:  NFe_Util_Events
// Flags:     (4096) Dispatchable
// GUID:      {E60B694F-366A-4D55-A51A-6512D64DF3D2}
// *********************************************************************//
  NFe_Util_Events = dispinterface
    ['{E60B694F-366A-4D55-A51A-6512D64DF3D2}']
  end;

// *********************************************************************//
// Interface: _SCERecepcaoRFB
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD6C7892-52AE-38EE-B650-F59BD3D2D24A}
// *********************************************************************//
  _SCERecepcaoRFB = interface(IDispatch)
    ['{FD6C7892-52AE-38EE-B650-F59BD3D2D24A}']
  end;

// *********************************************************************//
// DispIntf:  _SCERecepcaoRFBDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD6C7892-52AE-38EE-B650-F59BD3D2D24A}
// *********************************************************************//
  _SCERecepcaoRFBDisp = dispinterface
    ['{FD6C7892-52AE-38EE-B650-F59BD3D2D24A}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DFC00C13-A341-3B29-9E3D-00EE1EFCF23B}
// *********************************************************************//
  _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg = interface(IDispatch)
    ['{DFC00C13-A341-3B29-9E3D-00EE1EFCF23B}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DFC00C13-A341-3B29-9E3D-00EE1EFCF23B}
// *********************************************************************//
  _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsgDisp = dispinterface
    ['{DFC00C13-A341-3B29-9E3D-00EE1EFCF23B}']
  end;

// *********************************************************************//
// Interface: _sceRecepcaoDPECCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F86C6F91-55E8-3901-869E-FC5BDE3602A1}
// *********************************************************************//
  _sceRecepcaoDPECCompletedEventHandler = interface(IDispatch)
    ['{F86C6F91-55E8-3901-869E-FC5BDE3602A1}']
  end;

// *********************************************************************//
// DispIntf:  _sceRecepcaoDPECCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F86C6F91-55E8-3901-869E-FC5BDE3602A1}
// *********************************************************************//
  _sceRecepcaoDPECCompletedEventHandlerDisp = dispinterface
    ['{F86C6F91-55E8-3901-869E-FC5BDE3602A1}']
  end;

// *********************************************************************//
// Interface: _sceRecepcaoDPECCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {205C438F-71B9-3CC7-A584-469A82285046}
// *********************************************************************//
  _sceRecepcaoDPECCompletedEventArgs = interface(IDispatch)
    ['{205C438F-71B9-3CC7-A584-469A82285046}']
  end;

// *********************************************************************//
// DispIntf:  _sceRecepcaoDPECCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {205C438F-71B9-3CC7-A584-469A82285046}
// *********************************************************************//
  _sceRecepcaoDPECCompletedEventArgsDisp = dispinterface
    ['{205C438F-71B9-3CC7-A584-469A82285046}']
  end;

// *********************************************************************//
// Interface: _SCEConsultaRFB
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8BEA96A-94BB-30D0-A2A0-45826A6CF55F}
// *********************************************************************//
  _SCEConsultaRFB = interface(IDispatch)
    ['{D8BEA96A-94BB-30D0-A2A0-45826A6CF55F}']
  end;

// *********************************************************************//
// DispIntf:  _SCEConsultaRFBDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8BEA96A-94BB-30D0-A2A0-45826A6CF55F}
// *********************************************************************//
  _SCEConsultaRFBDisp = dispinterface
    ['{D8BEA96A-94BB-30D0-A2A0-45826A6CF55F}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {056E4A43-2CB8-3212-90BE-D0ADAB5C7996}
// *********************************************************************//
  _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg = interface(IDispatch)
    ['{056E4A43-2CB8-3212-90BE-D0ADAB5C7996}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_sceConsultaDPEC_sceCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {056E4A43-2CB8-3212-90BE-D0ADAB5C7996}
// *********************************************************************//
  _NFe_Util_2G_sceConsultaDPEC_sceCabecMsgDisp = dispinterface
    ['{056E4A43-2CB8-3212-90BE-D0ADAB5C7996}']
  end;

// *********************************************************************//
// Interface: _sceConsultaDPECCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D34923C2-D536-3756-9353-9041CF67FCDF}
// *********************************************************************//
  _sceConsultaDPECCompletedEventHandler = interface(IDispatch)
    ['{D34923C2-D536-3756-9353-9041CF67FCDF}']
  end;

// *********************************************************************//
// DispIntf:  _sceConsultaDPECCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D34923C2-D536-3756-9353-9041CF67FCDF}
// *********************************************************************//
  _sceConsultaDPECCompletedEventHandlerDisp = dispinterface
    ['{D34923C2-D536-3756-9353-9041CF67FCDF}']
  end;

// *********************************************************************//
// Interface: _sceConsultaDPECCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AA0C03C4-0238-3F7B-A452-E62BDF42F9CA}
// *********************************************************************//
  _sceConsultaDPECCompletedEventArgs = interface(IDispatch)
    ['{AA0C03C4-0238-3F7B-A452-E62BDF42F9CA}']
  end;

// *********************************************************************//
// DispIntf:  _sceConsultaDPECCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AA0C03C4-0238-3F7B-A452-E62BDF42F9CA}
// *********************************************************************//
  _sceConsultaDPECCompletedEventArgsDisp = dispinterface
    ['{AA0C03C4-0238-3F7B-A452-E62BDF42F9CA}']
  end;

// *********************************************************************//
// Interface: _RecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C073B1BE-3AFD-3A36-8A70-E6F522DEDC19}
// *********************************************************************//
  _RecepcaoEvento = interface(IDispatch)
    ['{C073B1BE-3AFD-3A36-8A70-E6F522DEDC19}']
  end;

// *********************************************************************//
// DispIntf:  _RecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C073B1BE-3AFD-3A36-8A70-E6F522DEDC19}
// *********************************************************************//
  _RecepcaoEventoDisp = dispinterface
    ['{C073B1BE-3AFD-3A36-8A70-E6F522DEDC19}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BF888721-18D5-3C87-8C31-C914F2E6DE67}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg = interface(IDispatch)
    ['{BF888721-18D5-3C87-8C31-C914F2E6DE67}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_RecepcaoEvento_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BF888721-18D5-3C87-8C31-C914F2E6DE67}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeCabecMsgDisp = dispinterface
    ['{BF888721-18D5-3C87-8C31-C914F2E6DE67}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FFF02B13-950A-3BFF-AC4B-23D74ABFA634}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{FFF02B13-950A-3BFF-AC4B-23D74ABFA634}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FFF02B13-950A-3BFF-AC4B-23D74ABFA634}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{FFF02B13-950A-3BFF-AC4B-23D74ABFA634}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4216F38A-43B7-3F62-A945-6F6B242E43F9}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{4216F38A-43B7-3F62-A945-6F6B242E43F9}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4216F38A-43B7-3F62-A945-6F6B242E43F9}
// *********************************************************************//
  _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{4216F38A-43B7-3F62-A945-6F6B242E43F9}']
  end;

// *********************************************************************//
// Interface: _NfeAutorizacao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37B87D59-5242-3CEA-A6C2-E8FC801F05C7}
// *********************************************************************//
  _NfeAutorizacao = interface(IDispatch)
    ['{37B87D59-5242-3CEA-A6C2-E8FC801F05C7}']
  end;

// *********************************************************************//
// DispIntf:  _NfeAutorizacaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37B87D59-5242-3CEA-A6C2-E8FC801F05C7}
// *********************************************************************//
  _NfeAutorizacaoDisp = dispinterface
    ['{37B87D59-5242-3CEA-A6C2-E8FC801F05C7}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2A443D17-AC4D-39FA-A5B1-A38EFDF25D63}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg = interface(IDispatch)
    ['{2A443D17-AC4D-39FA-A5B1-A38EFDF25D63}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeAutorizacao_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2A443D17-AC4D-39FA-A5B1-A38EFDF25D63}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeCabecMsgDisp = dispinterface
    ['{2A443D17-AC4D-39FA-A5B1-A38EFDF25D63}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2FF80289-5E97-3F62-B997-849F40B06339}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler = interface(IDispatch)
    ['{2FF80289-5E97-3F62-B997-849F40B06339}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2FF80289-5E97-3F62-B997-849F40B06339}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandlerDisp = dispinterface
    ['{2FF80289-5E97-3F62-B997-849F40B06339}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E8F19178-062C-365F-BEB4-F7E1CC81EC04}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs = interface(IDispatch)
    ['{E8F19178-062C-365F-BEB4-F7E1CC81EC04}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E8F19178-062C-365F-BEB4-F7E1CC81EC04}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgsDisp = dispinterface
    ['{E8F19178-062C-365F-BEB4-F7E1CC81EC04}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5B6CCF69-7A72-3C1A-9F51-175D5F44E95A}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler = interface(IDispatch)
    ['{5B6CCF69-7A72-3C1A-9F51-175D5F44E95A}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5B6CCF69-7A72-3C1A-9F51-175D5F44E95A}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp = dispinterface
    ['{5B6CCF69-7A72-3C1A-9F51-175D5F44E95A}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C6EA553D-2E1C-38F4-A1A9-C60A41170AB6}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs = interface(IDispatch)
    ['{C6EA553D-2E1C-38F4-A1A9-C60A41170AB6}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C6EA553D-2E1C-38F4-A1A9-C60A41170AB6}
// *********************************************************************//
  _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgsDisp = dispinterface
    ['{C6EA553D-2E1C-38F4-A1A9-C60A41170AB6}']
  end;

// *********************************************************************//
// Interface: _NfeStatusServico
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {62691514-2665-38CD-8A63-AF0C8BE98579}
// *********************************************************************//
  _NfeStatusServico = interface(IDispatch)
    ['{62691514-2665-38CD-8A63-AF0C8BE98579}']
  end;

// *********************************************************************//
// DispIntf:  _NfeStatusServicoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {62691514-2665-38CD-8A63-AF0C8BE98579}
// *********************************************************************//
  _NfeStatusServicoDisp = dispinterface
    ['{62691514-2665-38CD-8A63-AF0C8BE98579}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5521595-CFD8-3542-A676-3C475AE6A68B}
// *********************************************************************//
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler = interface(IDispatch)
    ['{C5521595-CFD8-3542-A676-3C475AE6A68B}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5521595-CFD8-3542-A676-3C475AE6A68B}
// *********************************************************************//
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandlerDisp = dispinterface
    ['{C5521595-CFD8-3542-A676-3C475AE6A68B}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F4AFEFDA-23F6-32CA-9A28-EC46F0F8CD9F}
// *********************************************************************//
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs = interface(IDispatch)
    ['{F4AFEFDA-23F6-32CA-9A28-EC46F0F8CD9F}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F4AFEFDA-23F6-32CA-9A28-EC46F0F8CD9F}
// *********************************************************************//
  _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgsDisp = dispinterface
    ['{F4AFEFDA-23F6-32CA-9A28-EC46F0F8CD9F}']
  end;

// *********************************************************************//
// Interface: _NfeStatusServico2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {035F023B-4175-317D-9122-0016EEB3E672}
// *********************************************************************//
  _NfeStatusServico2 = interface(IDispatch)
    ['{035F023B-4175-317D-9122-0016EEB3E672}']
  end;

// *********************************************************************//
// DispIntf:  _NfeStatusServico2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {035F023B-4175-317D-9122-0016EEB3E672}
// *********************************************************************//
  _NfeStatusServico2Disp = dispinterface
    ['{035F023B-4175-317D-9122-0016EEB3E672}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6B4A35F9-18D4-3988-AE27-D1BF8901CB7F}
// *********************************************************************//
  _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg = interface(IDispatch)
    ['{6B4A35F9-18D4-3988-AE27-D1BF8901CB7F}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_NfeStatusServico2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6B4A35F9-18D4-3988-AE27-D1BF8901CB7F}
// *********************************************************************//
  _NFe_Util_2G_NfeStatusServico2_nfeCabecMsgDisp = dispinterface
    ['{6B4A35F9-18D4-3988-AE27-D1BF8901CB7F}']
  end;

// *********************************************************************//
// Interface: _nfeStatusServicoNF2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9618B41F-2613-31EC-93D6-68D3FFD06782}
// *********************************************************************//
  _nfeStatusServicoNF2CompletedEventHandler = interface(IDispatch)
    ['{9618B41F-2613-31EC-93D6-68D3FFD06782}']
  end;

// *********************************************************************//
// DispIntf:  _nfeStatusServicoNF2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9618B41F-2613-31EC-93D6-68D3FFD06782}
// *********************************************************************//
  _nfeStatusServicoNF2CompletedEventHandlerDisp = dispinterface
    ['{9618B41F-2613-31EC-93D6-68D3FFD06782}']
  end;

// *********************************************************************//
// Interface: _nfeStatusServicoNF2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21E68297-62F4-35AC-9606-4C017785907C}
// *********************************************************************//
  _nfeStatusServicoNF2CompletedEventArgs = interface(IDispatch)
    ['{21E68297-62F4-35AC-9606-4C017785907C}']
  end;

// *********************************************************************//
// DispIntf:  _nfeStatusServicoNF2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21E68297-62F4-35AC-9606-4C017785907C}
// *********************************************************************//
  _nfeStatusServicoNF2CompletedEventArgsDisp = dispinterface
    ['{21E68297-62F4-35AC-9606-4C017785907C}']
  end;

// *********************************************************************//
// Interface: _NfeRetRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {29C1714D-E041-3124-976C-10AADBDD15DB}
// *********************************************************************//
  _NfeRetRecepcao = interface(IDispatch)
    ['{29C1714D-E041-3124-976C-10AADBDD15DB}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRetRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {29C1714D-E041-3124-976C-10AADBDD15DB}
// *********************************************************************//
  _NfeRetRecepcaoDisp = dispinterface
    ['{29C1714D-E041-3124-976C-10AADBDD15DB}']
  end;

// *********************************************************************//
// Interface: _nfeRetRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EE325D1-1D19-3AF5-83D1-9DA952D234D6}
// *********************************************************************//
  _nfeRetRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{5EE325D1-1D19-3AF5-83D1-9DA952D234D6}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRetRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EE325D1-1D19-3AF5-83D1-9DA952D234D6}
// *********************************************************************//
  _nfeRetRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{5EE325D1-1D19-3AF5-83D1-9DA952D234D6}']
  end;

// *********************************************************************//
// Interface: _nfeRetRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {52638EF0-89F6-311D-9640-408815234E6D}
// *********************************************************************//
  _nfeRetRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{52638EF0-89F6-311D-9640-408815234E6D}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRetRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {52638EF0-89F6-311D-9640-408815234E6D}
// *********************************************************************//
  _nfeRetRecepcaoCompletedEventArgsDisp = dispinterface
    ['{52638EF0-89F6-311D-9640-408815234E6D}']
  end;

// *********************************************************************//
// Interface: _NfeRetAutorizacao4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4C79F101-A3CD-376E-BEA9-7C53F8C68661}
// *********************************************************************//
  _NfeRetAutorizacao4 = interface(IDispatch)
    ['{4C79F101-A3CD-376E-BEA9-7C53F8C68661}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRetAutorizacao4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4C79F101-A3CD-376E-BEA9-7C53F8C68661}
// *********************************************************************//
  _NfeRetAutorizacao4Disp = dispinterface
    ['{4C79F101-A3CD-376E-BEA9-7C53F8C68661}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {079D1A09-D8C7-3D06-A8D9-A154C80EC8EE}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler = interface(IDispatch)
    ['{079D1A09-D8C7-3D06-A8D9-A154C80EC8EE}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {079D1A09-D8C7-3D06-A8D9-A154C80EC8EE}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp = dispinterface
    ['{079D1A09-D8C7-3D06-A8D9-A154C80EC8EE}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71D9CA06-9DBA-34CD-AA77-3ABCD217193D}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs = interface(IDispatch)
    ['{71D9CA06-9DBA-34CD-AA77-3ABCD217193D}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71D9CA06-9DBA-34CD-AA77-3ABCD217193D}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgsDisp = dispinterface
    ['{71D9CA06-9DBA-34CD-AA77-3ABCD217193D}']
  end;

// *********************************************************************//
// Interface: _NfeRetRecepcao2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AEABD164-AA45-318C-B800-6D5FA595B2F0}
// *********************************************************************//
  _NfeRetRecepcao2 = interface(IDispatch)
    ['{AEABD164-AA45-318C-B800-6D5FA595B2F0}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRetRecepcao2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AEABD164-AA45-318C-B800-6D5FA595B2F0}
// *********************************************************************//
  _NfeRetRecepcao2Disp = dispinterface
    ['{AEABD164-AA45-318C-B800-6D5FA595B2F0}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76ED1DB5-F83C-36E7-9331-B0008F4BE085}
// *********************************************************************//
  _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg = interface(IDispatch)
    ['{76ED1DB5-F83C-36E7-9331-B0008F4BE085}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76ED1DB5-F83C-36E7-9331-B0008F4BE085}
// *********************************************************************//
  _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsgDisp = dispinterface
    ['{76ED1DB5-F83C-36E7-9331-B0008F4BE085}']
  end;

// *********************************************************************//
// Interface: _nfeRetRecepcao2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {69DC057F-8959-3CA1-A104-5683819A6829}
// *********************************************************************//
  _nfeRetRecepcao2CompletedEventHandler = interface(IDispatch)
    ['{69DC057F-8959-3CA1-A104-5683819A6829}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRetRecepcao2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {69DC057F-8959-3CA1-A104-5683819A6829}
// *********************************************************************//
  _nfeRetRecepcao2CompletedEventHandlerDisp = dispinterface
    ['{69DC057F-8959-3CA1-A104-5683819A6829}']
  end;

// *********************************************************************//
// Interface: _nfeRetRecepcao2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {53A5D7DF-B1D2-32FF-AEB9-3CC89F81055B}
// *********************************************************************//
  _nfeRetRecepcao2CompletedEventArgs = interface(IDispatch)
    ['{53A5D7DF-B1D2-32FF-AEB9-3CC89F81055B}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRetRecepcao2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {53A5D7DF-B1D2-32FF-AEB9-3CC89F81055B}
// *********************************************************************//
  _nfeRetRecepcao2CompletedEventArgsDisp = dispinterface
    ['{53A5D7DF-B1D2-32FF-AEB9-3CC89F81055B}']
  end;

// *********************************************************************//
// Interface: _NfeRetAutorizacao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {74F18FC4-37E4-3FBA-90BF-6243C0543891}
// *********************************************************************//
  _NfeRetAutorizacao = interface(IDispatch)
    ['{74F18FC4-37E4-3FBA-90BF-6243C0543891}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRetAutorizacaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {74F18FC4-37E4-3FBA-90BF-6243C0543891}
// *********************************************************************//
  _NfeRetAutorizacaoDisp = dispinterface
    ['{74F18FC4-37E4-3FBA-90BF-6243C0543891}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5CFDFC31-3B2A-3962-9F2C-A68D5C76AF49}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg = interface(IDispatch)
    ['{5CFDFC31-3B2A-3962-9F2C-A68D5C76AF49}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5CFDFC31-3B2A-3962-9F2C-A68D5C76AF49}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsgDisp = dispinterface
    ['{5CFDFC31-3B2A-3962-9F2C-A68D5C76AF49}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {746B546D-1D5F-31E1-BC46-BC9B872AB647}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler = interface(IDispatch)
    ['{746B546D-1D5F-31E1-BC46-BC9B872AB647}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {746B546D-1D5F-31E1-BC46-BC9B872AB647}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandlerDisp = dispinterface
    ['{746B546D-1D5F-31E1-BC46-BC9B872AB647}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {48F98F3E-782F-3FB3-B138-9A12EA525D2D}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs = interface(IDispatch)
    ['{48F98F3E-782F-3FB3-B138-9A12EA525D2D}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {48F98F3E-782F-3FB3-B138-9A12EA525D2D}
// *********************************************************************//
  _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgsDisp = dispinterface
    ['{48F98F3E-782F-3FB3-B138-9A12EA525D2D}']
  end;

// *********************************************************************//
// Interface: _NfeRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE538643-5E8D-3332-B9B9-904DAAC618D7}
// *********************************************************************//
  _NfeRecepcao = interface(IDispatch)
    ['{DE538643-5E8D-3332-B9B9-904DAAC618D7}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE538643-5E8D-3332-B9B9-904DAAC618D7}
// *********************************************************************//
  _NfeRecepcaoDisp = dispinterface
    ['{DE538643-5E8D-3332-B9B9-904DAAC618D7}']
  end;

// *********************************************************************//
// Interface: _nfeRecepcaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1D5B1D8-1419-3114-AA14-0F971991EC2B}
// *********************************************************************//
  _nfeRecepcaoLoteCompletedEventHandler = interface(IDispatch)
    ['{F1D5B1D8-1419-3114-AA14-0F971991EC2B}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRecepcaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1D5B1D8-1419-3114-AA14-0F971991EC2B}
// *********************************************************************//
  _nfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface
    ['{F1D5B1D8-1419-3114-AA14-0F971991EC2B}']
  end;

// *********************************************************************//
// Interface: _nfeRecepcaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {31C5B9C1-42B3-377D-8471-A5FF29B3C7CA}
// *********************************************************************//
  _nfeRecepcaoLoteCompletedEventArgs = interface(IDispatch)
    ['{31C5B9C1-42B3-377D-8471-A5FF29B3C7CA}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRecepcaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {31C5B9C1-42B3-377D-8471-A5FF29B3C7CA}
// *********************************************************************//
  _nfeRecepcaoLoteCompletedEventArgsDisp = dispinterface
    ['{31C5B9C1-42B3-377D-8471-A5FF29B3C7CA}']
  end;

// *********************************************************************//
// Interface: _RecepcaoEvento4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F4F5B4D3-481B-30D5-8EEA-C3AB9A7CDF58}
// *********************************************************************//
  _RecepcaoEvento4 = interface(IDispatch)
    ['{F4F5B4D3-481B-30D5-8EEA-C3AB9A7CDF58}']
  end;

// *********************************************************************//
// DispIntf:  _RecepcaoEvento4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F4F5B4D3-481B-30D5-8EEA-C3AB9A7CDF58}
// *********************************************************************//
  _RecepcaoEvento4Disp = dispinterface
    ['{F4F5B4D3-481B-30D5-8EEA-C3AB9A7CDF58}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C1F6C8F0-E495-34FD-A4C8-5D68469DA6C1}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{C1F6C8F0-E495-34FD-A4C8-5D68469DA6C1}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C1F6C8F0-E495-34FD-A4C8-5D68469DA6C1}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{C1F6C8F0-E495-34FD-A4C8-5D68469DA6C1}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E37A39D1-924C-32BB-9AFC-5DE8F2B807D6}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{E37A39D1-924C-32BB-9AFC-5DE8F2B807D6}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E37A39D1-924C-32BB-9AFC-5DE8F2B807D6}
// *********************************************************************//
  _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{E37A39D1-924C-32BB-9AFC-5DE8F2B807D6}']
  end;

// *********************************************************************//
// Interface: _NfeAutorizacao4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2C803B47-1F06-3066-825D-AF0AD6D766C7}
// *********************************************************************//
  _NfeAutorizacao4 = interface(IDispatch)
    ['{2C803B47-1F06-3066-825D-AF0AD6D766C7}']
  end;

// *********************************************************************//
// DispIntf:  _NfeAutorizacao4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2C803B47-1F06-3066-825D-AF0AD6D766C7}
// *********************************************************************//
  _NfeAutorizacao4Disp = dispinterface
    ['{2C803B47-1F06-3066-825D-AF0AD6D766C7}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8E6348E8-97A6-3920-B2F3-2BB367C209EF}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler = interface(IDispatch)
    ['{8E6348E8-97A6-3920-B2F3-2BB367C209EF}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8E6348E8-97A6-3920-B2F3-2BB367C209EF}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandlerDisp = dispinterface
    ['{8E6348E8-97A6-3920-B2F3-2BB367C209EF}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {685D7126-E14B-3CA2-9183-8E17B7592B66}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs = interface(IDispatch)
    ['{685D7126-E14B-3CA2-9183-8E17B7592B66}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {685D7126-E14B-3CA2-9183-8E17B7592B66}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgsDisp = dispinterface
    ['{685D7126-E14B-3CA2-9183-8E17B7592B66}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87D24EC0-C114-3AAB-BB7E-A9A1C95E24E1}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler = interface(IDispatch)
    ['{87D24EC0-C114-3AAB-BB7E-A9A1C95E24E1}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87D24EC0-C114-3AAB-BB7E-A9A1C95E24E1}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandlerDisp = dispinterface
    ['{87D24EC0-C114-3AAB-BB7E-A9A1C95E24E1}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {58AB6DF1-62DC-3A71-B916-8140B827F199}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs = interface(IDispatch)
    ['{58AB6DF1-62DC-3A71-B916-8140B827F199}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {58AB6DF1-62DC-3A71-B916-8140B827F199}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgsDisp = dispinterface
    ['{58AB6DF1-62DC-3A71-B916-8140B827F199}']
  end;

// *********************************************************************//
// Interface: _NfeRecepcao2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D3C36D40-3C5B-347C-A021-71EE970E29B8}
// *********************************************************************//
  _NfeRecepcao2 = interface(IDispatch)
    ['{D3C36D40-3C5B-347C-A021-71EE970E29B8}']
  end;

// *********************************************************************//
// DispIntf:  _NfeRecepcao2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D3C36D40-3C5B-347C-A021-71EE970E29B8}
// *********************************************************************//
  _NfeRecepcao2Disp = dispinterface
    ['{D3C36D40-3C5B-347C-A021-71EE970E29B8}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E1B37DC-096C-3AC9-9E86-87BEFAFFD0D1}
// *********************************************************************//
  _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg = interface(IDispatch)
    ['{6E1B37DC-096C-3AC9-9E86-87BEFAFFD0D1}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_NFeRecepcao2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E1B37DC-096C-3AC9-9E86-87BEFAFFD0D1}
// *********************************************************************//
  _NFe_Util_2G_NFeRecepcao2_nfeCabecMsgDisp = dispinterface
    ['{6E1B37DC-096C-3AC9-9E86-87BEFAFFD0D1}']
  end;

// *********************************************************************//
// Interface: _nfeRecepcaoLote2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7327A3A5-DFD2-3C02-8D8D-F039C8B50C8B}
// *********************************************************************//
  _nfeRecepcaoLote2CompletedEventHandler = interface(IDispatch)
    ['{7327A3A5-DFD2-3C02-8D8D-F039C8B50C8B}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRecepcaoLote2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7327A3A5-DFD2-3C02-8D8D-F039C8B50C8B}
// *********************************************************************//
  _nfeRecepcaoLote2CompletedEventHandlerDisp = dispinterface
    ['{7327A3A5-DFD2-3C02-8D8D-F039C8B50C8B}']
  end;

// *********************************************************************//
// Interface: _nfeRecepcaoLote2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E239ACD2-F686-34DE-A7A9-76422F5C5ADD}
// *********************************************************************//
  _nfeRecepcaoLote2CompletedEventArgs = interface(IDispatch)
    ['{E239ACD2-F686-34DE-A7A9-76422F5C5ADD}']
  end;

// *********************************************************************//
// DispIntf:  _nfeRecepcaoLote2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E239ACD2-F686-34DE-A7A9-76422F5C5ADD}
// *********************************************************************//
  _nfeRecepcaoLote2CompletedEventArgsDisp = dispinterface
    ['{E239ACD2-F686-34DE-A7A9-76422F5C5ADD}']
  end;

// *********************************************************************//
// Interface: _NfeInutilizacao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {35517E9C-12EA-3111-A76E-E218DF6D935B}
// *********************************************************************//
  _NfeInutilizacao = interface(IDispatch)
    ['{35517E9C-12EA-3111-A76E-E218DF6D935B}']
  end;

// *********************************************************************//
// DispIntf:  _NfeInutilizacaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {35517E9C-12EA-3111-A76E-E218DF6D935B}
// *********************************************************************//
  _NfeInutilizacaoDisp = dispinterface
    ['{35517E9C-12EA-3111-A76E-E218DF6D935B}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {942DD408-D3BC-3FBC-BEA1-678E60183CF1}
// *********************************************************************//
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler = interface(IDispatch)
    ['{942DD408-D3BC-3FBC-BEA1-678E60183CF1}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {942DD408-D3BC-3FBC-BEA1-678E60183CF1}
// *********************************************************************//
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp = dispinterface
    ['{942DD408-D3BC-3FBC-BEA1-678E60183CF1}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {40048553-A84E-3881-8475-6C4559CC6A63}
// *********************************************************************//
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs = interface(IDispatch)
    ['{40048553-A84E-3881-8475-6C4559CC6A63}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {40048553-A84E-3881-8475-6C4559CC6A63}
// *********************************************************************//
  _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp = dispinterface
    ['{40048553-A84E-3881-8475-6C4559CC6A63}']
  end;

// *********************************************************************//
// Interface: _NfeInutilizacao4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {64CAD185-EF36-32AC-842A-9DBCF4BC25E0}
// *********************************************************************//
  _NfeInutilizacao4 = interface(IDispatch)
    ['{64CAD185-EF36-32AC-842A-9DBCF4BC25E0}']
  end;

// *********************************************************************//
// DispIntf:  _NfeInutilizacao4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {64CAD185-EF36-32AC-842A-9DBCF4BC25E0}
// *********************************************************************//
  _NfeInutilizacao4Disp = dispinterface
    ['{64CAD185-EF36-32AC-842A-9DBCF4BC25E0}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {ECAFF543-D409-3609-9BE2-7F1A98EAB614}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler = interface(IDispatch)
    ['{ECAFF543-D409-3609-9BE2-7F1A98EAB614}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {ECAFF543-D409-3609-9BE2-7F1A98EAB614}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandlerDisp = dispinterface
    ['{ECAFF543-D409-3609-9BE2-7F1A98EAB614}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A897C0AD-FF7C-3CE1-AA50-F54B436A20DF}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs = interface(IDispatch)
    ['{A897C0AD-FF7C-3CE1-AA50-F54B436A20DF}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A897C0AD-FF7C-3CE1-AA50-F54B436A20DF}
// *********************************************************************//
  _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgsDisp = dispinterface
    ['{A897C0AD-FF7C-3CE1-AA50-F54B436A20DF}']
  end;

// *********************************************************************//
// Interface: _NfeInutilizacao2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3878A73C-3F08-38CA-8925-DC471E67E388}
// *********************************************************************//
  _NfeInutilizacao2 = interface(IDispatch)
    ['{3878A73C-3F08-38CA-8925-DC471E67E388}']
  end;

// *********************************************************************//
// DispIntf:  _NfeInutilizacao2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3878A73C-3F08-38CA-8925-DC471E67E388}
// *********************************************************************//
  _NfeInutilizacao2Disp = dispinterface
    ['{3878A73C-3F08-38CA-8925-DC471E67E388}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {60C0C3D6-0A6D-3744-99A5-FEC32FEF6FE8}
// *********************************************************************//
  _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg = interface(IDispatch)
    ['{60C0C3D6-0A6D-3744-99A5-FEC32FEF6FE8}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {60C0C3D6-0A6D-3744-99A5-FEC32FEF6FE8}
// *********************************************************************//
  _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsgDisp = dispinterface
    ['{60C0C3D6-0A6D-3744-99A5-FEC32FEF6FE8}']
  end;

// *********************************************************************//
// Interface: _nfeInutilizacaoNF2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6CC16DF9-D142-3334-B7A8-8DCEEE9A0D34}
// *********************************************************************//
  _nfeInutilizacaoNF2CompletedEventHandler = interface(IDispatch)
    ['{6CC16DF9-D142-3334-B7A8-8DCEEE9A0D34}']
  end;

// *********************************************************************//
// DispIntf:  _nfeInutilizacaoNF2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6CC16DF9-D142-3334-B7A8-8DCEEE9A0D34}
// *********************************************************************//
  _nfeInutilizacaoNF2CompletedEventHandlerDisp = dispinterface
    ['{6CC16DF9-D142-3334-B7A8-8DCEEE9A0D34}']
  end;

// *********************************************************************//
// Interface: _nfeInutilizacaoNF2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA931493-D22B-322B-B53C-ECA07F22E259}
// *********************************************************************//
  _nfeInutilizacaoNF2CompletedEventArgs = interface(IDispatch)
    ['{EA931493-D22B-322B-B53C-ECA07F22E259}']
  end;

// *********************************************************************//
// DispIntf:  _nfeInutilizacaoNF2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA931493-D22B-322B-B53C-ECA07F22E259}
// *********************************************************************//
  _nfeInutilizacaoNF2CompletedEventArgsDisp = dispinterface
    ['{EA931493-D22B-322B-B53C-ECA07F22E259}']
  end;

// *********************************************************************//
// Interface: _NfeConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AD546630-2D62-31A7-B88C-8F24B3751AFB}
// *********************************************************************//
  _NfeConsulta = interface(IDispatch)
    ['{AD546630-2D62-31A7-B88C-8F24B3751AFB}']
  end;

// *********************************************************************//
// DispIntf:  _NfeConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AD546630-2D62-31A7-B88C-8F24B3751AFB}
// *********************************************************************//
  _NfeConsultaDisp = dispinterface
    ['{AD546630-2D62-31A7-B88C-8F24B3751AFB}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {590B4993-8FA7-3753-8137-1AB99107BF66}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler = interface(IDispatch)
    ['{590B4993-8FA7-3753-8137-1AB99107BF66}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {590B4993-8FA7-3753-8137-1AB99107BF66}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandlerDisp = dispinterface
    ['{590B4993-8FA7-3753-8137-1AB99107BF66}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9880F2F5-7706-3B17-9BED-7A42256F2DF4}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs = interface(IDispatch)
    ['{9880F2F5-7706-3B17-9BED-7A42256F2DF4}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9880F2F5-7706-3B17-9BED-7A42256F2DF4}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgsDisp = dispinterface
    ['{9880F2F5-7706-3B17-9BED-7A42256F2DF4}']
  end;

// *********************************************************************//
// Interface: _NfeConsultaDest
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7F20D4C6-938B-33D7-A4CF-82117BB0CBFF}
// *********************************************************************//
  _NfeConsultaDest = interface(IDispatch)
    ['{7F20D4C6-938B-33D7-A4CF-82117BB0CBFF}']
  end;

// *********************************************************************//
// DispIntf:  _NfeConsultaDestDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7F20D4C6-938B-33D7-A4CF-82117BB0CBFF}
// *********************************************************************//
  _NfeConsultaDestDisp = dispinterface
    ['{7F20D4C6-938B-33D7-A4CF-82117BB0CBFF}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A72E499E-5C3C-375D-BA03-1BD21D247415}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg = interface(IDispatch)
    ['{A72E499E-5C3C-375D-BA03-1BD21D247415}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeConsultaDest_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A72E499E-5C3C-375D-BA03-1BD21D247415}
// *********************************************************************//
  _NFe_Util_2G_nfeConsultaDest_nfeCabecMsgDisp = dispinterface
    ['{A72E499E-5C3C-375D-BA03-1BD21D247415}']
  end;

// *********************************************************************//
// Interface: _nfeConsultaNFDestCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D25EC27-0289-3F8F-8272-4DDA64900EC5}
// *********************************************************************//
  _nfeConsultaNFDestCompletedEventHandler = interface(IDispatch)
    ['{5D25EC27-0289-3F8F-8272-4DDA64900EC5}']
  end;

// *********************************************************************//
// DispIntf:  _nfeConsultaNFDestCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D25EC27-0289-3F8F-8272-4DDA64900EC5}
// *********************************************************************//
  _nfeConsultaNFDestCompletedEventHandlerDisp = dispinterface
    ['{5D25EC27-0289-3F8F-8272-4DDA64900EC5}']
  end;

// *********************************************************************//
// Interface: _nfeConsultaNFDestCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA1F1EA0-DEE6-37B4-8275-C09596C02A5F}
// *********************************************************************//
  _nfeConsultaNFDestCompletedEventArgs = interface(IDispatch)
    ['{BA1F1EA0-DEE6-37B4-8275-C09596C02A5F}']
  end;

// *********************************************************************//
// DispIntf:  _nfeConsultaNFDestCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA1F1EA0-DEE6-37B4-8275-C09596C02A5F}
// *********************************************************************//
  _nfeConsultaNFDestCompletedEventArgsDisp = dispinterface
    ['{BA1F1EA0-DEE6-37B4-8275-C09596C02A5F}']
  end;

// *********************************************************************//
// Interface: _NfeConsulta2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2C3E37E8-7C01-3D56-86F2-9A0805E612CD}
// *********************************************************************//
  _NfeConsulta2 = interface(IDispatch)
    ['{2C3E37E8-7C01-3D56-86F2-9A0805E612CD}']
  end;

// *********************************************************************//
// DispIntf:  _NfeConsulta2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2C3E37E8-7C01-3D56-86F2-9A0805E612CD}
// *********************************************************************//
  _NfeConsulta2Disp = dispinterface
    ['{2C3E37E8-7C01-3D56-86F2-9A0805E612CD}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_NfeConsulta2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {17B323C3-4AD6-3BB4-97E7-4776AF6DD546}
// *********************************************************************//
  _NFe_Util_2G_NfeConsulta2_nfeCabecMsg = interface(IDispatch)
    ['{17B323C3-4AD6-3BB4-97E7-4776AF6DD546}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_NfeConsulta2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {17B323C3-4AD6-3BB4-97E7-4776AF6DD546}
// *********************************************************************//
  _NFe_Util_2G_NfeConsulta2_nfeCabecMsgDisp = dispinterface
    ['{17B323C3-4AD6-3BB4-97E7-4776AF6DD546}']
  end;

// *********************************************************************//
// Interface: _nfeConsultaNF2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {67CA954D-142D-372A-9543-1F8E7555F6E8}
// *********************************************************************//
  _nfeConsultaNF2CompletedEventHandler = interface(IDispatch)
    ['{67CA954D-142D-372A-9543-1F8E7555F6E8}']
  end;

// *********************************************************************//
// DispIntf:  _nfeConsultaNF2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {67CA954D-142D-372A-9543-1F8E7555F6E8}
// *********************************************************************//
  _nfeConsultaNF2CompletedEventHandlerDisp = dispinterface
    ['{67CA954D-142D-372A-9543-1F8E7555F6E8}']
  end;

// *********************************************************************//
// Interface: _nfeConsultaNF2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6041F2A3-BF4A-3454-99D1-A3D4F74ACBD6}
// *********************************************************************//
  _nfeConsultaNF2CompletedEventArgs = interface(IDispatch)
    ['{6041F2A3-BF4A-3454-99D1-A3D4F74ACBD6}']
  end;

// *********************************************************************//
// DispIntf:  _nfeConsultaNF2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6041F2A3-BF4A-3454-99D1-A3D4F74ACBD6}
// *********************************************************************//
  _nfeConsultaNF2CompletedEventArgsDisp = dispinterface
    ['{6041F2A3-BF4A-3454-99D1-A3D4F74ACBD6}']
  end;

// *********************************************************************//
// Interface: _NfeCancelamento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {35774BEA-D9A9-34CD-9F41-23B6ADA5C2D4}
// *********************************************************************//
  _NfeCancelamento = interface(IDispatch)
    ['{35774BEA-D9A9-34CD-9F41-23B6ADA5C2D4}']
  end;

// *********************************************************************//
// DispIntf:  _NfeCancelamentoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {35774BEA-D9A9-34CD-9F41-23B6ADA5C2D4}
// *********************************************************************//
  _NfeCancelamentoDisp = dispinterface
    ['{35774BEA-D9A9-34CD-9F41-23B6ADA5C2D4}']
  end;

// *********************************************************************//
// Interface: _nfeCancelamentoNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {550C3653-89E8-3DB4-AFDC-EDBD1607CB8E}
// *********************************************************************//
  _nfeCancelamentoNFCompletedEventHandler = interface(IDispatch)
    ['{550C3653-89E8-3DB4-AFDC-EDBD1607CB8E}']
  end;

// *********************************************************************//
// DispIntf:  _nfeCancelamentoNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {550C3653-89E8-3DB4-AFDC-EDBD1607CB8E}
// *********************************************************************//
  _nfeCancelamentoNFCompletedEventHandlerDisp = dispinterface
    ['{550C3653-89E8-3DB4-AFDC-EDBD1607CB8E}']
  end;

// *********************************************************************//
// Interface: _nfeCancelamentoNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C3D2F062-A98E-3AF4-AD50-3B03C87D8C97}
// *********************************************************************//
  _nfeCancelamentoNFCompletedEventArgs = interface(IDispatch)
    ['{C3D2F062-A98E-3AF4-AD50-3B03C87D8C97}']
  end;

// *********************************************************************//
// DispIntf:  _nfeCancelamentoNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C3D2F062-A98E-3AF4-AD50-3B03C87D8C97}
// *********************************************************************//
  _nfeCancelamentoNFCompletedEventArgsDisp = dispinterface
    ['{C3D2F062-A98E-3AF4-AD50-3B03C87D8C97}']
  end;

// *********************************************************************//
// Interface: _NfeCancelamento2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C7B8E17E-9FA5-3388-B729-E0AB5A813F63}
// *********************************************************************//
  _NfeCancelamento2 = interface(IDispatch)
    ['{C7B8E17E-9FA5-3388-B729-E0AB5A813F63}']
  end;

// *********************************************************************//
// DispIntf:  _NfeCancelamento2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C7B8E17E-9FA5-3388-B729-E0AB5A813F63}
// *********************************************************************//
  _NfeCancelamento2Disp = dispinterface
    ['{C7B8E17E-9FA5-3388-B729-E0AB5A813F63}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {962317F8-09A4-33C6-920B-76546E2381B5}
// *********************************************************************//
  _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg = interface(IDispatch)
    ['{962317F8-09A4-33C6-920B-76546E2381B5}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_NfeCancelamento2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {962317F8-09A4-33C6-920B-76546E2381B5}
// *********************************************************************//
  _NFe_Util_2G_NfeCancelamento2_nfeCabecMsgDisp = dispinterface
    ['{962317F8-09A4-33C6-920B-76546E2381B5}']
  end;

// *********************************************************************//
// Interface: _nfeCancelamentoNF2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {138D31DD-2D83-397B-86D8-0520828E013F}
// *********************************************************************//
  _nfeCancelamentoNF2CompletedEventHandler = interface(IDispatch)
    ['{138D31DD-2D83-397B-86D8-0520828E013F}']
  end;

// *********************************************************************//
// DispIntf:  _nfeCancelamentoNF2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {138D31DD-2D83-397B-86D8-0520828E013F}
// *********************************************************************//
  _nfeCancelamentoNF2CompletedEventHandlerDisp = dispinterface
    ['{138D31DD-2D83-397B-86D8-0520828E013F}']
  end;

// *********************************************************************//
// Interface: _nfeCancelamentoNF2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5831B877-179D-3422-AA72-347E97E2A92B}
// *********************************************************************//
  _nfeCancelamentoNF2CompletedEventArgs = interface(IDispatch)
    ['{5831B877-179D-3422-AA72-347E97E2A92B}']
  end;

// *********************************************************************//
// DispIntf:  _nfeCancelamentoNF2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5831B877-179D-3422-AA72-347E97E2A92B}
// *********************************************************************//
  _nfeCancelamentoNF2CompletedEventArgsDisp = dispinterface
    ['{5831B877-179D-3422-AA72-347E97E2A92B}']
  end;

// *********************************************************************//
// Interface: _NfeDownloadNF
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD879522-006D-30A0-AA19-53D58AA627FF}
// *********************************************************************//
  _NfeDownloadNF = interface(IDispatch)
    ['{BD879522-006D-30A0-AA19-53D58AA627FF}']
  end;

// *********************************************************************//
// DispIntf:  _NfeDownloadNFDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD879522-006D-30A0-AA19-53D58AA627FF}
// *********************************************************************//
  _NfeDownloadNFDisp = dispinterface
    ['{BD879522-006D-30A0-AA19-53D58AA627FF}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfeDownload_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {383D9AD7-1F2A-3A27-B9D1-6AE6782185F1}
// *********************************************************************//
  _NFe_Util_2G_nfeDownload_nfeCabecMsg = interface(IDispatch)
    ['{383D9AD7-1F2A-3A27-B9D1-6AE6782185F1}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfeDownload_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {383D9AD7-1F2A-3A27-B9D1-6AE6782185F1}
// *********************************************************************//
  _NFe_Util_2G_nfeDownload_nfeCabecMsgDisp = dispinterface
    ['{383D9AD7-1F2A-3A27-B9D1-6AE6782185F1}']
  end;

// *********************************************************************//
// Interface: _nfeDownloadNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {95BEC22F-6CC7-3E42-A511-A33302CE1DA8}
// *********************************************************************//
  _nfeDownloadNFCompletedEventHandler = interface(IDispatch)
    ['{95BEC22F-6CC7-3E42-A511-A33302CE1DA8}']
  end;

// *********************************************************************//
// DispIntf:  _nfeDownloadNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {95BEC22F-6CC7-3E42-A511-A33302CE1DA8}
// *********************************************************************//
  _nfeDownloadNFCompletedEventHandlerDisp = dispinterface
    ['{95BEC22F-6CC7-3E42-A511-A33302CE1DA8}']
  end;

// *********************************************************************//
// Interface: _nfeDownloadNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7EC61AA5-05E6-3F75-B843-DCA26F6AEA00}
// *********************************************************************//
  _nfeDownloadNFCompletedEventArgs = interface(IDispatch)
    ['{7EC61AA5-05E6-3F75-B843-DCA26F6AEA00}']
  end;

// *********************************************************************//
// DispIntf:  _nfeDownloadNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7EC61AA5-05E6-3F75-B843-DCA26F6AEA00}
// *********************************************************************//
  _nfeDownloadNFCompletedEventArgsDisp = dispinterface
    ['{7EC61AA5-05E6-3F75-B843-DCA26F6AEA00}']
  end;

// *********************************************************************//
// Interface: _NFeDistribuicaoDFe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F46AB983-1AF5-35C6-AB98-2ECEAC2FA2F3}
// *********************************************************************//
  _NFeDistribuicaoDFe = interface(IDispatch)
    ['{F46AB983-1AF5-35C6-AB98-2ECEAC2FA2F3}']
  end;

// *********************************************************************//
// DispIntf:  _NFeDistribuicaoDFeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F46AB983-1AF5-35C6-AB98-2ECEAC2FA2F3}
// *********************************************************************//
  _NFeDistribuicaoDFeDisp = dispinterface
    ['{F46AB983-1AF5-35C6-AB98-2ECEAC2FA2F3}']
  end;

// *********************************************************************//
// Interface: _nfeDistDFeInteresseCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4A4FC33B-6727-3B30-98FF-60047B861054}
// *********************************************************************//
  _nfeDistDFeInteresseCompletedEventHandler = interface(IDispatch)
    ['{4A4FC33B-6727-3B30-98FF-60047B861054}']
  end;

// *********************************************************************//
// DispIntf:  _nfeDistDFeInteresseCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4A4FC33B-6727-3B30-98FF-60047B861054}
// *********************************************************************//
  _nfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface
    ['{4A4FC33B-6727-3B30-98FF-60047B861054}']
  end;

// *********************************************************************//
// Interface: _nfeDistDFeInteresseCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C16547EA-9661-3044-B4AA-580EC81F0296}
// *********************************************************************//
  _nfeDistDFeInteresseCompletedEventArgs = interface(IDispatch)
    ['{C16547EA-9661-3044-B4AA-580EC81F0296}']
  end;

// *********************************************************************//
// DispIntf:  _nfeDistDFeInteresseCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C16547EA-9661-3044-B4AA-580EC81F0296}
// *********************************************************************//
  _nfeDistDFeInteresseCompletedEventArgsDisp = dispinterface
    ['{C16547EA-9661-3044-B4AA-580EC81F0296}']
  end;

// *********************************************************************//
// Interface: _NfeConsulta4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {49CDF06B-1EDE-3B09-B14C-3E3853626861}
// *********************************************************************//
  _NfeConsulta4 = interface(IDispatch)
    ['{49CDF06B-1EDE-3B09-B14C-3E3853626861}']
  end;

// *********************************************************************//
// DispIntf:  _NfeConsulta4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {49CDF06B-1EDE-3B09-B14C-3E3853626861}
// *********************************************************************//
  _NfeConsulta4Disp = dispinterface
    ['{49CDF06B-1EDE-3B09-B14C-3E3853626861}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {85158FAA-94A3-3E46-922F-AB00B4448983}
// *********************************************************************//
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler = interface(IDispatch)
    ['{85158FAA-94A3-3E46-922F-AB00B4448983}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {85158FAA-94A3-3E46-922F-AB00B4448983}
// *********************************************************************//
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandlerDisp = dispinterface
    ['{85158FAA-94A3-3E46-922F-AB00B4448983}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1D15F3CA-81BF-39B4-9178-C2332065E840}
// *********************************************************************//
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs = interface(IDispatch)
    ['{1D15F3CA-81BF-39B4-9178-C2332065E840}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1D15F3CA-81BF-39B4-9178-C2332065E840}
// *********************************************************************//
  _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgsDisp = dispinterface
    ['{1D15F3CA-81BF-39B4-9178-C2332065E840}']
  end;

// *********************************************************************//
// Interface: _NfeStatusServico4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9492D1AB-08E1-38F0-9981-31E037A0D601}
// *********************************************************************//
  _NfeStatusServico4 = interface(IDispatch)
    ['{9492D1AB-08E1-38F0-9981-31E037A0D601}']
  end;

// *********************************************************************//
// DispIntf:  _NfeStatusServico4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9492D1AB-08E1-38F0-9981-31E037A0D601}
// *********************************************************************//
  _NfeStatusServico4Disp = dispinterface
    ['{9492D1AB-08E1-38F0-9981-31E037A0D601}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FFF1BA27-573A-366E-8619-513EE99F1B2F}
// *********************************************************************//
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler = interface(IDispatch)
    ['{FFF1BA27-573A-366E-8619-513EE99F1B2F}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FFF1BA27-573A-366E-8619-513EE99F1B2F}
// *********************************************************************//
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandlerDisp = dispinterface
    ['{FFF1BA27-573A-366E-8619-513EE99F1B2F}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CDC91139-F9A0-37B8-8ACD-29496CEEAC3B}
// *********************************************************************//
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs = interface(IDispatch)
    ['{CDC91139-F9A0-37B8-8ACD-29496CEEAC3B}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CDC91139-F9A0-37B8-8ACD-29496CEEAC3B}
// *********************************************************************//
  _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgsDisp = dispinterface
    ['{CDC91139-F9A0-37B8-8ACD-29496CEEAC3B}']
  end;

// *********************************************************************//
// Interface: _RegistroSaida2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C8753118-6E95-3F42-9B81-D2823078FA01}
// *********************************************************************//
  _RegistroSaida2 = interface(IDispatch)
    ['{C8753118-6E95-3F42-9B81-D2823078FA01}']
  end;

// *********************************************************************//
// DispIntf:  _RegistroSaida2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C8753118-6E95-3F42-9B81-D2823078FA01}
// *********************************************************************//
  _RegistroSaida2Disp = dispinterface
    ['{C8753118-6E95-3F42-9B81-D2823078FA01}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_MGregSai_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C39C9FBF-C26C-32E9-8DFE-E3AA60A56B3D}
// *********************************************************************//
  _NFe_Util_2G_MGregSai_nfeCabecMsg = interface(IDispatch)
    ['{C39C9FBF-C26C-32E9-8DFE-E3AA60A56B3D}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_MGregSai_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C39C9FBF-C26C-32E9-8DFE-E3AA60A56B3D}
// *********************************************************************//
  _NFe_Util_2G_MGregSai_nfeCabecMsgDisp = dispinterface
    ['{C39C9FBF-C26C-32E9-8DFE-E3AA60A56B3D}']
  end;

// *********************************************************************//
// Interface: _registrarSaidaCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D3F380DB-359F-3D64-A56E-E724CC391070}
// *********************************************************************//
  _registrarSaidaCompletedEventHandler = interface(IDispatch)
    ['{D3F380DB-359F-3D64-A56E-E724CC391070}']
  end;

// *********************************************************************//
// DispIntf:  _registrarSaidaCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D3F380DB-359F-3D64-A56E-E724CC391070}
// *********************************************************************//
  _registrarSaidaCompletedEventHandlerDisp = dispinterface
    ['{D3F380DB-359F-3D64-A56E-E724CC391070}']
  end;

// *********************************************************************//
// Interface: _registrarSaidaCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {43E88C4C-6726-309E-A1ED-62F8602B61EB}
// *********************************************************************//
  _registrarSaidaCompletedEventArgs = interface(IDispatch)
    ['{43E88C4C-6726-309E-A1ED-62F8602B61EB}']
  end;

// *********************************************************************//
// DispIntf:  _registrarSaidaCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {43E88C4C-6726-309E-A1ED-62F8602B61EB}
// *********************************************************************//
  _registrarSaidaCompletedEventArgsDisp = dispinterface
    ['{43E88C4C-6726-309E-A1ED-62F8602B61EB}']
  end;

// *********************************************************************//
// Interface: _CteConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A018CC78-2195-3555-B046-0BEC718D86A8}
// *********************************************************************//
  _CteConsulta = interface(IDispatch)
    ['{A018CC78-2195-3555-B046-0BEC718D86A8}']
  end;

// *********************************************************************//
// DispIntf:  _CteConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A018CC78-2195-3555-B046-0BEC718D86A8}
// *********************************************************************//
  _CteConsultaDisp = dispinterface
    ['{A018CC78-2195-3555-B046-0BEC718D86A8}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cteConsulta_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C70DF4C6-CAF4-386F-B6B3-9DBDAAA83B5D}
// *********************************************************************//
  _NFe_Util_2G_cteConsulta_cteCabecMsg = interface(IDispatch)
    ['{C70DF4C6-CAF4-386F-B6B3-9DBDAAA83B5D}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cteConsulta_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C70DF4C6-CAF4-386F-B6B3-9DBDAAA83B5D}
// *********************************************************************//
  _NFe_Util_2G_cteConsulta_cteCabecMsgDisp = dispinterface
    ['{C70DF4C6-CAF4-386F-B6B3-9DBDAAA83B5D}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2D24532D-4A49-3F52-9FB3-FF78DE3A7A1B}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandler = interface(IDispatch)
    ['{2D24532D-4A49-3F52-9FB3-FF78DE3A7A1B}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2D24532D-4A49-3F52-9FB3-FF78DE3A7A1B}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface
    ['{2D24532D-4A49-3F52-9FB3-FF78DE3A7A1B}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0579DA1C-07CA-3F60-A2E2-4C63FBF6EC8B}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgs = interface(IDispatch)
    ['{0579DA1C-07CA-3F60-A2E2-4C63FBF6EC8B}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0579DA1C-07CA-3F60-A2E2-4C63FBF6EC8B}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgsDisp = dispinterface
    ['{0579DA1C-07CA-3F60-A2E2-4C63FBF6EC8B}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {796A3C3E-690C-317A-98BF-FC5A9FFC1F7F}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro = interface(IDispatch)
    ['{796A3C3E-690C-317A-98BF-FC5A9FFC1F7F}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastroDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {796A3C3E-690C-317A-98BF-FC5A9FFC1F7F}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastroDisp = dispinterface
    ['{796A3C3E-690C-317A-98BF-FC5A9FFC1F7F}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC400A4E-C6F6-3305-ADBA-C5E8C80FC080}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler = interface(IDispatch)
    ['{FC400A4E-C6F6-3305-ADBA-C5E8C80FC080}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC400A4E-C6F6-3305-ADBA-C5E8C80FC080}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandlerDisp = dispinterface
    ['{FC400A4E-C6F6-3305-ADBA-C5E8C80FC080}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0D4968CD-6624-3D9F-9B62-39097D54B39A}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs = interface(IDispatch)
    ['{0D4968CD-6624-3D9F-9B62-39097D54B39A}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0D4968CD-6624-3D9F-9B62-39097D54B39A}
// *********************************************************************//
  _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgsDisp = dispinterface
    ['{0D4968CD-6624-3D9F-9B62-39097D54B39A}']
  end;

// *********************************************************************//
// Interface: _CleCadastro
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2187D45-233D-3D8A-A70B-B657F76FE06F}
// *********************************************************************//
  _CleCadastro = interface(IDispatch)
    ['{A2187D45-233D-3D8A-A70B-B657F76FE06F}']
  end;

// *********************************************************************//
// DispIntf:  _CleCadastroDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2187D45-233D-3D8A-A70B-B657F76FE06F}
// *********************************************************************//
  _CleCadastroDisp = dispinterface
    ['{A2187D45-233D-3D8A-A70B-B657F76FE06F}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLote
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A847D17A-C837-3E30-9702-8B3A3995522F}
// *********************************************************************//
  _cleCadastroLote = interface(IDispatch)
    ['{A847D17A-C837-3E30-9702-8B3A3995522F}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A847D17A-C837-3E30-9702-8B3A3995522F}
// *********************************************************************//
  _cleCadastroLoteDisp = dispinterface
    ['{A847D17A-C837-3E30-9702-8B3A3995522F}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteResponse
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {595CB315-6950-3B98-8855-5E5437C0AECB}
// *********************************************************************//
  _cleCadastroLoteResponse = interface(IDispatch)
    ['{595CB315-6950-3B98-8855-5E5437C0AECB}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteResponseDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {595CB315-6950-3B98-8855-5E5437C0AECB}
// *********************************************************************//
  _cleCadastroLoteResponseDisp = dispinterface
    ['{595CB315-6950-3B98-8855-5E5437C0AECB}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EACE8F27-A092-3FA7-84E9-DA224374E89D}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandler = interface(IDispatch)
    ['{EACE8F27-A092-3FA7-84E9-DA224374E89D}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EACE8F27-A092-3FA7-84E9-DA224374E89D}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandlerDisp = dispinterface
    ['{EACE8F27-A092-3FA7-84E9-DA224374E89D}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD089A63-4C72-37AC-8F39-6657340D593E}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgs = interface(IDispatch)
    ['{BD089A63-4C72-37AC-8F39-6657340D593E}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD089A63-4C72-37AC-8F39-6657340D593E}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgsDisp = dispinterface
    ['{BD089A63-4C72-37AC-8F39-6657340D593E}']
  end;

// *********************************************************************//
// Interface: _CancRegSaida2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A28E0E9-D96A-3A46-8BFC-2112F89F83DB}
// *********************************************************************//
  _CancRegSaida2 = interface(IDispatch)
    ['{5A28E0E9-D96A-3A46-8BFC-2112F89F83DB}']
  end;

// *********************************************************************//
// DispIntf:  _CancRegSaida2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A28E0E9-D96A-3A46-8BFC-2112F89F83DB}
// *********************************************************************//
  _CancRegSaida2Disp = dispinterface
    ['{5A28E0E9-D96A-3A46-8BFC-2112F89F83DB}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_MGcancRegSai_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {13B43FE5-EA13-3125-84AD-A4F10EB8A600}
// *********************************************************************//
  _NFe_Util_2G_MGcancRegSai_nfeCabecMsg = interface(IDispatch)
    ['{13B43FE5-EA13-3125-84AD-A4F10EB8A600}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_MGcancRegSai_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {13B43FE5-EA13-3125-84AD-A4F10EB8A600}
// *********************************************************************//
  _NFe_Util_2G_MGcancRegSai_nfeCabecMsgDisp = dispinterface
    ['{13B43FE5-EA13-3125-84AD-A4F10EB8A600}']
  end;

// *********************************************************************//
// Interface: _cancRegSaida2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {68385246-9C22-3D3C-9045-0E8FC4032786}
// *********************************************************************//
  _cancRegSaida2CompletedEventHandler = interface(IDispatch)
    ['{68385246-9C22-3D3C-9045-0E8FC4032786}']
  end;

// *********************************************************************//
// DispIntf:  _cancRegSaida2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {68385246-9C22-3D3C-9045-0E8FC4032786}
// *********************************************************************//
  _cancRegSaida2CompletedEventHandlerDisp = dispinterface
    ['{68385246-9C22-3D3C-9045-0E8FC4032786}']
  end;

// *********************************************************************//
// Interface: _cancRegSaida2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EC8174C2-812E-35B1-9941-046E868B3F31}
// *********************************************************************//
  _cancRegSaida2CompletedEventArgs = interface(IDispatch)
    ['{EC8174C2-812E-35B1-9941-046E868B3F31}']
  end;

// *********************************************************************//
// DispIntf:  _cancRegSaida2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EC8174C2-812E-35B1-9941-046E868B3F31}
// *********************************************************************//
  _cancRegSaida2CompletedEventArgsDisp = dispinterface
    ['{EC8174C2-812E-35B1-9941-046E868B3F31}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2D8941F8-5ADF-3B18-A766-36FCE65670F3}
// *********************************************************************//
  _CteRecepcaoEvento = interface(IDispatch)
    ['{2D8941F8-5ADF-3B18-A766-36FCE65670F3}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2D8941F8-5ADF-3B18-A766-36FCE65670F3}
// *********************************************************************//
  _CteRecepcaoEventoDisp = dispinterface
    ['{2D8941F8-5ADF-3B18-A766-36FCE65670F3}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D79BCC7-4A39-352B-960C-23F8B894A600}
// *********************************************************************//
  _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg = interface(IDispatch)
    ['{6D79BCC7-4A39-352B-960C-23F8B894A600}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D79BCC7-4A39-352B-960C-23F8B894A600}
// *********************************************************************//
  _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface
    ['{6D79BCC7-4A39-352B-960C-23F8B894A600}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {16574010-59FF-3DBB-9725-ED8497D687BC}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{16574010-59FF-3DBB-9725-ED8497D687BC}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {16574010-59FF-3DBB-9725-ED8497D687BC}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{16574010-59FF-3DBB-9725-ED8497D687BC}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DB401E8-FF8F-3F01-81DE-B78FA6DEBCB6}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{4DB401E8-FF8F-3F01-81DE-B78FA6DEBCB6}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DB401E8-FF8F-3F01-81DE-B78FA6DEBCB6}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{4DB401E8-FF8F-3F01-81DE-B78FA6DEBCB6}']
  end;

// *********************************************************************//
// Interface: _ccgConsGTIN
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AEF8462E-2BC3-3179-8BC9-0957DCE2458F}
// *********************************************************************//
  _ccgConsGTIN = interface(IDispatch)
    ['{AEF8462E-2BC3-3179-8BC9-0957DCE2458F}']
  end;

// *********************************************************************//
// DispIntf:  _ccgConsGTINDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AEF8462E-2BC3-3179-8BC9-0957DCE2458F}
// *********************************************************************//
  _ccgConsGTINDisp = dispinterface
    ['{AEF8462E-2BC3-3179-8BC9-0957DCE2458F}']
  end;

// *********************************************************************//
// Interface: _CallccgConsGTINCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08E3F50D-2E19-342E-933F-D58CC4462464}
// *********************************************************************//
  _CallccgConsGTINCompletedEventHandler = interface(IDispatch)
    ['{08E3F50D-2E19-342E-933F-D58CC4462464}']
  end;

// *********************************************************************//
// DispIntf:  _CallccgConsGTINCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08E3F50D-2E19-342E-933F-D58CC4462464}
// *********************************************************************//
  _CallccgConsGTINCompletedEventHandlerDisp = dispinterface
    ['{08E3F50D-2E19-342E-933F-D58CC4462464}']
  end;

// *********************************************************************//
// Interface: _CallccgConsGTINCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2E30B3ED-964A-34E6-A855-EC359ED8A41A}
// *********************************************************************//
  _CallccgConsGTINCompletedEventArgs = interface(IDispatch)
    ['{2E30B3ED-964A-34E6-A855-EC359ED8A41A}']
  end;

// *********************************************************************//
// DispIntf:  _CallccgConsGTINCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2E30B3ED-964A-34E6-A855-EC359ED8A41A}
// *********************************************************************//
  _CallccgConsGTINCompletedEventArgsDisp = dispinterface
    ['{2E30B3ED-964A-34E6-A855-EC359ED8A41A}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7463E757-8087-31AE-B876-A570109806CB}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro = interface(IDispatch)
    ['{7463E757-8087-31AE-B876-A570109806CB}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastroDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7463E757-8087-31AE-B876-A570109806CB}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastroDisp = dispinterface
    ['{7463E757-8087-31AE-B876-A570109806CB}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {539166E6-FD64-3AEA-8C16-65BACE007D23}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler = interface(IDispatch)
    ['{539166E6-FD64-3AEA-8C16-65BACE007D23}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {539166E6-FD64-3AEA-8C16-65BACE007D23}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandlerDisp = dispinterface
    ['{539166E6-FD64-3AEA-8C16-65BACE007D23}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {224702AA-EF38-321C-BC66-FF8EE55C2D27}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs = interface(IDispatch)
    ['{224702AA-EF38-321C-BC66-FF8EE55C2D27}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {224702AA-EF38-321C-BC66-FF8EE55C2D27}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgsDisp = dispinterface
    ['{224702AA-EF38-321C-BC66-FF8EE55C2D27}']
  end;

// *********************************************************************//
// Interface: _CadConsultaCadastro4
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B215CF95-78E3-34ED-ADD0-7BAE9CF94743}
// *********************************************************************//
  _CadConsultaCadastro4 = interface(IDispatch)
    ['{B215CF95-78E3-34ED-ADD0-7BAE9CF94743}']
  end;

// *********************************************************************//
// DispIntf:  _CadConsultaCadastro4Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B215CF95-78E3-34ED-ADD0-7BAE9CF94743}
// *********************************************************************//
  _CadConsultaCadastro4Disp = dispinterface
    ['{B215CF95-78E3-34ED-ADD0-7BAE9CF94743}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37A26DC5-675E-3F3E-845C-EE5396319D93}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler = interface(IDispatch)
    ['{37A26DC5-675E-3F3E-845C-EE5396319D93}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37A26DC5-675E-3F3E-845C-EE5396319D93}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandlerDisp = dispinterface
    ['{37A26DC5-675E-3F3E-845C-EE5396319D93}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BC8BB181-57AB-32E0-A515-1B4066C5B1EC}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs = interface(IDispatch)
    ['{BC8BB181-57AB-32E0-A515-1B4066C5B1EC}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BC8BB181-57AB-32E0-A515-1B4066C5B1EC}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgsDisp = dispinterface
    ['{BC8BB181-57AB-32E0-A515-1B4066C5B1EC}']
  end;

// *********************************************************************//
// Interface: _CadConsultaCadastro2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {06CD3473-0F40-36FE-BE18-CDF8E566E50A}
// *********************************************************************//
  _CadConsultaCadastro2 = interface(IDispatch)
    ['{06CD3473-0F40-36FE-BE18-CDF8E566E50A}']
  end;

// *********************************************************************//
// DispIntf:  _CadConsultaCadastro2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {06CD3473-0F40-36FE-BE18-CDF8E566E50A}
// *********************************************************************//
  _CadConsultaCadastro2Disp = dispinterface
    ['{06CD3473-0F40-36FE-BE18-CDF8E566E50A}']
  end;

// *********************************************************************//
// Interface: _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDEC443E-0836-30FC-BD7D-3D5A3BB6AEC0}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg = interface(IDispatch)
    ['{BDEC443E-0836-30FC-BD7D-3D5A3BB6AEC0}']
  end;

// *********************************************************************//
// DispIntf:  _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDEC443E-0836-30FC-BD7D-3D5A3BB6AEC0}
// *********************************************************************//
  _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsgDisp = dispinterface
    ['{BDEC443E-0836-30FC-BD7D-3D5A3BB6AEC0}']
  end;

// *********************************************************************//
// Interface: _consultaCadastro2CompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7E897D3-EA8F-3591-BB1D-344033C8F50E}
// *********************************************************************//
  _consultaCadastro2CompletedEventHandler = interface(IDispatch)
    ['{D7E897D3-EA8F-3591-BB1D-344033C8F50E}']
  end;

// *********************************************************************//
// DispIntf:  _consultaCadastro2CompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7E897D3-EA8F-3591-BB1D-344033C8F50E}
// *********************************************************************//
  _consultaCadastro2CompletedEventHandlerDisp = dispinterface
    ['{D7E897D3-EA8F-3591-BB1D-344033C8F50E}']
  end;

// *********************************************************************//
// Interface: _consultaCadastro2CompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1F4E2714-4671-38CC-9925-1CAA9275346C}
// *********************************************************************//
  _consultaCadastro2CompletedEventArgs = interface(IDispatch)
    ['{1F4E2714-4671-38CC-9925-1CAA9275346C}']
  end;

// *********************************************************************//
// DispIntf:  _consultaCadastro2CompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1F4E2714-4671-38CC-9925-1CAA9275346C}
// *********************************************************************//
  _consultaCadastro2CompletedEventArgsDisp = dispinterface
    ['{1F4E2714-4671-38CC-9925-1CAA9275346C}']
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to          
// create instances of the default interface NFe_Util_2G_Interface exposed by              
// the CoClass Util. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUtil = class
    class function Create: NFe_Util_2G_Interface;
    class function CreateRemote(const MachineName: string): NFe_Util_2G_Interface;
  end;

// *********************************************************************//
// The Class CoSCERecepcaoRFB provides a Create and CreateRemote method to          
// create instances of the default interface _SCERecepcaoRFB exposed by              
// the CoClass SCERecepcaoRFB. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSCERecepcaoRFB = class
    class function Create: _SCERecepcaoRFB;
    class function CreateRemote(const MachineName: string): _SCERecepcaoRFB;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg exposed by              
// the CoClass NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg = class
    class function Create: _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
  end;

// *********************************************************************//
// The Class CosceRecepcaoDPECCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _sceRecepcaoDPECCompletedEventHandler exposed by              
// the CoClass sceRecepcaoDPECCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosceRecepcaoDPECCompletedEventHandler = class
    class function Create: _sceRecepcaoDPECCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _sceRecepcaoDPECCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CosceRecepcaoDPECCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _sceRecepcaoDPECCompletedEventArgs exposed by              
// the CoClass sceRecepcaoDPECCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosceRecepcaoDPECCompletedEventArgs = class
    class function Create: _sceRecepcaoDPECCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _sceRecepcaoDPECCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoSCEConsultaRFB provides a Create and CreateRemote method to          
// create instances of the default interface _SCEConsultaRFB exposed by              
// the CoClass SCEConsultaRFB. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSCEConsultaRFB = class
    class function Create: _SCEConsultaRFB;
    class function CreateRemote(const MachineName: string): _SCEConsultaRFB;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_sceConsultaDPEC_sceCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg exposed by              
// the CoClass NFe_Util_2G_sceConsultaDPEC_sceCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_sceConsultaDPEC_sceCabecMsg = class
    class function Create: _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
  end;

// *********************************************************************//
// The Class CosceConsultaDPECCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _sceConsultaDPECCompletedEventHandler exposed by              
// the CoClass sceConsultaDPECCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosceConsultaDPECCompletedEventHandler = class
    class function Create: _sceConsultaDPECCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _sceConsultaDPECCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CosceConsultaDPECCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _sceConsultaDPECCompletedEventArgs exposed by              
// the CoClass sceConsultaDPECCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosceConsultaDPECCompletedEventArgs = class
    class function Create: _sceConsultaDPECCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _sceConsultaDPECCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoRecepcaoEvento provides a Create and CreateRemote method to          
// create instances of the default interface _RecepcaoEvento exposed by              
// the CoClass RecepcaoEvento. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRecepcaoEvento = class
    class function Create: _RecepcaoEvento;
    class function CreateRemote(const MachineName: string): _RecepcaoEvento;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_RecepcaoEvento_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_RecepcaoEvento_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_RecepcaoEvento_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = class
    class function Create: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = class
    class function Create: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeAutorizacao provides a Create and CreateRemote method to          
// create instances of the default interface _NfeAutorizacao exposed by              
// the CoClass NfeAutorizacao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeAutorizacao = class
    class function Create: _NfeAutorizacao;
    class function CreateRemote(const MachineName: string): _NfeAutorizacao;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeAutorizacao_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_nfeAutorizacao_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeAutorizacao_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeStatusServico provides a Create and CreateRemote method to          
// create instances of the default interface _NfeStatusServico exposed by              
// the CoClass NfeStatusServico. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeStatusServico = class
    class function Create: _NfeStatusServico;
    class function CreateRemote(const MachineName: string): _NfeStatusServico;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeStatusServico2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeStatusServico2 exposed by              
// the CoClass NfeStatusServico2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeStatusServico2 = class
    class function Create: _NfeStatusServico2;
    class function CreateRemote(const MachineName: string): _NfeStatusServico2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_NfeStatusServico2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_NfeStatusServico2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_NfeStatusServico2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeStatusServicoNF2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeStatusServicoNF2CompletedEventHandler exposed by              
// the CoClass nfeStatusServicoNF2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeStatusServicoNF2CompletedEventHandler = class
    class function Create: _nfeStatusServicoNF2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeStatusServicoNF2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeStatusServicoNF2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeStatusServicoNF2CompletedEventArgs exposed by              
// the CoClass nfeStatusServicoNF2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeStatusServicoNF2CompletedEventArgs = class
    class function Create: _nfeStatusServicoNF2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeStatusServicoNF2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRetRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRetRecepcao exposed by              
// the CoClass NfeRetRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRetRecepcao = class
    class function Create: _NfeRetRecepcao;
    class function CreateRemote(const MachineName: string): _NfeRetRecepcao;
  end;

// *********************************************************************//
// The Class ConfeRetRecepcaoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRetRecepcaoCompletedEventHandler exposed by              
// the CoClass nfeRetRecepcaoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRetRecepcaoCompletedEventHandler = class
    class function Create: _nfeRetRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeRetRecepcaoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeRetRecepcaoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRetRecepcaoCompletedEventArgs exposed by              
// the CoClass nfeRetRecepcaoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRetRecepcaoCompletedEventArgs = class
    class function Create: _nfeRetRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeRetRecepcaoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRetAutorizacao4 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRetAutorizacao4 exposed by              
// the CoClass NfeRetAutorizacao4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRetAutorizacao4 = class
    class function Create: _NfeRetAutorizacao4;
    class function CreateRemote(const MachineName: string): _NfeRetAutorizacao4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRetRecepcao2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRetRecepcao2 exposed by              
// the CoClass NfeRetRecepcao2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRetRecepcao2 = class
    class function Create: _NfeRetRecepcao2;
    class function CreateRemote(const MachineName: string): _NfeRetRecepcao2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeRetRecepcao2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRetRecepcao2CompletedEventHandler exposed by              
// the CoClass nfeRetRecepcao2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRetRecepcao2CompletedEventHandler = class
    class function Create: _nfeRetRecepcao2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeRetRecepcao2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeRetRecepcao2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRetRecepcao2CompletedEventArgs exposed by              
// the CoClass nfeRetRecepcao2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRetRecepcao2CompletedEventArgs = class
    class function Create: _nfeRetRecepcao2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeRetRecepcao2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRetAutorizacao provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRetAutorizacao exposed by              
// the CoClass NfeRetAutorizacao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRetAutorizacao = class
    class function Create: _NfeRetAutorizacao;
    class function CreateRemote(const MachineName: string): _NfeRetAutorizacao;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRecepcao exposed by              
// the CoClass NfeRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRecepcao = class
    class function Create: _NfeRecepcao;
    class function CreateRemote(const MachineName: string): _NfeRecepcao;
  end;

// *********************************************************************//
// The Class ConfeRecepcaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRecepcaoLoteCompletedEventHandler exposed by              
// the CoClass nfeRecepcaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRecepcaoLoteCompletedEventHandler = class
    class function Create: _nfeRecepcaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeRecepcaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeRecepcaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRecepcaoLoteCompletedEventArgs exposed by              
// the CoClass nfeRecepcaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRecepcaoLoteCompletedEventArgs = class
    class function Create: _nfeRecepcaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeRecepcaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoRecepcaoEvento4 provides a Create and CreateRemote method to          
// create instances of the default interface _RecepcaoEvento4 exposed by              
// the CoClass RecepcaoEvento4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRecepcaoEvento4 = class
    class function Create: _RecepcaoEvento4;
    class function CreateRemote(const MachineName: string): _RecepcaoEvento4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeAutorizacao4 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeAutorizacao4 exposed by              
// the CoClass NfeAutorizacao4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeAutorizacao4 = class
    class function Create: _NfeAutorizacao4;
    class function CreateRemote(const MachineName: string): _NfeAutorizacao4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeRecepcao2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeRecepcao2 exposed by              
// the CoClass NfeRecepcao2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeRecepcao2 = class
    class function Create: _NfeRecepcao2;
    class function CreateRemote(const MachineName: string): _NfeRecepcao2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_NFeRecepcao2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_NFeRecepcao2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_NFeRecepcao2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeRecepcaoLote2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRecepcaoLote2CompletedEventHandler exposed by              
// the CoClass nfeRecepcaoLote2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRecepcaoLote2CompletedEventHandler = class
    class function Create: _nfeRecepcaoLote2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeRecepcaoLote2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeRecepcaoLote2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeRecepcaoLote2CompletedEventArgs exposed by              
// the CoClass nfeRecepcaoLote2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeRecepcaoLote2CompletedEventArgs = class
    class function Create: _nfeRecepcaoLote2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeRecepcaoLote2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeInutilizacao provides a Create and CreateRemote method to          
// create instances of the default interface _NfeInutilizacao exposed by              
// the CoClass NfeInutilizacao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeInutilizacao = class
    class function Create: _NfeInutilizacao;
    class function CreateRemote(const MachineName: string): _NfeInutilizacao;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeInutilizacao4 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeInutilizacao4 exposed by              
// the CoClass NfeInutilizacao4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeInutilizacao4 = class
    class function Create: _NfeInutilizacao4;
    class function CreateRemote(const MachineName: string): _NfeInutilizacao4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeInutilizacao2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeInutilizacao2 exposed by              
// the CoClass NfeInutilizacao2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeInutilizacao2 = class
    class function Create: _NfeInutilizacao2;
    class function CreateRemote(const MachineName: string): _NfeInutilizacao2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeinutilizacao2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeinutilizacao2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeInutilizacaoNF2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeInutilizacaoNF2CompletedEventHandler exposed by              
// the CoClass nfeInutilizacaoNF2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeInutilizacaoNF2CompletedEventHandler = class
    class function Create: _nfeInutilizacaoNF2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeInutilizacaoNF2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeInutilizacaoNF2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeInutilizacaoNF2CompletedEventArgs exposed by              
// the CoClass nfeInutilizacaoNF2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeInutilizacaoNF2CompletedEventArgs = class
    class function Create: _nfeInutilizacaoNF2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeInutilizacaoNF2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeConsulta provides a Create and CreateRemote method to          
// create instances of the default interface _NfeConsulta exposed by              
// the CoClass NfeConsulta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeConsulta = class
    class function Create: _NfeConsulta;
    class function CreateRemote(const MachineName: string): _NfeConsulta;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeConsultaDest provides a Create and CreateRemote method to          
// create instances of the default interface _NfeConsultaDest exposed by              
// the CoClass NfeConsultaDest. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeConsultaDest = class
    class function Create: _NfeConsultaDest;
    class function CreateRemote(const MachineName: string): _NfeConsultaDest;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeConsultaDest_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_nfeConsultaDest_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeConsultaDest_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeConsultaNFDestCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeConsultaNFDestCompletedEventHandler exposed by              
// the CoClass nfeConsultaNFDestCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeConsultaNFDestCompletedEventHandler = class
    class function Create: _nfeConsultaNFDestCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeConsultaNFDestCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeConsultaNFDestCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeConsultaNFDestCompletedEventArgs exposed by              
// the CoClass nfeConsultaNFDestCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeConsultaNFDestCompletedEventArgs = class
    class function Create: _nfeConsultaNFDestCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeConsultaNFDestCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeConsulta2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeConsulta2 exposed by              
// the CoClass NfeConsulta2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeConsulta2 = class
    class function Create: _NfeConsulta2;
    class function CreateRemote(const MachineName: string): _NfeConsulta2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_NfeConsulta2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_NfeConsulta2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_NfeConsulta2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_NfeConsulta2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeConsultaNF2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeConsultaNF2CompletedEventHandler exposed by              
// the CoClass nfeConsultaNF2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeConsultaNF2CompletedEventHandler = class
    class function Create: _nfeConsultaNF2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeConsultaNF2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeConsultaNF2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeConsultaNF2CompletedEventArgs exposed by              
// the CoClass nfeConsultaNF2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeConsultaNF2CompletedEventArgs = class
    class function Create: _nfeConsultaNF2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeConsultaNF2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeCancelamento provides a Create and CreateRemote method to          
// create instances of the default interface _NfeCancelamento exposed by              
// the CoClass NfeCancelamento. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeCancelamento = class
    class function Create: _NfeCancelamento;
    class function CreateRemote(const MachineName: string): _NfeCancelamento;
  end;

// *********************************************************************//
// The Class ConfeCancelamentoNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeCancelamentoNFCompletedEventHandler exposed by              
// the CoClass nfeCancelamentoNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeCancelamentoNFCompletedEventHandler = class
    class function Create: _nfeCancelamentoNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeCancelamentoNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeCancelamentoNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeCancelamentoNFCompletedEventArgs exposed by              
// the CoClass nfeCancelamentoNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeCancelamentoNFCompletedEventArgs = class
    class function Create: _nfeCancelamentoNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeCancelamentoNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeCancelamento2 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeCancelamento2 exposed by              
// the CoClass NfeCancelamento2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeCancelamento2 = class
    class function Create: _NfeCancelamento2;
    class function CreateRemote(const MachineName: string): _NfeCancelamento2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_NfeCancelamento2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_NfeCancelamento2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_NfeCancelamento2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeCancelamentoNF2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeCancelamentoNF2CompletedEventHandler exposed by              
// the CoClass nfeCancelamentoNF2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeCancelamentoNF2CompletedEventHandler = class
    class function Create: _nfeCancelamentoNF2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeCancelamentoNF2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeCancelamentoNF2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeCancelamentoNF2CompletedEventArgs exposed by              
// the CoClass nfeCancelamentoNF2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeCancelamentoNF2CompletedEventArgs = class
    class function Create: _nfeCancelamentoNF2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeCancelamentoNF2CompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeDownloadNF provides a Create and CreateRemote method to          
// create instances of the default interface _NfeDownloadNF exposed by              
// the CoClass NfeDownloadNF. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeDownloadNF = class
    class function Create: _NfeDownloadNF;
    class function CreateRemote(const MachineName: string): _NfeDownloadNF;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfeDownload_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfeDownload_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_nfeDownload_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfeDownload_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_nfeDownload_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfeDownload_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class ConfeDownloadNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeDownloadNFCompletedEventHandler exposed by              
// the CoClass nfeDownloadNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeDownloadNFCompletedEventHandler = class
    class function Create: _nfeDownloadNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeDownloadNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeDownloadNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeDownloadNFCompletedEventArgs exposed by              
// the CoClass nfeDownloadNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeDownloadNFCompletedEventArgs = class
    class function Create: _nfeDownloadNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeDownloadNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNFeDistribuicaoDFe provides a Create and CreateRemote method to          
// create instances of the default interface _NFeDistribuicaoDFe exposed by              
// the CoClass NFeDistribuicaoDFe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFeDistribuicaoDFe = class
    class function Create: _NFeDistribuicaoDFe;
    class function CreateRemote(const MachineName: string): _NFeDistribuicaoDFe;
  end;

// *********************************************************************//
// The Class ConfeDistDFeInteresseCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _nfeDistDFeInteresseCompletedEventHandler exposed by              
// the CoClass nfeDistDFeInteresseCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeDistDFeInteresseCompletedEventHandler = class
    class function Create: _nfeDistDFeInteresseCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _nfeDistDFeInteresseCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ConfeDistDFeInteresseCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _nfeDistDFeInteresseCompletedEventArgs exposed by              
// the CoClass nfeDistDFeInteresseCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ConfeDistDFeInteresseCompletedEventArgs = class
    class function Create: _nfeDistDFeInteresseCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _nfeDistDFeInteresseCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeConsulta4 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeConsulta4 exposed by              
// the CoClass NfeConsulta4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeConsulta4 = class
    class function Create: _NfeConsulta4;
    class function CreateRemote(const MachineName: string): _NfeConsulta4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNfeStatusServico4 provides a Create and CreateRemote method to          
// create instances of the default interface _NfeStatusServico4 exposed by              
// the CoClass NfeStatusServico4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNfeStatusServico4 = class
    class function Create: _NfeStatusServico4;
    class function CreateRemote(const MachineName: string): _NfeStatusServico4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler = class
    class function Create: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs = class
    class function Create: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoRegistroSaida2 provides a Create and CreateRemote method to          
// create instances of the default interface _RegistroSaida2 exposed by              
// the CoClass RegistroSaida2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistroSaida2 = class
    class function Create: _RegistroSaida2;
    class function CreateRemote(const MachineName: string): _RegistroSaida2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_MGregSai_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_MGregSai_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_MGregSai_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_MGregSai_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_MGregSai_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_MGregSai_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CoregistrarSaidaCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _registrarSaidaCompletedEventHandler exposed by              
// the CoClass registrarSaidaCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoregistrarSaidaCompletedEventHandler = class
    class function Create: _registrarSaidaCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _registrarSaidaCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoregistrarSaidaCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _registrarSaidaCompletedEventArgs exposed by              
// the CoClass registrarSaidaCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoregistrarSaidaCompletedEventArgs = class
    class function Create: _registrarSaidaCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _registrarSaidaCompletedEventArgs;
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
// The Class CoNFe_Util_2G_cteConsulta_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cteConsulta_cteCabecMsg exposed by              
// the CoClass NFe_Util_2G_cteConsulta_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cteConsulta_cteCabecMsg = class
    class function Create: _NFe_Util_2G_cteConsulta_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cteConsulta_cteCabecMsg;
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
// The Class CoNFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro exposed by              
// the CoClass NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro = class
    class function Create: _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler = class
    class function Create: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs = class
    class function Create: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
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
// The Class CoCancRegSaida2 provides a Create and CreateRemote method to          
// create instances of the default interface _CancRegSaida2 exposed by              
// the CoClass CancRegSaida2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCancRegSaida2 = class
    class function Create: _CancRegSaida2;
    class function CreateRemote(const MachineName: string): _CancRegSaida2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_MGcancRegSai_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_MGcancRegSai_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_MGcancRegSai_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_MGcancRegSai_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CocancRegSaida2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _cancRegSaida2CompletedEventHandler exposed by              
// the CoClass cancRegSaida2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocancRegSaida2CompletedEventHandler = class
    class function Create: _cancRegSaida2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cancRegSaida2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocancRegSaida2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _cancRegSaida2CompletedEventArgs exposed by              
// the CoClass cancRegSaida2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocancRegSaida2CompletedEventArgs = class
    class function Create: _cancRegSaida2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cancRegSaida2CompletedEventArgs;
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
// The Class CoNFe_Util_2G_cteRecepcaoEvento_cteCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg exposed by              
// the CoClass NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cteRecepcaoEvento_cteCabecMsg = class
    class function Create: _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
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
// The Class CoccgConsGTIN provides a Create and CreateRemote method to          
// create instances of the default interface _ccgConsGTIN exposed by              
// the CoClass ccgConsGTIN. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoccgConsGTIN = class
    class function Create: _ccgConsGTIN;
    class function CreateRemote(const MachineName: string): _ccgConsGTIN;
  end;

// *********************************************************************//
// The Class CoCallccgConsGTINCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _CallccgConsGTINCompletedEventHandler exposed by              
// the CoClass CallccgConsGTINCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCallccgConsGTINCompletedEventHandler = class
    class function Create: _CallccgConsGTINCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _CallccgConsGTINCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoCallccgConsGTINCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _CallccgConsGTINCompletedEventArgs exposed by              
// the CoClass CallccgConsGTINCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCallccgConsGTINCompletedEventArgs = class
    class function Create: _CallccgConsGTINCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _CallccgConsGTINCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCadConsultaCadastro4 provides a Create and CreateRemote method to          
// create instances of the default interface _CadConsultaCadastro4 exposed by              
// the CoClass CadConsultaCadastro4. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCadConsultaCadastro4 = class
    class function Create: _CadConsultaCadastro4;
    class function CreateRemote(const MachineName: string): _CadConsultaCadastro4;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCadConsultaCadastro2 provides a Create and CreateRemote method to          
// create instances of the default interface _CadConsultaCadastro2 exposed by              
// the CoClass CadConsultaCadastro2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCadConsultaCadastro2 = class
    class function Create: _CadConsultaCadastro2;
    class function CreateRemote(const MachineName: string): _CadConsultaCadastro2;
  end;

// *********************************************************************//
// The Class CoNFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg exposed by              
// the CoClass NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg = class
    class function Create: _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
    class function CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
  end;

// *********************************************************************//
// The Class CoconsultaCadastro2CompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _consultaCadastro2CompletedEventHandler exposed by              
// the CoClass consultaCadastro2CompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoconsultaCadastro2CompletedEventHandler = class
    class function Create: _consultaCadastro2CompletedEventHandler;
    class function CreateRemote(const MachineName: string): _consultaCadastro2CompletedEventHandler;
  end;

// *********************************************************************//
// The Class CoconsultaCadastro2CompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _consultaCadastro2CompletedEventArgs exposed by              
// the CoClass consultaCadastro2CompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoconsultaCadastro2CompletedEventArgs = class
    class function Create: _consultaCadastro2CompletedEventArgs;
    class function CreateRemote(const MachineName: string): _consultaCadastro2CompletedEventArgs;
  end;

implementation

uses System.Win.ComObj;

class function CoUtil.Create: NFe_Util_2G_Interface;
begin
  Result := CreateComObject(CLASS_Util) as NFe_Util_2G_Interface;
end;

class function CoUtil.CreateRemote(const MachineName: string): NFe_Util_2G_Interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as NFe_Util_2G_Interface;
end;

class function CoSCERecepcaoRFB.Create: _SCERecepcaoRFB;
begin
  Result := CreateComObject(CLASS_SCERecepcaoRFB) as _SCERecepcaoRFB;
end;

class function CoSCERecepcaoRFB.CreateRemote(const MachineName: string): _SCERecepcaoRFB;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SCERecepcaoRFB) as _SCERecepcaoRFB;
end;

class function CoNFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg.Create: _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg) as _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
end;

class function CoNFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg) as _NFe_Util_2G_sceRecepcaoDPEC_sceCabecMsg;
end;

class function CosceRecepcaoDPECCompletedEventHandler.Create: _sceRecepcaoDPECCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_sceRecepcaoDPECCompletedEventHandler) as _sceRecepcaoDPECCompletedEventHandler;
end;

class function CosceRecepcaoDPECCompletedEventHandler.CreateRemote(const MachineName: string): _sceRecepcaoDPECCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sceRecepcaoDPECCompletedEventHandler) as _sceRecepcaoDPECCompletedEventHandler;
end;

class function CosceRecepcaoDPECCompletedEventArgs.Create: _sceRecepcaoDPECCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_sceRecepcaoDPECCompletedEventArgs) as _sceRecepcaoDPECCompletedEventArgs;
end;

class function CosceRecepcaoDPECCompletedEventArgs.CreateRemote(const MachineName: string): _sceRecepcaoDPECCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sceRecepcaoDPECCompletedEventArgs) as _sceRecepcaoDPECCompletedEventArgs;
end;

class function CoSCEConsultaRFB.Create: _SCEConsultaRFB;
begin
  Result := CreateComObject(CLASS_SCEConsultaRFB) as _SCEConsultaRFB;
end;

class function CoSCEConsultaRFB.CreateRemote(const MachineName: string): _SCEConsultaRFB;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SCEConsultaRFB) as _SCEConsultaRFB;
end;

class function CoNFe_Util_2G_sceConsultaDPEC_sceCabecMsg.Create: _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_sceConsultaDPEC_sceCabecMsg) as _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
end;

class function CoNFe_Util_2G_sceConsultaDPEC_sceCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_sceConsultaDPEC_sceCabecMsg) as _NFe_Util_2G_sceConsultaDPEC_sceCabecMsg;
end;

class function CosceConsultaDPECCompletedEventHandler.Create: _sceConsultaDPECCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_sceConsultaDPECCompletedEventHandler) as _sceConsultaDPECCompletedEventHandler;
end;

class function CosceConsultaDPECCompletedEventHandler.CreateRemote(const MachineName: string): _sceConsultaDPECCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sceConsultaDPECCompletedEventHandler) as _sceConsultaDPECCompletedEventHandler;
end;

class function CosceConsultaDPECCompletedEventArgs.Create: _sceConsultaDPECCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_sceConsultaDPECCompletedEventArgs) as _sceConsultaDPECCompletedEventArgs;
end;

class function CosceConsultaDPECCompletedEventArgs.CreateRemote(const MachineName: string): _sceConsultaDPECCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sceConsultaDPECCompletedEventArgs) as _sceConsultaDPECCompletedEventArgs;
end;

class function CoRecepcaoEvento.Create: _RecepcaoEvento;
begin
  Result := CreateComObject(CLASS_RecepcaoEvento) as _RecepcaoEvento;
end;

class function CoRecepcaoEvento.CreateRemote(const MachineName: string): _RecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RecepcaoEvento) as _RecepcaoEvento;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeCabecMsg.Create: _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_RecepcaoEvento_nfeCabecMsg) as _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_RecepcaoEvento_nfeCabecMsg) as _NFe_Util_2G_RecepcaoEvento_nfeCabecMsg;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler.Create: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler) as _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler) as _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs.Create: _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs) as _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
end;

class function CoNFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs) as _NFe_Util_2G_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
end;

class function CoNfeAutorizacao.Create: _NfeAutorizacao;
begin
  Result := CreateComObject(CLASS_NfeAutorizacao) as _NfeAutorizacao;
end;

class function CoNfeAutorizacao.CreateRemote(const MachineName: string): _NfeAutorizacao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeAutorizacao) as _NfeAutorizacao;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeCabecMsg.Create: _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeAutorizacao_nfeCabecMsg) as _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeAutorizacao_nfeCabecMsg) as _NFe_Util_2G_nfeAutorizacao_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler.Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs.Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler.Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs.Create: _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs) as _NFe_Util_2G_nfeAutorizacao_nfeAutorizacaoLoteZipCompletedEventArgs;
end;

class function CoNfeStatusServico.Create: _NfeStatusServico;
begin
  Result := CreateComObject(CLASS_NfeStatusServico) as _NfeStatusServico;
end;

class function CoNfeStatusServico.CreateRemote(const MachineName: string): _NfeStatusServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeStatusServico) as _NfeStatusServico;
end;

class function CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler.Create: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler) as _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler) as _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs.Create: _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs) as _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs) as _NFe_Util_2G_nfeStatusServico_nfeStatusServicoNFCompletedEventArgs;
end;

class function CoNfeStatusServico2.Create: _NfeStatusServico2;
begin
  Result := CreateComObject(CLASS_NfeStatusServico2) as _NfeStatusServico2;
end;

class function CoNfeStatusServico2.CreateRemote(const MachineName: string): _NfeStatusServico2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeStatusServico2) as _NfeStatusServico2;
end;

class function CoNFe_Util_2G_NfeStatusServico2_nfeCabecMsg.Create: _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_NfeStatusServico2_nfeCabecMsg) as _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_NfeStatusServico2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_NfeStatusServico2_nfeCabecMsg) as _NFe_Util_2G_NfeStatusServico2_nfeCabecMsg;
end;

class function ConfeStatusServicoNF2CompletedEventHandler.Create: _nfeStatusServicoNF2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeStatusServicoNF2CompletedEventHandler) as _nfeStatusServicoNF2CompletedEventHandler;
end;

class function ConfeStatusServicoNF2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeStatusServicoNF2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeStatusServicoNF2CompletedEventHandler) as _nfeStatusServicoNF2CompletedEventHandler;
end;

class function ConfeStatusServicoNF2CompletedEventArgs.Create: _nfeStatusServicoNF2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeStatusServicoNF2CompletedEventArgs) as _nfeStatusServicoNF2CompletedEventArgs;
end;

class function ConfeStatusServicoNF2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeStatusServicoNF2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeStatusServicoNF2CompletedEventArgs) as _nfeStatusServicoNF2CompletedEventArgs;
end;

class function CoNfeRetRecepcao.Create: _NfeRetRecepcao;
begin
  Result := CreateComObject(CLASS_NfeRetRecepcao) as _NfeRetRecepcao;
end;

class function CoNfeRetRecepcao.CreateRemote(const MachineName: string): _NfeRetRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRetRecepcao) as _NfeRetRecepcao;
end;

class function ConfeRetRecepcaoCompletedEventHandler.Create: _nfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeRetRecepcaoCompletedEventHandler) as _nfeRetRecepcaoCompletedEventHandler;
end;

class function ConfeRetRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _nfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRetRecepcaoCompletedEventHandler) as _nfeRetRecepcaoCompletedEventHandler;
end;

class function ConfeRetRecepcaoCompletedEventArgs.Create: _nfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeRetRecepcaoCompletedEventArgs) as _nfeRetRecepcaoCompletedEventArgs;
end;

class function ConfeRetRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _nfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRetRecepcaoCompletedEventArgs) as _nfeRetRecepcaoCompletedEventArgs;
end;

class function CoNfeRetAutorizacao4.Create: _NfeRetAutorizacao4;
begin
  Result := CreateComObject(CLASS_NfeRetAutorizacao4) as _NfeRetAutorizacao4;
end;

class function CoNfeRetAutorizacao4.CreateRemote(const MachineName: string): _NfeRetAutorizacao4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRetAutorizacao4) as _NfeRetAutorizacao4;
end;

class function CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler.Create: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs.Create: _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfe4_RetRecepcao_nfeRetAutorizacaoLoteCompletedEventArgs;
end;

class function CoNfeRetRecepcao2.Create: _NfeRetRecepcao2;
begin
  Result := CreateComObject(CLASS_NfeRetRecepcao2) as _NfeRetRecepcao2;
end;

class function CoNfeRetRecepcao2.CreateRemote(const MachineName: string): _NfeRetRecepcao2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRetRecepcao2) as _NfeRetRecepcao2;
end;

class function CoNFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg.Create: _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg) as _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg) as _NFe_Util_2G_NfeRetRecepcao2_nfeCabecMsg;
end;

class function ConfeRetRecepcao2CompletedEventHandler.Create: _nfeRetRecepcao2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeRetRecepcao2CompletedEventHandler) as _nfeRetRecepcao2CompletedEventHandler;
end;

class function ConfeRetRecepcao2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeRetRecepcao2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRetRecepcao2CompletedEventHandler) as _nfeRetRecepcao2CompletedEventHandler;
end;

class function ConfeRetRecepcao2CompletedEventArgs.Create: _nfeRetRecepcao2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeRetRecepcao2CompletedEventArgs) as _nfeRetRecepcao2CompletedEventArgs;
end;

class function ConfeRetRecepcao2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeRetRecepcao2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRetRecepcao2CompletedEventArgs) as _nfeRetRecepcao2CompletedEventArgs;
end;

class function CoNfeRetAutorizacao.Create: _NfeRetAutorizacao;
begin
  Result := CreateComObject(CLASS_NfeRetAutorizacao) as _NfeRetAutorizacao;
end;

class function CoNfeRetAutorizacao.CreateRemote(const MachineName: string): _NfeRetAutorizacao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRetAutorizacao) as _NfeRetAutorizacao;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg.Create: _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg) as _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg) as _NFe_Util_2G_nfeRetAutorizacao_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler.Create: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs.Create: _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfeRetAutorizacao_nfeRetAutorizacaoLoteCompletedEventArgs;
end;

class function CoNfeRecepcao.Create: _NfeRecepcao;
begin
  Result := CreateComObject(CLASS_NfeRecepcao) as _NfeRecepcao;
end;

class function CoNfeRecepcao.CreateRemote(const MachineName: string): _NfeRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRecepcao) as _NfeRecepcao;
end;

class function ConfeRecepcaoLoteCompletedEventHandler.Create: _nfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeRecepcaoLoteCompletedEventHandler) as _nfeRecepcaoLoteCompletedEventHandler;
end;

class function ConfeRecepcaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _nfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRecepcaoLoteCompletedEventHandler) as _nfeRecepcaoLoteCompletedEventHandler;
end;

class function ConfeRecepcaoLoteCompletedEventArgs.Create: _nfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeRecepcaoLoteCompletedEventArgs) as _nfeRecepcaoLoteCompletedEventArgs;
end;

class function ConfeRecepcaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _nfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRecepcaoLoteCompletedEventArgs) as _nfeRecepcaoLoteCompletedEventArgs;
end;

class function CoRecepcaoEvento4.Create: _RecepcaoEvento4;
begin
  Result := CreateComObject(CLASS_RecepcaoEvento4) as _RecepcaoEvento4;
end;

class function CoRecepcaoEvento4.CreateRemote(const MachineName: string): _RecepcaoEvento4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RecepcaoEvento4) as _RecepcaoEvento4;
end;

class function CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler.Create: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler) as _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler) as _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs.Create: _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs) as _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs) as _NFe_Util_2G_nfe4_RecepcaoEvento_nfeRecepcaoEventoCompletedEventArgs;
end;

class function CoNfeAutorizacao4.Create: _NfeAutorizacao4;
begin
  Result := CreateComObject(CLASS_NfeAutorizacao4) as _NfeAutorizacao4;
end;

class function CoNfeAutorizacao4.CreateRemote(const MachineName: string): _NfeAutorizacao4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeAutorizacao4) as _NfeAutorizacao4;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler.Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs.Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler.Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs.Create: _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs) as _NFe_Util_2G_nfe4_Recepcao_nfeAutorizacaoLoteZipCompletedEventArgs;
end;

class function CoNfeRecepcao2.Create: _NfeRecepcao2;
begin
  Result := CreateComObject(CLASS_NfeRecepcao2) as _NfeRecepcao2;
end;

class function CoNfeRecepcao2.CreateRemote(const MachineName: string): _NfeRecepcao2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeRecepcao2) as _NfeRecepcao2;
end;

class function CoNFe_Util_2G_NFeRecepcao2_nfeCabecMsg.Create: _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_NFeRecepcao2_nfeCabecMsg) as _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_NFeRecepcao2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_NFeRecepcao2_nfeCabecMsg) as _NFe_Util_2G_NFeRecepcao2_nfeCabecMsg;
end;

class function ConfeRecepcaoLote2CompletedEventHandler.Create: _nfeRecepcaoLote2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeRecepcaoLote2CompletedEventHandler) as _nfeRecepcaoLote2CompletedEventHandler;
end;

class function ConfeRecepcaoLote2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeRecepcaoLote2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRecepcaoLote2CompletedEventHandler) as _nfeRecepcaoLote2CompletedEventHandler;
end;

class function ConfeRecepcaoLote2CompletedEventArgs.Create: _nfeRecepcaoLote2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeRecepcaoLote2CompletedEventArgs) as _nfeRecepcaoLote2CompletedEventArgs;
end;

class function ConfeRecepcaoLote2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeRecepcaoLote2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeRecepcaoLote2CompletedEventArgs) as _nfeRecepcaoLote2CompletedEventArgs;
end;

class function CoNfeInutilizacao.Create: _NfeInutilizacao;
begin
  Result := CreateComObject(CLASS_NfeInutilizacao) as _NfeInutilizacao;
end;

class function CoNfeInutilizacao.CreateRemote(const MachineName: string): _NfeInutilizacao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeInutilizacao) as _NfeInutilizacao;
end;

class function CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler.Create: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler) as _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler) as _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs.Create: _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs) as _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs) as _NFe_Util_2G_nfeInutilizacao_nfeInutilizacaoNFCompletedEventArgs;
end;

class function CoNfeInutilizacao4.Create: _NfeInutilizacao4;
begin
  Result := CreateComObject(CLASS_NfeInutilizacao4) as _NfeInutilizacao4;
end;

class function CoNfeInutilizacao4.CreateRemote(const MachineName: string): _NfeInutilizacao4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeInutilizacao4) as _NfeInutilizacao4;
end;

class function CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler.Create: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler) as _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler) as _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs.Create: _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs) as _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs) as _NFe_Util_2G_nfe4_Inutilizacao_nfeInutilizacaoNFCompletedEventArgs;
end;

class function CoNfeInutilizacao2.Create: _NfeInutilizacao2;
begin
  Result := CreateComObject(CLASS_NfeInutilizacao2) as _NfeInutilizacao2;
end;

class function CoNfeInutilizacao2.CreateRemote(const MachineName: string): _NfeInutilizacao2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeInutilizacao2) as _NfeInutilizacao2;
end;

class function CoNFe_Util_2G_nfeinutilizacao2_nfeCabecMsg.Create: _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg) as _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeinutilizacao2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg) as _NFe_Util_2G_nfeinutilizacao2_nfeCabecMsg;
end;

class function ConfeInutilizacaoNF2CompletedEventHandler.Create: _nfeInutilizacaoNF2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeInutilizacaoNF2CompletedEventHandler) as _nfeInutilizacaoNF2CompletedEventHandler;
end;

class function ConfeInutilizacaoNF2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeInutilizacaoNF2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeInutilizacaoNF2CompletedEventHandler) as _nfeInutilizacaoNF2CompletedEventHandler;
end;

class function ConfeInutilizacaoNF2CompletedEventArgs.Create: _nfeInutilizacaoNF2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeInutilizacaoNF2CompletedEventArgs) as _nfeInutilizacaoNF2CompletedEventArgs;
end;

class function ConfeInutilizacaoNF2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeInutilizacaoNF2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeInutilizacaoNF2CompletedEventArgs) as _nfeInutilizacaoNF2CompletedEventArgs;
end;

class function CoNfeConsulta.Create: _NfeConsulta;
begin
  Result := CreateComObject(CLASS_NfeConsulta) as _NfeConsulta;
end;

class function CoNfeConsulta.CreateRemote(const MachineName: string): _NfeConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeConsulta) as _NfeConsulta;
end;

class function CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler.Create: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler) as _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler) as _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs.Create: _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs) as _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs) as _NFe_Util_2G_nfeConsultaNF_nfeConsultaNFCompletedEventArgs;
end;

class function CoNfeConsultaDest.Create: _NfeConsultaDest;
begin
  Result := CreateComObject(CLASS_NfeConsultaDest) as _NfeConsultaDest;
end;

class function CoNfeConsultaDest.CreateRemote(const MachineName: string): _NfeConsultaDest;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeConsultaDest) as _NfeConsultaDest;
end;

class function CoNFe_Util_2G_nfeConsultaDest_nfeCabecMsg.Create: _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeConsultaDest_nfeCabecMsg) as _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeConsultaDest_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeConsultaDest_nfeCabecMsg) as _NFe_Util_2G_nfeConsultaDest_nfeCabecMsg;
end;

class function ConfeConsultaNFDestCompletedEventHandler.Create: _nfeConsultaNFDestCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeConsultaNFDestCompletedEventHandler) as _nfeConsultaNFDestCompletedEventHandler;
end;

class function ConfeConsultaNFDestCompletedEventHandler.CreateRemote(const MachineName: string): _nfeConsultaNFDestCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeConsultaNFDestCompletedEventHandler) as _nfeConsultaNFDestCompletedEventHandler;
end;

class function ConfeConsultaNFDestCompletedEventArgs.Create: _nfeConsultaNFDestCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeConsultaNFDestCompletedEventArgs) as _nfeConsultaNFDestCompletedEventArgs;
end;

class function ConfeConsultaNFDestCompletedEventArgs.CreateRemote(const MachineName: string): _nfeConsultaNFDestCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeConsultaNFDestCompletedEventArgs) as _nfeConsultaNFDestCompletedEventArgs;
end;

class function CoNfeConsulta2.Create: _NfeConsulta2;
begin
  Result := CreateComObject(CLASS_NfeConsulta2) as _NfeConsulta2;
end;

class function CoNfeConsulta2.CreateRemote(const MachineName: string): _NfeConsulta2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeConsulta2) as _NfeConsulta2;
end;

class function CoNFe_Util_2G_NfeConsulta2_nfeCabecMsg.Create: _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_NfeConsulta2_nfeCabecMsg) as _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_NfeConsulta2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_NfeConsulta2_nfeCabecMsg) as _NFe_Util_2G_NfeConsulta2_nfeCabecMsg;
end;

class function ConfeConsultaNF2CompletedEventHandler.Create: _nfeConsultaNF2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeConsultaNF2CompletedEventHandler) as _nfeConsultaNF2CompletedEventHandler;
end;

class function ConfeConsultaNF2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeConsultaNF2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeConsultaNF2CompletedEventHandler) as _nfeConsultaNF2CompletedEventHandler;
end;

class function ConfeConsultaNF2CompletedEventArgs.Create: _nfeConsultaNF2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeConsultaNF2CompletedEventArgs) as _nfeConsultaNF2CompletedEventArgs;
end;

class function ConfeConsultaNF2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeConsultaNF2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeConsultaNF2CompletedEventArgs) as _nfeConsultaNF2CompletedEventArgs;
end;

class function CoNfeCancelamento.Create: _NfeCancelamento;
begin
  Result := CreateComObject(CLASS_NfeCancelamento) as _NfeCancelamento;
end;

class function CoNfeCancelamento.CreateRemote(const MachineName: string): _NfeCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeCancelamento) as _NfeCancelamento;
end;

class function ConfeCancelamentoNFCompletedEventHandler.Create: _nfeCancelamentoNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeCancelamentoNFCompletedEventHandler) as _nfeCancelamentoNFCompletedEventHandler;
end;

class function ConfeCancelamentoNFCompletedEventHandler.CreateRemote(const MachineName: string): _nfeCancelamentoNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeCancelamentoNFCompletedEventHandler) as _nfeCancelamentoNFCompletedEventHandler;
end;

class function ConfeCancelamentoNFCompletedEventArgs.Create: _nfeCancelamentoNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeCancelamentoNFCompletedEventArgs) as _nfeCancelamentoNFCompletedEventArgs;
end;

class function ConfeCancelamentoNFCompletedEventArgs.CreateRemote(const MachineName: string): _nfeCancelamentoNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeCancelamentoNFCompletedEventArgs) as _nfeCancelamentoNFCompletedEventArgs;
end;

class function CoNfeCancelamento2.Create: _NfeCancelamento2;
begin
  Result := CreateComObject(CLASS_NfeCancelamento2) as _NfeCancelamento2;
end;

class function CoNfeCancelamento2.CreateRemote(const MachineName: string): _NfeCancelamento2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeCancelamento2) as _NfeCancelamento2;
end;

class function CoNFe_Util_2G_NfeCancelamento2_nfeCabecMsg.Create: _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_NfeCancelamento2_nfeCabecMsg) as _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_NfeCancelamento2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_NfeCancelamento2_nfeCabecMsg) as _NFe_Util_2G_NfeCancelamento2_nfeCabecMsg;
end;

class function ConfeCancelamentoNF2CompletedEventHandler.Create: _nfeCancelamentoNF2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeCancelamentoNF2CompletedEventHandler) as _nfeCancelamentoNF2CompletedEventHandler;
end;

class function ConfeCancelamentoNF2CompletedEventHandler.CreateRemote(const MachineName: string): _nfeCancelamentoNF2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeCancelamentoNF2CompletedEventHandler) as _nfeCancelamentoNF2CompletedEventHandler;
end;

class function ConfeCancelamentoNF2CompletedEventArgs.Create: _nfeCancelamentoNF2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeCancelamentoNF2CompletedEventArgs) as _nfeCancelamentoNF2CompletedEventArgs;
end;

class function ConfeCancelamentoNF2CompletedEventArgs.CreateRemote(const MachineName: string): _nfeCancelamentoNF2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeCancelamentoNF2CompletedEventArgs) as _nfeCancelamentoNF2CompletedEventArgs;
end;

class function CoNfeDownloadNF.Create: _NfeDownloadNF;
begin
  Result := CreateComObject(CLASS_NfeDownloadNF) as _NfeDownloadNF;
end;

class function CoNfeDownloadNF.CreateRemote(const MachineName: string): _NfeDownloadNF;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeDownloadNF) as _NfeDownloadNF;
end;

class function CoNFe_Util_2G_nfeDownload_nfeCabecMsg.Create: _NFe_Util_2G_nfeDownload_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfeDownload_nfeCabecMsg) as _NFe_Util_2G_nfeDownload_nfeCabecMsg;
end;

class function CoNFe_Util_2G_nfeDownload_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_nfeDownload_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfeDownload_nfeCabecMsg) as _NFe_Util_2G_nfeDownload_nfeCabecMsg;
end;

class function ConfeDownloadNFCompletedEventHandler.Create: _nfeDownloadNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeDownloadNFCompletedEventHandler) as _nfeDownloadNFCompletedEventHandler;
end;

class function ConfeDownloadNFCompletedEventHandler.CreateRemote(const MachineName: string): _nfeDownloadNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeDownloadNFCompletedEventHandler) as _nfeDownloadNFCompletedEventHandler;
end;

class function ConfeDownloadNFCompletedEventArgs.Create: _nfeDownloadNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeDownloadNFCompletedEventArgs) as _nfeDownloadNFCompletedEventArgs;
end;

class function ConfeDownloadNFCompletedEventArgs.CreateRemote(const MachineName: string): _nfeDownloadNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeDownloadNFCompletedEventArgs) as _nfeDownloadNFCompletedEventArgs;
end;

class function CoNFeDistribuicaoDFe.Create: _NFeDistribuicaoDFe;
begin
  Result := CreateComObject(CLASS_NFeDistribuicaoDFe) as _NFeDistribuicaoDFe;
end;

class function CoNFeDistribuicaoDFe.CreateRemote(const MachineName: string): _NFeDistribuicaoDFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFeDistribuicaoDFe) as _NFeDistribuicaoDFe;
end;

class function ConfeDistDFeInteresseCompletedEventHandler.Create: _nfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_nfeDistDFeInteresseCompletedEventHandler) as _nfeDistDFeInteresseCompletedEventHandler;
end;

class function ConfeDistDFeInteresseCompletedEventHandler.CreateRemote(const MachineName: string): _nfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeDistDFeInteresseCompletedEventHandler) as _nfeDistDFeInteresseCompletedEventHandler;
end;

class function ConfeDistDFeInteresseCompletedEventArgs.Create: _nfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_nfeDistDFeInteresseCompletedEventArgs) as _nfeDistDFeInteresseCompletedEventArgs;
end;

class function ConfeDistDFeInteresseCompletedEventArgs.CreateRemote(const MachineName: string): _nfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_nfeDistDFeInteresseCompletedEventArgs) as _nfeDistDFeInteresseCompletedEventArgs;
end;

class function CoNfeConsulta4.Create: _NfeConsulta4;
begin
  Result := CreateComObject(CLASS_NfeConsulta4) as _NfeConsulta4;
end;

class function CoNfeConsulta4.CreateRemote(const MachineName: string): _NfeConsulta4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeConsulta4) as _NfeConsulta4;
end;

class function CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler.Create: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler) as _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler) as _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs.Create: _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs) as _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs) as _NFe_Util_2G_nfe4_ConsultaNF_nfeConsultaNFCompletedEventArgs;
end;

class function CoNfeStatusServico4.Create: _NfeStatusServico4;
begin
  Result := CreateComObject(CLASS_NfeStatusServico4) as _NfeStatusServico4;
end;

class function CoNfeStatusServico4.CreateRemote(const MachineName: string): _NfeStatusServico4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NfeStatusServico4) as _NfeStatusServico4;
end;

class function CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler.Create: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler) as _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler) as _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventHandler;
end;

class function CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs.Create: _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs) as _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
end;

class function CoNFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs) as _NFe_Util_2G_nfe4_StatusServico_nfeStatusServicoNFCompletedEventArgs;
end;

class function CoRegistroSaida2.Create: _RegistroSaida2;
begin
  Result := CreateComObject(CLASS_RegistroSaida2) as _RegistroSaida2;
end;

class function CoRegistroSaida2.CreateRemote(const MachineName: string): _RegistroSaida2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistroSaida2) as _RegistroSaida2;
end;

class function CoNFe_Util_2G_MGregSai_nfeCabecMsg.Create: _NFe_Util_2G_MGregSai_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_MGregSai_nfeCabecMsg) as _NFe_Util_2G_MGregSai_nfeCabecMsg;
end;

class function CoNFe_Util_2G_MGregSai_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_MGregSai_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_MGregSai_nfeCabecMsg) as _NFe_Util_2G_MGregSai_nfeCabecMsg;
end;

class function CoregistrarSaidaCompletedEventHandler.Create: _registrarSaidaCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_registrarSaidaCompletedEventHandler) as _registrarSaidaCompletedEventHandler;
end;

class function CoregistrarSaidaCompletedEventHandler.CreateRemote(const MachineName: string): _registrarSaidaCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_registrarSaidaCompletedEventHandler) as _registrarSaidaCompletedEventHandler;
end;

class function CoregistrarSaidaCompletedEventArgs.Create: _registrarSaidaCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_registrarSaidaCompletedEventArgs) as _registrarSaidaCompletedEventArgs;
end;

class function CoregistrarSaidaCompletedEventArgs.CreateRemote(const MachineName: string): _registrarSaidaCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_registrarSaidaCompletedEventArgs) as _registrarSaidaCompletedEventArgs;
end;

class function CoCteConsulta.Create: _CteConsulta;
begin
  Result := CreateComObject(CLASS_CteConsulta) as _CteConsulta;
end;

class function CoCteConsulta.CreateRemote(const MachineName: string): _CteConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteConsulta) as _CteConsulta;
end;

class function CoNFe_Util_2G_cteConsulta_cteCabecMsg.Create: _NFe_Util_2G_cteConsulta_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cteConsulta_cteCabecMsg) as _NFe_Util_2G_cteConsulta_cteCabecMsg;
end;

class function CoNFe_Util_2G_cteConsulta_cteCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_cteConsulta_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cteConsulta_cteCabecMsg) as _NFe_Util_2G_cteConsulta_cteCabecMsg;
end;

class function CocteConsultaCTCompletedEventHandler.Create: _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

class function CocteConsultaCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

class function CocteConsultaCTCompletedEventArgs.Create: _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

class function CocteConsultaCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro.Create: _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro) as _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro) as _NFe_Util_2G_cadConsCadastroDF_CadConsultaCadastro;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler.Create: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs.Create: _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
end;

class function CoNFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsCadastroDF_consultaCadastroCompletedEventArgs;
end;

class function CoCleCadastro.Create: _CleCadastro;
begin
  Result := CreateComObject(CLASS_CleCadastro) as _CleCadastro;
end;

class function CoCleCadastro.CreateRemote(const MachineName: string): _CleCadastro;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CleCadastro) as _CleCadastro;
end;

class function CocleCadastroLote.Create: _cleCadastroLote;
begin
  Result := CreateComObject(CLASS_cleCadastroLote) as _cleCadastroLote;
end;

class function CocleCadastroLote.CreateRemote(const MachineName: string): _cleCadastroLote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLote) as _cleCadastroLote;
end;

class function CocleCadastroLoteResponse.Create: _cleCadastroLoteResponse;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

class function CocleCadastroLoteResponse.CreateRemote(const MachineName: string): _cleCadastroLoteResponse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

class function CocleCadastroLoteCompletedEventHandler.Create: _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

class function CocleCadastroLoteCompletedEventHandler.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

class function CocleCadastroLoteCompletedEventArgs.Create: _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

class function CocleCadastroLoteCompletedEventArgs.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

class function CoCancRegSaida2.Create: _CancRegSaida2;
begin
  Result := CreateComObject(CLASS_CancRegSaida2) as _CancRegSaida2;
end;

class function CoCancRegSaida2.CreateRemote(const MachineName: string): _CancRegSaida2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CancRegSaida2) as _CancRegSaida2;
end;

class function CoNFe_Util_2G_MGcancRegSai_nfeCabecMsg.Create: _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_MGcancRegSai_nfeCabecMsg) as _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
end;

class function CoNFe_Util_2G_MGcancRegSai_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_MGcancRegSai_nfeCabecMsg) as _NFe_Util_2G_MGcancRegSai_nfeCabecMsg;
end;

class function CocancRegSaida2CompletedEventHandler.Create: _cancRegSaida2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cancRegSaida2CompletedEventHandler) as _cancRegSaida2CompletedEventHandler;
end;

class function CocancRegSaida2CompletedEventHandler.CreateRemote(const MachineName: string): _cancRegSaida2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cancRegSaida2CompletedEventHandler) as _cancRegSaida2CompletedEventHandler;
end;

class function CocancRegSaida2CompletedEventArgs.Create: _cancRegSaida2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cancRegSaida2CompletedEventArgs) as _cancRegSaida2CompletedEventArgs;
end;

class function CocancRegSaida2CompletedEventArgs.CreateRemote(const MachineName: string): _cancRegSaida2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cancRegSaida2CompletedEventArgs) as _cancRegSaida2CompletedEventArgs;
end;

class function CoCteRecepcaoEvento.Create: _CteRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

class function CoCteRecepcaoEvento.CreateRemote(const MachineName: string): _CteRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

class function CoNFe_Util_2G_cteRecepcaoEvento_cteCabecMsg.Create: _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg) as _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
end;

class function CoNFe_Util_2G_cteRecepcaoEvento_cteCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg) as _NFe_Util_2G_cteRecepcaoEvento_cteCabecMsg;
end;

class function CocteRecepcaoEventoCompletedEventHandler.Create: _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

class function CocteRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

class function CocteRecepcaoEventoCompletedEventArgs.Create: _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

class function CocteRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

class function CoccgConsGTIN.Create: _ccgConsGTIN;
begin
  Result := CreateComObject(CLASS_ccgConsGTIN) as _ccgConsGTIN;
end;

class function CoccgConsGTIN.CreateRemote(const MachineName: string): _ccgConsGTIN;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ccgConsGTIN) as _ccgConsGTIN;
end;

class function CoCallccgConsGTINCompletedEventHandler.Create: _CallccgConsGTINCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_CallccgConsGTINCompletedEventHandler) as _CallccgConsGTINCompletedEventHandler;
end;

class function CoCallccgConsGTINCompletedEventHandler.CreateRemote(const MachineName: string): _CallccgConsGTINCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CallccgConsGTINCompletedEventHandler) as _CallccgConsGTINCompletedEventHandler;
end;

class function CoCallccgConsGTINCompletedEventArgs.Create: _CallccgConsGTINCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_CallccgConsGTINCompletedEventArgs) as _CallccgConsGTINCompletedEventArgs;
end;

class function CoCallccgConsGTINCompletedEventArgs.CreateRemote(const MachineName: string): _CallccgConsGTINCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CallccgConsGTINCompletedEventArgs) as _CallccgConsGTINCompletedEventArgs;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro.Create: _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro) as _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro) as _NFe_Util_2G_cadConsultaCadastro_CadConsultaCadastro;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler.Create: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs.Create: _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
end;

class function CoNFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsultaCadastro_consultaCadastroCompletedEventArgs;
end;

class function CoCadConsultaCadastro4.Create: _CadConsultaCadastro4;
begin
  Result := CreateComObject(CLASS_CadConsultaCadastro4) as _CadConsultaCadastro4;
end;

class function CoCadConsultaCadastro4.CreateRemote(const MachineName: string): _CadConsultaCadastro4;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CadConsultaCadastro4) as _CadConsultaCadastro4;
end;

class function CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler.Create: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler) as _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventHandler;
end;

class function CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs.Create: _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
end;

class function CoNFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs) as _NFe_Util_2G_cadConsultaCadastro4_consultaCadastroCompletedEventArgs;
end;

class function CoCadConsultaCadastro2.Create: _CadConsultaCadastro2;
begin
  Result := CreateComObject(CLASS_CadConsultaCadastro2) as _CadConsultaCadastro2;
end;

class function CoCadConsultaCadastro2.CreateRemote(const MachineName: string): _CadConsultaCadastro2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CadConsultaCadastro2) as _CadConsultaCadastro2;
end;

class function CoNFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg.Create: _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
begin
  Result := CreateComObject(CLASS_NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg) as _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
end;

class function CoNFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg.CreateRemote(const MachineName: string): _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg) as _NFe_Util_2G_cadConsultaCadastro2_nfeCabecMsg;
end;

class function CoconsultaCadastro2CompletedEventHandler.Create: _consultaCadastro2CompletedEventHandler;
begin
  Result := CreateComObject(CLASS_consultaCadastro2CompletedEventHandler) as _consultaCadastro2CompletedEventHandler;
end;

class function CoconsultaCadastro2CompletedEventHandler.CreateRemote(const MachineName: string): _consultaCadastro2CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_consultaCadastro2CompletedEventHandler) as _consultaCadastro2CompletedEventHandler;
end;

class function CoconsultaCadastro2CompletedEventArgs.Create: _consultaCadastro2CompletedEventArgs;
begin
  Result := CreateComObject(CLASS_consultaCadastro2CompletedEventArgs) as _consultaCadastro2CompletedEventArgs;
end;

class function CoconsultaCadastro2CompletedEventArgs.CreateRemote(const MachineName: string): _consultaCadastro2CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_consultaCadastro2CompletedEventArgs) as _consultaCadastro2CompletedEventArgs;
end;

end.

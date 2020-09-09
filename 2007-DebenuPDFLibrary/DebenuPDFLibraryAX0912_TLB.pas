unit DebenuPDFLibraryAX0912_TLB;

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
// File generated on 05/02/2018 06:41:31 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Debenu\PDF Library\Demo\DebenuPDFLibraryAX0912.dll (1)
// LIBID: {2B6C839E-7F99-4CB6-B04D-240D3B79E7A8}
// LCID: 0
// Helpfile: 
// HelpString: Debenu Quick PDF Library 9.12
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Error creating palette bitmap of (TPDFLibrary) : Server C:\PROGRA~2\Debenu\PDFLIB~1\Demo\DEBENU~1.DLL contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DebenuPDFLibraryAX0912MajorVersion = 9;
  DebenuPDFLibraryAX0912MinorVersion = 12;

  LIBID_DebenuPDFLibraryAX0912: TGUID = '{2B6C839E-7F99-4CB6-B04D-240D3B79E7A8}';

  IID_IPDFLibrary: TGUID = '{A189E5D6-325F-42DC-B9DC-64768F206020}';
  CLASS_PDFLibrary: TGUID = '{BF2F08F8-E5DE-4C02-B9A1-C26AC3FD27C7}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPDFLibrary = interface;
  IPDFLibraryDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PDFLibrary = IPDFLibrary;


// *********************************************************************//
// Interface: IPDFLibrary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A189E5D6-325F-42DC-B9DC-64768F206020}
// *********************************************************************//
  IPDFLibrary = interface(IDispatch)
    ['{A189E5D6-325F-42DC-B9DC-64768F206020}']
    function AddArcToPath(CenterX: Double; CenterY: Double; TotalAngle: Double): Integer; safecall;
    function AddCJKFont(CJKFontID: Integer): Integer; safecall;
    function AddCurveToPath(CtAX: Double; CtAY: Double; CtBX: Double; CtBY: Double; EndX: Double; 
                            EndY: Double): Integer; safecall;
    function AddEmbeddedFile(const FileName: WideString; const MIMEType: WideString): Integer; safecall;
    function AddFileAttachment(const Title: WideString; EmbeddedFileID: Integer): Integer; safecall;
    function AddFormFieldChoiceSub(Index: Integer; const SubName: WideString; 
                                   const DisplayName: WideString): Integer; safecall;
    function AddFormFieldSub(Index: Integer; const SubName: WideString): Integer; safecall;
    function AddFormFont(FontID: Integer): Integer; safecall;
    function AddGlobalJavaScript(const PackageName: WideString; const JavaScript: WideString): Integer; safecall;
    function AddImageFromFile(const FileName: WideString; Options: Integer): Integer; safecall;
    function AddImageFromFileOffset(const FileName: WideString; Offset: Integer; 
                                    DataLength: Integer; Options: Integer): Integer; safecall;
    function AddImageFromVariant(SourceData: OleVariant; Options: Integer): Integer; safecall;
    function AddLGIDictToPage(const DictContent: WideString): Integer; safecall;
    function AddLineToPath(EndX: Double; EndY: Double): Integer; safecall;
    function AddLinkToDestination(Left: Double; Top: Double; Width: Double; Height: Double; 
                                  DestID: Integer; Options: Integer): Integer; safecall;
    function AddLinkToEmbeddedFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                   EmbeddedFileID: Integer; const Title: WideString; 
                                   const Contents: WideString; IconType: Integer; 
                                   Transpareny: Integer): Integer; safecall;
    function AddLinkToFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                           const FileName: WideString; Page: Integer; Position: Double; 
                           NewWindow: Integer; Options: Integer): Integer; safecall;
    function AddLinkToJavaScript(Left: Double; Top: Double; Width: Double; Height: Double; 
                                 const JavaScript: WideString; Options: Integer): Integer; safecall;
    function AddLinkToLocalFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                const FileName: WideString; Options: Integer): Integer; safecall;
    function AddLinkToPage(Left: Double; Top: Double; Width: Double; Height: Double; Page: Integer; 
                           Position: Double; Options: Integer): Integer; safecall;
    function AddLinkToWeb(Left: Double; Top: Double; Width: Double; Height: Double; 
                          const Link: WideString; Options: Integer): Integer; safecall;
    function AddNoteAnnotation(Left: Double; Top: Double; AnnotType: Integer; PopupLeft: Double; 
                               PopupTop: Double; PopupWidth: Double; PopupHeight: Double; 
                               const Title: WideString; const Contents: WideString; Red: Double; 
                               Green: Double; Blue: Double; Open: Integer): Integer; safecall;
    function AddOpenTypeFontFromFile(const FileName: WideString; Options: Integer): Integer; safecall;
    function AddPageLabels(Start: Integer; Style: Integer; Offset: Integer; const Prefix: WideString): Integer; safecall;
    function AddSVGAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer; safecall;
    function AddSWFAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; const Title: WideString; 
                                      Options: Integer): Integer; safecall;
    function AddSeparationColor(const ColorName: WideString; C: Double; M: Double; Y: Double; 
                                K: Double; Options: Integer): Integer; safecall;
    function AddStampAnnotation(Left: Double; Top: Double; Width: Double; Height: Double; 
                                StampType: Integer; const Title: WideString; 
                                const Contents: WideString; Red: Double; Green: Double; 
                                Blue: Double; Options: Integer): Integer; safecall;
    function AddStandardFont(StandardFontID: Integer): Integer; safecall;
    function AddSubsettedFont(const FontName: WideString; CharsetIndex: Integer; 
                              const SubsetChars: WideString): Integer; safecall;
    function AddTextMarkupAnnotation(MarkupType: Integer; Left: Double; Top: Double; Width: Double; 
                                     Height: Double): Integer; safecall;
    function AddToFileList(const ListName: WideString; const FileName: WideString): Integer; safecall;
    function AddTrueTypeFont(const FontName: WideString; Embed: Integer): Integer; safecall;
    function AddTrueTypeFontFromFile(const FileName: WideString): Integer; safecall;
    function AddTrueTypeSubsettedFont(const FontName: WideString; const SubsetChars: WideString; 
                                      Options: Integer): Integer; safecall;
    function AddType1Font(const FileName: WideString): Integer; safecall;
    function AddU3DAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer; safecall;
    function AnalyseFile(const InputFileName: WideString; const Password: WideString): Integer; safecall;
    function AnnotationCount: Integer; safecall;
    function AppendSpace(RelativeSpace: Double): Integer; safecall;
    function AppendTableColumns(TableID: Integer; NewColumnCount: Integer): Integer; safecall;
    function AppendTableRows(TableID: Integer; NewRowCount: Integer): Integer; safecall;
    function AppendText(const Text: WideString): Integer; safecall;
    function ApplyStyle(const StyleName: WideString): Integer; safecall;
    function AttachAnnotToForm(Index: Integer): Integer; safecall;
    function BalanceContentStream: Integer; safecall;
    function BeginPageUpdate: Integer; safecall;
    function CapturePage(Page: Integer): Integer; safecall;
    function CapturePageEx(Page: Integer; Options: Integer): Integer; safecall;
    function CharWidth(CharCode: Integer): Integer; safecall;
    function CheckFileCompliance(const InputFileName: WideString; const Password: WideString; 
                                 ComplianceTest: Integer; Options: Integer): Integer; safecall;
    function CheckObjects: Integer; safecall;
    function CheckPageAnnots: Integer; safecall;
    function ClearFileList(const ListName: WideString): Integer; safecall;
    function ClearImage(ImageID: Integer): Integer; safecall;
    function ClearPageLabels: Integer; safecall;
    function ClearTextFormatting: Integer; safecall;
    function CloneOutlineAction(OutlineID: Integer): Integer; safecall;
    function ClonePages(StartPage: Integer; EndPage: Integer; RepeatCount: Integer): Integer; safecall;
    function CloseOutline(OutlineID: Integer): Integer; safecall;
    function ClosePath: Integer; safecall;
    function CombineContentStreams: Integer; safecall;
    function CompareOutlines(FirstOutlineID: Integer; SecondOutlineID: Integer): Integer; safecall;
    function CompressContent: Integer; safecall;
    function CompressFonts(Compress: Integer): Integer; safecall;
    function CompressImages(Compress: Integer): Integer; safecall;
    function CompressPage: Integer; safecall;
    function ContentStreamCount: Integer; safecall;
    function ContentStreamSafe: Integer; safecall;
    function CopyPageRanges(DocumentID: Integer; const RangeList: WideString): Integer; safecall;
    function CopyPageRangesEx(DocumentID: Integer; const RangeList: WideString; Options: Integer): Integer; safecall;
    function CreateNewObject: Integer; safecall;
    function CreateTable(RowCount: Integer; ColumnCount: Integer): Integer; safecall;
    function DAAppendFile(FileHandle: Integer): Integer; safecall;
    function DACapturePage(FileHandle: Integer; PageRef: Integer): Integer; safecall;
    function DACapturePageEx(FileHandle: Integer; PageRef: Integer; Options: Integer): Integer; safecall;
    function DACloseFile(FileHandle: Integer): Integer; safecall;
    function DADrawCapturedPage(FileHandle: Integer; DACaptureID: Integer; DestPageRef: Integer; 
                                PntLeft: Double; PntBottom: Double; PntWidth: Double; 
                                PntHeight: Double): Integer; safecall;
    function DADrawRotatedCapturedPage(FileHandle: Integer; DACaptureID: Integer; 
                                       DestPageRef: Integer; PntLeft: Double; PntBottom: Double; 
                                       PntWidth: Double; PntHeight: Double; Angle: Double): Integer; safecall;
    function DAEmbedFileStreams(FileHandle: Integer; const RootPath: WideString): Integer; safecall;
    function DAExtractPageText(FileHandle: Integer; PageRef: Integer; Options: Integer): WideString; safecall;
    function DAFindPage(FileHandle: Integer; Page: Integer): Integer; safecall;
    function DAGetAnnotationCount(FileHandle: Integer; PageRef: Integer): Integer; safecall;
    function DAGetFormFieldCount(FileHandle: Integer): Integer; safecall;
    function DAGetFormFieldTitle(FileHandle: Integer; FieldIndex: Integer): WideString; safecall;
    function DAGetFormFieldValue(FileHandle: Integer; FieldIndex: Integer): WideString; safecall;
    function DAGetImageDataToVariant(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer): OleVariant; safecall;
    function DAGetImageDblProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Double; safecall;
    function DAGetImageIntProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Integer; safecall;
    function DAGetImageListCount(FileHandle: Integer; ImageListID: Integer): Integer; safecall;
    function DAGetInformation(FileHandle: Integer; const Key: WideString): WideString; safecall;
    function DAGetObjectCount(FileHandle: Integer): Integer; safecall;
    function DAGetObjectToVariant(FileHandle: Integer; ObjectNumber: Integer): OleVariant; safecall;
    function DAGetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; 
                          Dimension: Integer): Double; safecall;
    function DAGetPageContentToVariant(FileHandle: Integer; PageRef: Integer): OleVariant; safecall;
    function DAGetPageCount(FileHandle: Integer): Integer; safecall;
    function DAGetPageHeight(FileHandle: Integer; PageRef: Integer): Double; safecall;
    function DAGetPageImageList(FileHandle: Integer; PageRef: Integer): Integer; safecall;
    function DAGetPageWidth(FileHandle: Integer; PageRef: Integer): Double; safecall;
    function DAHasPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer): Integer; safecall;
    function DAHidePage(FileHandle: Integer; PageRef: Integer): Integer; safecall;
    function DAMovePage(FileHandle: Integer; PageRef: Integer; TargetPageRef: Integer; 
                        Options: Integer): Integer; safecall;
    function DANewPage(FileHandle: Integer): Integer; safecall;
    function DANewPages(FileHandle: Integer; PageCount: Integer): Integer; safecall;
    function DAOpenFile(const InputFileName: WideString; const Password: WideString): Integer; safecall;
    function DAOpenFileReadOnly(const InputFileName: WideString; const Password: WideString): Integer; safecall;
    function DAPageRotation(FileHandle: Integer; PageRef: Integer): Integer; safecall;
    function DAReleaseImageList(FileHandle: Integer; ImageListID: Integer): Integer; safecall;
    function DARemoveUsageRights(FileHandle: Integer): Integer; safecall;
    function DARenderPageToDC(FileHandle: Integer; PageRef: Integer; DPI: Integer; DC: Integer): Integer; safecall;
    function DARenderPageToFile(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                DPI: Integer; const FileName: WideString): Integer; safecall;
    function DARenderPageToVariant(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                   DPI: Integer): OleVariant; safecall;
    function DARotatePage(FileHandle: Integer; PageRef: Integer; Angle: Integer; Options: Integer): Integer; safecall;
    function DASaveAsFile(FileHandle: Integer; const OutputFileName: WideString): Integer; safecall;
    function DASaveImageDataToFile(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   const ImageFileName: WideString): Integer; safecall;
    function DASetInformation(FileHandle: Integer; const Key: WideString; const NewValue: WideString): Integer; safecall;
    function DASetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; X1: Double; 
                          Y1: Double; X2: Double; Y2: Double): Integer; safecall;
    function DASetPageSize(FileHandle: Integer; PageRef: Integer; PntWidth: Double; 
                           PntHeight: Double): Integer; safecall;
    function DASetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function DASetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer; safecall;
    function DASetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer; safecall;
    function DASetTextExtractionWordGap(NewWordGap: Double): Integer; safecall;
    function Decrypt: Integer; safecall;
    function DecryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Password: WideString): Integer; safecall;
    function DeleteAnalysis(AnalysisID: Integer): Integer; safecall;
    function DeleteAnnotation(Index: Integer): Integer; safecall;
    function DeleteContentStream: Integer; safecall;
    function DeleteFormField(Index: Integer): Integer; safecall;
    function DeleteOptionalContentGroup(OptionalContentGroupID: Integer): Integer; safecall;
    function DeletePageLGIDict(DictIndex: Integer): Integer; safecall;
    function DeletePages(StartPage: Integer; PageCount: Integer): Integer; safecall;
    function DocJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer; safecall;
    function DocumentCount: Integer; safecall;
    function DrawArc(XPos: Double; YPos: Double; Radius: Double; StartAngle: Double; 
                     EndAngle: Double; Pie: Integer; DrawOptions: Integer): Integer; safecall;
    function DrawBarcode(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Barcode: Integer; Options: Integer): Integer; safecall;
    function DrawBox(Left: Double; Top: Double; Width: Double; Height: Double; DrawOptions: Integer): Integer; safecall;
    function DrawCapturedPage(CaptureID: Integer; Left: Double; Top: Double; Width: Double; 
                              Height: Double): Integer; safecall;
    function DrawCircle(XPos: Double; YPos: Double; Radius: Double; DrawOptions: Integer): Integer; safecall;
    function DrawDataMatrixSymbol(Left: Double; Top: Double; ModuleSize: Double; 
                                  const Text: WideString; Encoding: Integer; SymbolSize: Integer; 
                                  Options: Integer): Integer; safecall;
    function DrawEllipse(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                         DrawOptions: Integer): Integer; safecall;
    function DrawEllipticArc(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                             StartAngle: Double; EndAngle: Double; Pie: Integer; 
                             DrawOptions: Integer): Integer; safecall;
    function DrawHTMLText(Left: Double; Top: Double; Width: Double; const HTMLText: WideString): Integer; safecall;
    function DrawHTMLTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                             const HTMLText: WideString): WideString; safecall;
    function DrawImage(Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function DrawImageMatrix(M11: Double; M12: Double; M21: Double; M22: Double; MDX: Double; 
                             MDY: Double): Integer; safecall;
    function DrawIntelligentMailBarcode(Left: Double; Top: Double; BarWidth: Double; 
                                        FullBarHeight: Double; TrackerHeight: Double; 
                                        SpaceWidth: Double; const BarcodeData: WideString; 
                                        Options: Integer): Integer; safecall;
    function DrawLine(StartX: Double; StartY: Double; EndX: Double; EndY: Double): Integer; safecall;
    function DrawMultiLineText(XPos: Double; YPos: Double; const Delimiter: WideString; 
                               const Text: WideString): Integer; safecall;
    function DrawPDF417Symbol(Left: Double; Top: Double; const Text: WideString; Options: Integer): Integer; safecall;
    function DrawPath(PathOptions: Integer): Integer; safecall;
    function DrawPathEvenOdd(PathOptions: Integer): Integer; safecall;
    function DrawPostScriptXObject(PSRef: Integer): Integer; safecall;
    function DrawRotatedBox(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                            Angle: Double; DrawOptions: Integer): Integer; safecall;
    function DrawRotatedCapturedPage(CaptureID: Integer; Left: Double; Bottom: Double; 
                                     Width: Double; Height: Double; Angle: Double): Integer; safecall;
    function DrawRotatedImage(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                              Angle: Double): Integer; safecall;
    function DrawRotatedMultiLineText(XPos: Double; YPos: Double; Angle: Double; 
                                      const Delimiter: WideString; const Text: WideString): Integer; safecall;
    function DrawRotatedText(XPos: Double; YPos: Double; Angle: Double; const Text: WideString): Integer; safecall;
    function DrawRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                Angle: Double; const Text: WideString; Options: Integer): Integer; safecall;
    function DrawRoundedBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                            Radius: Double; DrawOptions: Integer): Integer; safecall;
    function DrawScaledImage(Left: Double; Top: Double; Scale: Double): Integer; safecall;
    function DrawSpacedText(XPos: Double; YPos: Double; Spacing: Double; const Text: WideString): Integer; safecall;
    function DrawTableRows(TableID: Integer; Left: Double; Top: Double; Height: Double; 
                           FirstRow: Integer; LastRow: Integer): Double; safecall;
    function DrawText(XPos: Double; YPos: Double; const Text: WideString): Integer; safecall;
    function DrawTextArc(XPos: Double; YPos: Double; Radius: Double; Angle: Double; 
                         const Text: WideString; DrawOptions: Integer): Integer; safecall;
    function DrawTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Options: Integer): Integer; safecall;
    function DrawWrappedText(XPos: Double; YPos: Double; Width: Double; const Text: WideString): Integer; safecall;
    function EditableContentStream: Integer; safecall;
    function EmbedFile(const Title: WideString; const FileName: WideString; 
                       const MIMEType: WideString): Integer; safecall;
    function EmbeddedFileCount: Integer; safecall;
    function EncapsulateContentStream: Integer; safecall;
    function EncodePermissions(CanPrint: Integer; CanCopy: Integer; CanChange: Integer; 
                               CanAddNotes: Integer; CanFillFields: Integer; 
                               CanCopyAccess: Integer; CanAssemble: Integer; CanPrintFull: Integer): Integer; safecall;
    function EncodeStringFromVariant(NumberList: OleVariant; const Encoding: WideString; 
                                     UnmatchedAction: Integer): WideString; safecall;
    function Encrypt(const Owner: WideString; const User: WideString; Strength: Integer; 
                     Permissions: Integer): Integer; safecall;
    function EncryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Owner: WideString; const User: WideString; Strength: Integer; 
                         Permissions: Integer): Integer; safecall;
    function EncryptWithFingerprint(const Fingerprint: WideString): Integer; safecall;
    function EncryptionAlgorithm: Integer; safecall;
    function EncryptionStatus: Integer; safecall;
    function EncryptionStrength: Integer; safecall;
    function EndPageUpdate: Integer; safecall;
    function ExtractFilePageContentToVariant(const InputFileName: WideString; 
                                             const Password: WideString; Page: Integer): OleVariant; safecall;
    function ExtractFilePageText(const InputFileName: WideString; const Password: WideString; 
                                 Page: Integer; Options: Integer): WideString; safecall;
    function ExtractFilePages(const InputFileName: WideString; const Password: WideString; 
                              const OutputFileName: WideString; const RangeList: WideString): Integer; safecall;
    function ExtractPageRanges(const RangeList: WideString): Integer; safecall;
    function ExtractPages(StartPage: Integer; PageCount: Integer): Integer; safecall;
    function FileListCount(const ListName: WideString): Integer; safecall;
    function FileListItem(const ListName: WideString; Index: Integer): WideString; safecall;
    function FindFonts: Integer; safecall;
    function FindFormFieldByTitle(const Title: WideString): Integer; safecall;
    function FindImages: Integer; safecall;
    function FitImage(Left: Double; Top: Double; Width: Double; Height: Double; HAlign: Integer; 
                      VAlign: Integer; Rotate: Integer): Integer; safecall;
    function FitRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                               Angle: Double; const Text: WideString; Options: Integer): Integer; safecall;
    function FitTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                        const Text: WideString; Options: Integer): Integer; safecall;
    function FlattenFormField(Index: Integer): Integer; safecall;
    function FontCount: Integer; safecall;
    function FontFamily: WideString; safecall;
    function FontHasKerning: Integer; safecall;
    function FontName: WideString; safecall;
    function FontReference: WideString; safecall;
    function FontSize: Integer; safecall;
    function FontType: Integer; safecall;
    function FormFieldCount: Integer; safecall;
    function FormFieldHasParent(Index: Integer): Integer; safecall;
    function FormFieldJavaScriptAction(Index: Integer; const ActionType: WideString; 
                                       const JavaScript: WideString): Integer; safecall;
    function FormFieldWebLinkAction(Index: Integer; const ActionType: WideString; 
                                    const Link: WideString): Integer; safecall;
    function GetActionDest(ActionID: Integer): Integer; safecall;
    function GetActionType(ActionID: Integer): WideString; safecall;
    function GetActionURL(ActionID: Integer): WideString; safecall;
    function GetAnalysisInfo(AnalysisID: Integer; AnalysisItem: Integer): WideString; safecall;
    function GetAnnotActionID(Index: Integer): Integer; safecall;
    function GetAnnotDblProperty(Index: Integer; Tag: Integer): Double; safecall;
    function GetAnnotDest(Index: Integer): Integer; safecall;
    function GetAnnotIntProperty(Index: Integer; Tag: Integer): Integer; safecall;
    function GetAnnotQuadCount(Index: Integer): Integer; safecall;
    function GetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; PointNumber: Integer): Double; safecall;
    function GetAnnotStrProperty(Index: Integer; Tag: Integer): WideString; safecall;
    function GetBarcodeWidth(NominalWidth: Double; const Text: WideString; Barcode: Integer): Double; safecall;
    function GetBaseURL: WideString; safecall;
    function GetCSDictEPSG(CSDictID: Integer): Integer; safecall;
    function GetCSDictType(CSDictID: Integer): Integer; safecall;
    function GetCSDictWKT(CSDictID: Integer): WideString; safecall;
    function GetCanvasDC(CanvasWidth: Integer; CanvasHeight: Integer): Integer; safecall;
    function GetCatalogInformation(const Key: WideString): WideString; safecall;
    function GetContentStreamToVariant: OleVariant; safecall;
    function GetCustomInformation(const Key: WideString): WideString; safecall;
    function GetCustomKeys(Location: Integer): WideString; safecall;
    function GetDefaultPrinterName: WideString; safecall;
    function GetDestName(DestID: Integer): WideString; safecall;
    function GetDestPage(DestID: Integer): Integer; safecall;
    function GetDestType(DestID: Integer): Integer; safecall;
    function GetDestValue(DestID: Integer; ValueKey: Integer): Double; safecall;
    function GetDocJavaScript(const ActionType: WideString): WideString; safecall;
    function GetDocumentFileName: WideString; safecall;
    function GetDocumentFileSize: Integer; safecall;
    function GetDocumentID(Index: Integer): Integer; safecall;
    function GetDocumentIdentifier(Part: Integer; Options: Integer): WideString; safecall;
    function GetDocumentMetadata: WideString; safecall;
    function GetDocumentRepaired: Integer; safecall;
    function GetDocumentResourceList: WideString; safecall;
    function GetEmbeddedFileContentToFile(Index: Integer; const FileName: WideString): Integer; safecall;
    function GetEmbeddedFileContentToVariant(Index: Integer): OleVariant; safecall;
    function GetEmbeddedFileID(Index: Integer): Integer; safecall;
    function GetEmbeddedFileIntProperty(Index: Integer; Tag: Integer): Integer; safecall;
    function GetEmbeddedFileStrProperty(Index: Integer; Tag: Integer): WideString; safecall;
    function GetEncryptionFingerprint: WideString; safecall;
    function GetFileMetadata(const InputFileName: WideString; const Password: WideString): WideString; safecall;
    function GetFirstChildOutline(OutlineID: Integer): Integer; safecall;
    function GetFirstOutline: Integer; safecall;
    function GetFontEncoding: Integer; safecall;
    function GetFontID(Index: Integer): Integer; safecall;
    function GetFontObjectNumber: Integer; safecall;
    function GetFormFieldActionID(Index: Integer; const TriggerEvent: WideString): Integer; safecall;
    function GetFormFieldAlignment(Index: Integer): Integer; safecall;
    function GetFormFieldAnnotFlags(Index: Integer): Integer; safecall;
    function GetFormFieldBackgroundColor(Index: Integer; ColorComponent: Integer): Double; safecall;
    function GetFormFieldBackgroundColorType(Index: Integer): Integer; safecall;
    function GetFormFieldBorderColor(Index: Integer; ColorComponent: Integer): Double; safecall;
    function GetFormFieldBorderColorType(Index: Integer): Integer; safecall;
    function GetFormFieldBorderProperty(Index: Integer; PropKey: Integer): Double; safecall;
    function GetFormFieldBorderStyle(Index: Integer): Integer; safecall;
    function GetFormFieldBound(Index: Integer; Edge: Integer): Double; safecall;
    function GetFormFieldCaption(Index: Integer): WideString; safecall;
    function GetFormFieldChildTitle(Index: Integer): WideString; safecall;
    function GetFormFieldChoiceType(Index: Integer): Integer; safecall;
    function GetFormFieldColor(Index: Integer; ColorComponent: Integer): Double; safecall;
    function GetFormFieldComb(Index: Integer): Integer; safecall;
    function GetFormFieldDefaultValue(Index: Integer): WideString; safecall;
    function GetFormFieldDescription(Index: Integer): WideString; safecall;
    function GetFormFieldFlags(Index: Integer): Integer; safecall;
    function GetFormFieldFontName(Index: Integer): WideString; safecall;
    function GetFormFieldJavaScript(Index: Integer; const ActionType: WideString): WideString; safecall;
    function GetFormFieldKidCount(Index: Integer): Integer; safecall;
    function GetFormFieldMaxLen(Index: Integer): Integer; safecall;
    function GetFormFieldNoExport(Index: Integer): Integer; safecall;
    function GetFormFieldPage(Index: Integer): Integer; safecall;
    function GetFormFieldPrintable(Index: Integer): Integer; safecall;
    function GetFormFieldReadOnly(Index: Integer): Integer; safecall;
    function GetFormFieldRequired(Index: Integer): Integer; safecall;
    function GetFormFieldRotation(Index: Integer): Integer; safecall;
    function GetFormFieldSubCount(Index: Integer): Integer; safecall;
    function GetFormFieldSubDisplayName(Index: Integer; SubIndex: Integer): WideString; safecall;
    function GetFormFieldSubName(Index: Integer; SubIndex: Integer): WideString; safecall;
    function GetFormFieldSubTempIndex(Index: Integer; SubIndex: Integer): Integer; safecall;
    function GetFormFieldTabOrder(Index: Integer): Integer; safecall;
    function GetFormFieldTextFlags(Index: Integer; ValueKey: Integer): Integer; safecall;
    function GetFormFieldTextSize(Index: Integer): Double; safecall;
    function GetFormFieldTitle(Index: Integer): WideString; safecall;
    function GetFormFieldType(Index: Integer): Integer; safecall;
    function GetFormFieldValue(Index: Integer): WideString; safecall;
    function GetFormFieldValueByTitle(const Title: WideString): WideString; safecall;
    function GetFormFieldVisible(Index: Integer): Integer; safecall;
    function GetFormFieldWebLink(Index: Integer; const ActionType: WideString): WideString; safecall;
    function GetFormFontCount: Integer; safecall;
    function GetFormFontName(FontIndex: Integer): WideString; safecall;
    function GetGlobalJavaScript(const PackageName: WideString): WideString; safecall;
    function GetHTMLTextHeight(Width: Double; const HTMLText: WideString): Double; safecall;
    function GetHTMLTextLineCount(Width: Double; const HTMLText: WideString): Integer; safecall;
    function GetHTMLTextWidth(MaxWidth: Double; const HTMLText: WideString): Double; safecall;
    function GetImageID(Index: Integer): Integer; safecall;
    function GetImageListCount(ImageListID: Integer): Integer; safecall;
    function GetImageListItemDataToVariant(ImageListID: Integer; ImageIndex: Integer; 
                                           Options: Integer): OleVariant; safecall;
    function GetImageListItemDblProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Double; safecall;
    function GetImageListItemIntProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Integer; safecall;
    function GetImageMeasureDict: Integer; safecall;
    function GetImagePageCount(const FileName: WideString): Integer; safecall;
    function GetImagePageCountFromString(const Source: WideString): Integer; safecall;
    function GetImagePtDataDict: Integer; safecall;
    function GetInformation(Key: Integer): WideString; safecall;
    function GetInstalledFontsByCharset(CharsetIndex: Integer; Options: Integer): WideString; safecall;
    function GetInstalledFontsByCodePage(CodePage: Integer; Options: Integer): WideString; safecall;
    function GetKerning(const CharPair: WideString): Integer; safecall;
    function GetLatestPrinterNames: WideString; safecall;
    function GetMaxObjectNumber: Integer; safecall;
    function GetMeasureDictBoundsCount(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer): Double; safecall;
    function GetMeasureDictCoordinateSystem(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictDCSDict(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictGCSDict(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictGPTSCount(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double; safecall;
    function GetMeasureDictLPTSCount(MeasureDictID: Integer): Integer; safecall;
    function GetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double; safecall;
    function GetMeasureDictPDU(MeasureDictID: Integer; UnitIndex: Integer): Integer; safecall;
    function GetNamedDestination(const DestName: WideString): Integer; safecall;
    function GetNextOutline(OutlineID: Integer): Integer; safecall;
    function GetObjectCount: Integer; safecall;
    function GetObjectToVariant(ObjectNumber: Integer): OleVariant; safecall;
    function GetOpenActionDestination: Integer; safecall;
    function GetOpenActionJavaScript: WideString; safecall;
    function GetOptionalContentConfigCount: Integer; safecall;
    function GetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer): Integer; safecall;
    function GetOptionalContentConfigOrderCount(OptionalContentConfigID: Integer): Integer; safecall;
    function GetOptionalContentConfigOrderItemID(OptionalContentConfigID: Integer; 
                                                 ItemIndex: Integer): Integer; safecall;
    function GetOptionalContentConfigOrderItemLabel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): WideString; safecall;
    function GetOptionalContentConfigOrderItemLevel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): Integer; safecall;
    function GetOptionalContentConfigOrderItemType(OptionalContentConfigID: Integer; 
                                                   ItemIndex: Integer): Integer; safecall;
    function GetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer): Integer; safecall;
    function GetOptionalContentGroupID(Index: Integer): Integer; safecall;
    function GetOptionalContentGroupName(OptionalContentGroupID: Integer): WideString; safecall;
    function GetOptionalContentGroupPrintable(OptionalContentGroupID: Integer): Integer; safecall;
    function GetOptionalContentGroupVisible(OptionalContentGroupID: Integer): Integer; safecall;
    function GetOrigin: Integer; safecall;
    function GetOutlineActionID(OutlineID: Integer): Integer; safecall;
    function GetOutlineColor(OutlineID: Integer; ColorComponent: Integer): Double; safecall;
    function GetOutlineDest(OutlineID: Integer): Integer; safecall;
    function GetOutlineID(Index: Integer): Integer; safecall;
    function GetOutlineJavaScript(OutlineID: Integer): WideString; safecall;
    function GetOutlineObjectNumber(OutlineID: Integer): Integer; safecall;
    function GetOutlineOpenFile(OutlineID: Integer): WideString; safecall;
    function GetOutlinePage(OutlineID: Integer): Integer; safecall;
    function GetOutlineStyle(OutlineID: Integer): Integer; safecall;
    function GetOutlineWebLink(OutlineID: Integer): WideString; safecall;
    function GetPageBox(BoxType: Integer; Dimension: Integer): Double; safecall;
    function GetPageColorSpaces(Options: Integer): WideString; safecall;
    function GetPageContentToVariant: OleVariant; safecall;
    function GetPageImageList(Options: Integer): Integer; safecall;
    function GetPageJavaScript(const ActionType: WideString): WideString; safecall;
    function GetPageLGIDictContent(DictIndex: Integer): WideString; safecall;
    function GetPageLGIDictCount: Integer; safecall;
    function GetPageLabel(Page: Integer): WideString; safecall;
    function GetPageLayout: Integer; safecall;
    function GetPageMode: Integer; safecall;
    function GetPageText(ExtractOptions: Integer): WideString; safecall;
    function GetPageViewPortCount: Integer; safecall;
    function GetPageViewPortID(Index: Integer): Integer; safecall;
    function GetParentOutline(OutlineID: Integer): Integer; safecall;
    function GetPrevOutline(OutlineID: Integer): Integer; safecall;
    function GetPrinterBins(const PrinterName: WideString): WideString; safecall;
    function GetPrinterDevModeToVariant(const PrinterName: WideString): OleVariant; safecall;
    function GetPrinterMediaTypes(const PrinterName: WideString): WideString; safecall;
    function GetPrinterNames: WideString; safecall;
    function GetRenderScale: Double; safecall;
    function GetStringListCount(StringListID: Integer): Integer; safecall;
    function GetStringListItem(StringListID: Integer; ItemIndex: Integer): WideString; safecall;
    function GetTableCellDblProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Double; safecall;
    function GetTableCellIntProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Integer; safecall;
    function GetTableCellStrProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): WideString; safecall;
    function GetTableColumnCount(TableID: Integer): Integer; safecall;
    function GetTableLastDrawnRow(TableID: Integer): Integer; safecall;
    function GetTableRowCount(TableID: Integer): Integer; safecall;
    function GetTempPath: WideString; safecall;
    function GetTextAscent: Double; safecall;
    function GetTextBound(Edge: Integer): Double; safecall;
    function GetTextDescent: Double; safecall;
    function GetTextHeight: Double; safecall;
    function GetTextSize: Double; safecall;
    function GetTextWidth(const Text: WideString): Double; safecall;
    function GetUnicodeCharactersFromEncoding(Encoding: Integer): WideString; safecall;
    function GetViewPortBBox(ViewPortID: Integer; Dimension: Integer): Double; safecall;
    function GetViewPortMeasureDict(ViewPortID: Integer): Integer; safecall;
    function GetViewPortName(ViewPortID: Integer): WideString; safecall;
    function GetViewPortPtDataDict(ViewPortID: Integer): Integer; safecall;
    function GetViewerPreferences(Option: Integer): Integer; safecall;
    function GetWrappedText(Width: Double; const Delimiter: WideString; const Text: WideString): WideString; safecall;
    function GetWrappedTextBreakString(Width: Double; const Delimiter: WideString; 
                                       const Text: WideString): WideString; safecall;
    function GetWrappedTextHeight(Width: Double; const Text: WideString): Double; safecall;
    function GetWrappedTextLineCount(Width: Double; const Text: WideString): Integer; safecall;
    function GetXFAFormFieldCount: Integer; safecall;
    function GetXFAFormFieldName(Index: Integer): WideString; safecall;
    function GetXFAFormFieldNames(const Delimiter: WideString): WideString; safecall;
    function GetXFAFormFieldValue(const XFAFieldName: WideString): WideString; safecall;
    function GetXFAToString(Options: Integer): WideString; safecall;
    function GlobalJavaScriptCount: Integer; safecall;
    function GlobalJavaScriptPackageName(Index: Integer): WideString; safecall;
    function HasFontResources: Integer; safecall;
    function HasPageBox(BoxType: Integer): Integer; safecall;
    function HidePage: Integer; safecall;
    function ImageCount: Integer; safecall;
    function ImageFillColor: Integer; safecall;
    function ImageHeight: Integer; safecall;
    function ImageHorizontalResolution: Integer; safecall;
    function ImageResolutionUnits: Integer; safecall;
    function ImageType: Integer; safecall;
    function ImageVerticalResolution: Integer; safecall;
    function ImageWidth: Integer; safecall;
    function ImportEMFFromFile(const FileName: WideString; FontOptions: Integer; 
                               GeneralOptions: Integer): Integer; safecall;
    function InsertPages(StartPage: Integer; PageCount: Integer): Integer; safecall;
    function InsertTableColumns(TableID: Integer; Position: Integer; NewColumnCount: Integer): Integer; safecall;
    function InsertTableRows(TableID: Integer; Position: Integer; NewRowCount: Integer): Integer; safecall;
    function IsAnnotFormField(Index: Integer): Integer; safecall;
    function LastErrorCode: Integer; safecall;
    function LastRenderError: WideString; safecall;
    function LibraryVersion: WideString; safecall;
    function LicenseInfo: WideString; safecall;
    function Linearized: Integer; safecall;
    function LoadFromCanvasDC(DPI: Double; Options: Integer): Integer; safecall;
    function LoadFromFile(const FileName: WideString; const Password: WideString): Integer; safecall;
    function LoadFromVariant(Source: OleVariant; const Password: WideString): Integer; safecall;
    function LoadState: Integer; safecall;
    function MergeDocument(DocumentID: Integer): Integer; safecall;
    function MergeFileList(const ListName: WideString; const OutputFileName: WideString): Integer; safecall;
    function MergeFileListFast(const ListName: WideString; const OutputFileName: WideString): Integer; safecall;
    function MergeFiles(const FirstFileName: WideString; const SecondFileName: WideString; 
                        const OutputFileName: WideString): Integer; safecall;
    function MergeTableCells(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                             LastRow: Integer; LastColumn: Integer): Integer; safecall;
    function MoveContentStream(FromPosition: Integer; ToPosition: Integer): Integer; safecall;
    function MoveOutlineAfter(OutlineID: Integer; SiblingID: Integer): Integer; safecall;
    function MoveOutlineBefore(OutlineID: Integer; SiblingID: Integer): Integer; safecall;
    function MovePage(NewPosition: Integer): Integer; safecall;
    function MovePath(NewX: Double; NewY: Double): Integer; safecall;
    function MultiplyScale(MultScaleBy: Double): Integer; safecall;
    function NewChildFormField(Index: Integer; const Title: WideString; FieldType: Integer): Integer; safecall;
    function NewContentStream: Integer; safecall;
    function NewCustomPrinter(const OriginalPrinterName: WideString): WideString; safecall;
    function NewDestination(DestPage: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                            Top: Double; Right: Double; Bottom: Double): Integer; safecall;
    function NewDocument: Integer; safecall;
    function NewFormField(const Title: WideString; FieldType: Integer): Integer; safecall;
    function NewNamedDestination(const DestName: WideString; DestID: Integer): Integer; safecall;
    function NewOptionalContentGroup(const GroupName: WideString): Integer; safecall;
    function NewOutline(Parent: Integer; const Title: WideString; DestPage: Integer; 
                        DestPosition: Double): Integer; safecall;
    function NewPage: Integer; safecall;
    function NewPageFromCanvasDC(DPI: Integer; Options: Integer): Integer; safecall;
    function NewPages(PageCount: Integer): Integer; safecall;
    function NewPostScriptXObject(const PS: WideString): Integer; safecall;
    function NewRGBAxialShader(const ShaderName: WideString; StartX: Double; StartY: Double; 
                               StartRed: Double; StartGreen: Double; StartBlue: Double; 
                               EndX: Double; EndY: Double; EndRed: Double; EndGreen: Double; 
                               EndBlue: Double; Extend: Integer): Integer; safecall;
    function NewStaticOutline(Parent: Integer; const Title: WideString): Integer; safecall;
    function NewTilingPatternFromCapturedPage(const PatternName: WideString; CaptureID: Integer): Integer; safecall;
    function NoEmbedFontListAdd(const FontName: WideString): Integer; safecall;
    function NoEmbedFontListCount: Integer; safecall;
    function NoEmbedFontListGet(Index: Integer): WideString; safecall;
    function NoEmbedFontListRemoveAll: Integer; safecall;
    function NoEmbedFontListRemoveIndex(Index: Integer): Integer; safecall;
    function NoEmbedFontListRemoveName(const FontName: WideString): Integer; safecall;
    function NormalizePage(NormalizeOptions: Integer): Integer; safecall;
    function OpenOutline(OutlineID: Integer): Integer; safecall;
    function OptionalContentGroupCount: Integer; safecall;
    function OutlineCount: Integer; safecall;
    function OutlineTitle(OutlineID: Integer): WideString; safecall;
    function PageCount: Integer; safecall;
    function PageHeight: Double; safecall;
    function PageJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer; safecall;
    function PageRotation: Integer; safecall;
    function PageWidth: Double; safecall;
    function PrintDocument(const PrinterName: WideString; StartPage: Integer; EndPage: Integer; 
                           Options: Integer): Integer; safecall;
    function PrintDocumentToFile(const PrinterName: WideString; StartPage: Integer; 
                                 EndPage: Integer; Options: Integer; const FileName: WideString): Integer; safecall;
    function PrintOptions(PageScaling: Integer; AutoRotateCenter: Integer; const Title: WideString): Integer; safecall;
    function ReleaseImage(ImageID: Integer): Integer; safecall;
    function ReleaseImageList(ImageListID: Integer): Integer; safecall;
    function RemoveAppearanceStream(Index: Integer): Integer; safecall;
    function RemoveCustomInformation(const Key: WideString): Integer; safecall;
    function RemoveDocument(DocumentID: Integer): Integer; safecall;
    function RemoveEmbeddedFile(Index: Integer): Integer; safecall;
    function RemoveFormFieldBackgroundColor(Index: Integer): Integer; safecall;
    function RemoveFormFieldBorderColor(Index: Integer): Integer; safecall;
    function RemoveGlobalJavaScript(const PackageName: WideString): Integer; safecall;
    function RemoveOpenAction: Integer; safecall;
    function RemoveOutline(OutlineID: Integer): Integer; safecall;
    function RemoveSharedContentStreams: Integer; safecall;
    function RemoveStyle(const StyleName: WideString): Integer; safecall;
    function RemoveUsageRights: Integer; safecall;
    function RemoveXFAEntries(Options: Integer): Integer; safecall;
    function RenderDocumentToFile(DPI: Integer; StartPage: Integer; EndPage: Integer; 
                                  Options: Integer; const FileName: WideString): Integer; safecall;
    function RenderPageToDC(DPI: Integer; Page: Integer; DC: Integer): Integer; safecall;
    function RenderPageToFile(DPI: Integer; Page: Integer; Options: Integer; 
                              const FileName: WideString): Integer; safecall;
    function RenderPageToVariant(DPI: Integer; Page: Integer; Options: Integer): OleVariant; safecall;
    function ReplaceFonts: Integer; safecall;
    function ReplaceImage(OriginalImageID: Integer; NewImageID: Integer): Integer; safecall;
    function ReplaceTag(const Tag: WideString; const NewValue: WideString): Integer; safecall;
    function RequestPrinterStatus(StatusCommand: Integer): Integer; safecall;
    function RetrieveCustomDataToFile(const Key: WideString; const FileName: WideString; 
                                      Location: Integer): Integer; safecall;
    function RetrieveCustomDataToVariant(const Key: WideString; Location: Integer): OleVariant; safecall;
    function ReverseImage(Reset: Integer): Integer; safecall;
    function RotatePage(PageRotation: Integer): Integer; safecall;
    function SaveFontToFile(const FileName: WideString): Integer; safecall;
    function SaveImageListItemDataToFile(ImageListID: Integer; ImageIndex: Integer; 
                                         Options: Integer; const ImageFileName: WideString): Integer; safecall;
    function SaveImageToFile(const FileName: WideString): Integer; safecall;
    function SaveImageToVariant: OleVariant; safecall;
    function SaveState: Integer; safecall;
    function SaveStyle(const StyleName: WideString): Integer; safecall;
    function SaveToFile(const FileName: WideString): Integer; safecall;
    function SaveToVariant: OleVariant; safecall;
    function SecurityInfo(SecurityItem: Integer): Integer; safecall;
    function SelectContentStream(NewIndex: Integer): Integer; safecall;
    function SelectDocument(DocumentID: Integer): Integer; safecall;
    function SelectFont(FontID: Integer): Integer; safecall;
    function SelectImage(ImageID: Integer): Integer; safecall;
    function SelectPage(PageNumber: Integer): Integer; safecall;
    function SelectRenderer(RendererID: Integer): Integer; safecall;
    function SelectedDocument: Integer; safecall;
    function SelectedFont: Integer; safecall;
    function SelectedImage: Integer; safecall;
    function SelectedPage: Integer; safecall;
    function SetActionURL(ActionID: Integer; const NewURL: WideString): Integer; safecall;
    function SetAnnotBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetAnnotBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                 DashOff: Double): Integer; safecall;
    function SetAnnotContents(Index: Integer; const NewContents: WideString): Integer; safecall;
    function SetAnnotDblProperty(Index: Integer; Tag: Integer; NewValue: Double): Integer; safecall;
    function SetAnnotIntProperty(Index: Integer; Tag: Integer; NewValue: Integer): Integer; safecall;
    function SetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; X1: Double; Y1: Double; 
                                X2: Double; Y2: Double; X3: Double; Y3: Double; X4: Double; 
                                Y4: Double): Integer; safecall;
    function SetAnnotRect(Index: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function SetAnnotStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer; safecall;
    function SetBaseURL(const NewBaseURL: WideString): Integer; safecall;
    function SetBlendMode(BlendMode: Integer): Integer; safecall;
    function SetBreakString(const NewBreakString: WideString): Integer; safecall;
    function SetCSDictEPSG(CSDictID: Integer; NewEPSG: Integer): Integer; safecall;
    function SetCSDictType(CSDictID: Integer; NewDictType: Integer): Integer; safecall;
    function SetCSDictWKT(CSDictID: Integer; const NewWKT: WideString): Integer; safecall;
    function SetCairoFileName(const FileName: WideString): Integer; safecall;
    function SetCapturedPageOptional(CaptureID: Integer; OptionalContentGroupID: Integer): Integer; safecall;
    function SetCapturedPageTransparencyGroup(CaptureID: Integer; CS: Integer; Isolate: Integer; 
                                              Knockout: Integer): Integer; safecall;
    function SetCatalogInformation(const Key: WideString; const NewValue: WideString): Integer; safecall;
    function SetCharWidth(CharCode: Integer; NewWidth: Integer): Integer; safecall;
    function SetClippingPath: Integer; safecall;
    function SetClippingPathEvenOdd: Integer; safecall;
    function SetCompatibility(CompatibilityItem: Integer; CompatibilityMode: Integer): Integer; safecall;
    function SetContentStreamFromVariant(NewValue: OleVariant): Integer; safecall;
    function SetContentStreamOptional(OptionalContentGroupID: Integer): Integer; safecall;
    function SetCropBox(Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function SetCustomInformation(const Key: WideString; const NewValue: WideString): Integer; safecall;
    function SetCustomLineDash(const DashPattern: WideString; DashPhase: Double): Integer; safecall;
    function SetDestProperties(DestID: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                               Top: Double; Right: Double; Bottom: Double): Integer; safecall;
    function SetDestValue(DestID: Integer; ValueKey: Integer; NewValue: Double): Integer; safecall;
    function SetDocumentMetadata(const XMP: WideString): Integer; safecall;
    function SetEmbeddedFileStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer; safecall;
    function SetFillColor(Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetFillColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetFillColorSep(const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetFillShader(const ShaderName: WideString): Integer; safecall;
    function SetFillTilingPattern(const PatternName: WideString): Integer; safecall;
    function SetFindImagesMode(NewFindImagesMode: Integer): Integer; safecall;
    function SetFontEncoding(Encoding: Integer): Integer; safecall;
    function SetFontFlags(Fixed: Integer; Serif: Integer; Symbolic: Integer; Script: Integer; 
                          Italic: Integer; AllCap: Integer; SmallCap: Integer; ForceBold: Integer): Integer; safecall;
    function SetFormFieldAlignment(Index: Integer; Alignment: Integer): Integer; safecall;
    function SetFormFieldAnnotFlags(Index: Integer; NewFlags: Integer): Integer; safecall;
    function SetFormFieldBackgroundColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetFormFieldBackgroundColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer; safecall;
    function SetFormFieldBackgroundColorGray(Index: Integer; Gray: Double): Integer; safecall;
    function SetFormFieldBackgroundColorSep(Index: Integer; const ColorName: WideString; 
                                            Tint: Double): Integer; safecall;
    function SetFormFieldBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetFormFieldBorderColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetFormFieldBorderColorGray(Index: Integer; Gray: Double): Integer; safecall;
    function SetFormFieldBorderColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetFormFieldBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                     DashOff: Double): Integer; safecall;
    function SetFormFieldBounds(Index: Integer; Left: Double; Top: Double; Width: Double; 
                                Height: Double): Integer; safecall;
    function SetFormFieldCalcOrder(Index: Integer; Order: Integer): Integer; safecall;
    function SetFormFieldCaption(Index: Integer; const NewCaption: WideString): Integer; safecall;
    function SetFormFieldCheckStyle(Index: Integer; CheckStyle: Integer; Position: Integer): Integer; safecall;
    function SetFormFieldChildTitle(Index: Integer; const NewTitle: WideString): Integer; safecall;
    function SetFormFieldChoiceType(Index: Integer; ChoiceType: Integer): Integer; safecall;
    function SetFormFieldColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetFormFieldColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetFormFieldColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetFormFieldComb(Index: Integer; Comb: Integer): Integer; safecall;
    function SetFormFieldDefaultValue(Index: Integer; const NewDefaultValue: WideString): Integer; safecall;
    function SetFormFieldDescription(Index: Integer; const NewDescription: WideString): Integer; safecall;
    function SetFormFieldFlags(Index: Integer; NewFlags: Integer): Integer; safecall;
    function SetFormFieldFont(Index: Integer; FontIndex: Integer): Integer; safecall;
    function SetFormFieldHighlightMode(Index: Integer; NewMode: Integer): Integer; safecall;
    function SetFormFieldIcon(Index: Integer; IconType: Integer; CaptureID: Integer): Integer; safecall;
    function SetFormFieldIconStyle(Index: Integer; Placement: Integer; Scale: Integer; 
                                   ScaleType: Integer; HorizontalShift: Integer; 
                                   VerticalShift: Integer): Integer; safecall;
    function SetFormFieldMaxLen(Index: Integer; NewMaxLen: Integer): Integer; safecall;
    function SetFormFieldNoExport(Index: Integer; NoExport: Integer): Integer; safecall;
    function SetFormFieldOptional(Index: Integer; OptionalContentGroupID: Integer): Integer; safecall;
    function SetFormFieldPage(Index: Integer; NewPage: Integer): Integer; safecall;
    function SetFormFieldPrintable(Index: Integer; Printable: Integer): Integer; safecall;
    function SetFormFieldReadOnly(Index: Integer; ReadOnly: Integer): Integer; safecall;
    function SetFormFieldRequired(Index: Integer; Required: Integer): Integer; safecall;
    function SetFormFieldRotation(Index: Integer; Angle: Integer): Integer; safecall;
    function SetFormFieldStandardFont(Index: Integer; StandardFontID: Integer): Integer; safecall;
    function SetFormFieldSubmitAction(Index: Integer; const ActionType: WideString; 
                                      const Link: WideString): Integer; safecall;
    function SetFormFieldTabOrder(Index: Integer; Order: Integer): Integer; safecall;
    function SetFormFieldTextFlags(Index: Integer; Multiline: Integer; Password: Integer; 
                                   FileSelect: Integer; DoNotSpellCheck: Integer; 
                                   DoNotScroll: Integer): Integer; safecall;
    function SetFormFieldTextSize(Index: Integer; NewTextSize: Double): Integer; safecall;
    function SetFormFieldValue(Index: Integer; const NewValue: WideString): Integer; safecall;
    function SetFormFieldValueByTitle(const Title: WideString; const NewValue: WideString): Integer; safecall;
    function SetFormFieldVisible(Index: Integer; Visible: Integer): Integer; safecall;
    function SetGDIPlusFileName(const DLLFileName: WideString): Integer; safecall;
    function SetGDIPlusOptions(OptionID: Integer; NewValue: Integer): Integer; safecall;
    function SetHTMLBoldFont(const FontSet: WideString; FontID: Integer): Integer; safecall;
    function SetHTMLBoldItalicFont(const FontSet: WideString; FontID: Integer): Integer; safecall;
    function SetHTMLItalicFont(const FontSet: WideString; FontID: Integer): Integer; safecall;
    function SetHTMLNormalFont(const FontSet: WideString; FontID: Integer): Integer; safecall;
    function SetImageAsMask(MaskType: Integer): Integer; safecall;
    function SetImageMask(FromRed: Double; FromGreen: Double; FromBlue: Double; ToRed: Double; 
                          ToGreen: Double; ToBlue: Double): Integer; safecall;
    function SetImageMaskCMYK(FromC: Double; FromM: Double; FromY: Double; FromK: Double; 
                              ToC: Double; ToM: Double; ToY: Double; ToK: Double): Integer; safecall;
    function SetImageMaskFromImage(ImageID: Integer): Integer; safecall;
    function SetImageOptional(OptionalContentGroupID: Integer): Integer; safecall;
    function SetImageResolution(Horizontal: Integer; Vertical: Integer; Units: Integer): Integer; safecall;
    function SetInformation(Key: Integer; const NewValue: WideString): Integer; safecall;
    function SetJPEGQuality(Quality: Integer): Integer; safecall;
    function SetJavaScriptMode(JSMode: Integer): Integer; safecall;
    function SetKerning(const CharPair: WideString; Adjustment: Integer): Integer; safecall;
    function SetLineCap(LineCap: Integer): Integer; safecall;
    function SetLineColor(Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetLineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetLineColorSep(const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetLineDash(DashOn: Double; DashOff: Double): Integer; safecall;
    function SetLineDashEx(const DashValues: WideString): Integer; safecall;
    function SetLineJoin(LineJoin: Integer): Integer; safecall;
    function SetLineShader(const ShaderName: WideString): Integer; safecall;
    function SetLineWidth(LineWidth: Double): Integer; safecall;
    function SetMarkupAnnotStyle(Index: Integer; Red: Double; Green: Double; Blue: Double; 
                                 Transparency: Double): Integer; safecall;
    function SetMeasureDictBoundsCount(MeasureDictID: Integer; NewCount: Integer): Integer; safecall;
    function SetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; safecall;
    function SetMeasureDictCoordinateSystem(MeasureDictID: Integer; CoordinateSystemID: Integer): Integer; safecall;
    function SetMeasureDictGPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer; safecall;
    function SetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; safecall;
    function SetMeasureDictLPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer; safecall;
    function SetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; safecall;
    function SetMeasureDictPDU(MeasureDictID: Integer; LinearUnit: Integer; AreaUnit: Integer; 
                               AngularUnit: Integer): Integer; safecall;
    function SetMeasurementUnits(MeasurementUnits: Integer): Integer; safecall;
    function SetNeedAppearances(NewValue: Integer): Integer; safecall;
    function SetObjectFromVariant(ObjectNumber: Integer; NewValue: OleVariant): Integer; safecall;
    function SetOpenActionDestination(OpenPage: Integer; Zoom: Integer): Integer; safecall;
    function SetOpenActionDestinationFull(OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                          Left: Double; Top: Double; Right: Double; Bottom: Double): Integer; safecall;
    function SetOpenActionJavaScript(const JavaScript: WideString): Integer; safecall;
    function SetOpenActionMenu(const MenuItem: WideString): Integer; safecall;
    function SetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer; NewLocked: Integer): Integer; safecall;
    function SetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer; NewState: Integer): Integer; safecall;
    function SetOptionalContentGroupName(OptionalContentGroupID: Integer; 
                                         const NewGroupName: WideString): Integer; safecall;
    function SetOptionalContentGroupPrintable(OptionalContentGroupID: Integer; Printable: Integer): Integer; safecall;
    function SetOptionalContentGroupVisible(OptionalContentGroupID: Integer; Visible: Integer): Integer; safecall;
    function SetOrigin(Origin: Integer): Integer; safecall;
    function SetOutlineColor(OutlineID: Integer; Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetOutlineDestination(OutlineID: Integer; DestPage: Integer; DestPosition: Double): Integer; safecall;
    function SetOutlineDestinationFull(OutlineID: Integer; DestPage: Integer; Zoom: Integer; 
                                       DestType: Integer; Left: Double; Top: Double; Right: Double; 
                                       Bottom: Double): Integer; safecall;
    function SetOutlineDestinationZoom(OutlineID: Integer; DestPage: Integer; DestPosition: Double; 
                                       Zoom: Integer): Integer; safecall;
    function SetOutlineJavaScript(OutlineID: Integer; const JavaScript: WideString): Integer; safecall;
    function SetOutlineNamedDestination(OutlineID: Integer; const DestName: WideString): Integer; safecall;
    function SetOutlineOpenFile(OutlineID: Integer; const FileName: WideString): Integer; safecall;
    function SetOutlineRemoteDestination(OutlineID: Integer; const FileName: WideString; 
                                         OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                         PntLeft: Double; PntTop: Double; PntRight: Double; 
                                         PntBottom: Double; NewWindow: Integer): Integer; safecall;
    function SetOutlineStyle(OutlineID: Integer; SetItalic: Integer; SetBold: Integer): Integer; safecall;
    function SetOutlineTitle(OutlineID: Integer; const NewTitle: WideString): Integer; safecall;
    function SetOutlineWebLink(OutlineID: Integer; const Link: WideString): Integer; safecall;
    function SetOverprint(StrokingOverprint: Integer; OtherOverprint: Integer; 
                          OverprintMode: Integer): Integer; safecall;
    function SetPDFAMode(NewMode: Integer): Integer; safecall;
    function SetPNGTransparencyColor(RedByte: Integer; GreenByte: Integer; BlueByte: Integer): Integer; safecall;
    function SetPageActionMenu(const MenuItem: WideString): Integer; safecall;
    function SetPageBox(BoxType: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function SetPageContentFromVariant(NewValue: OleVariant): Integer; safecall;
    function SetPageDimensions(NewPageWidth: Double; NewPageHeight: Double): Integer; safecall;
    function SetPageLayout(NewPageLayout: Integer): Integer; safecall;
    function SetPageMode(NewPageMode: Integer): Integer; safecall;
    function SetPageSize(const PaperName: WideString): Integer; safecall;
    function SetPageThumbnail: Integer; safecall;
    function SetPageTransparencyGroup(CS: Integer; Isolate: Integer; Knockout: Integer): Integer; safecall;
    function SetPrecision(NewPrecision: Integer): Integer; safecall;
    function SetPrinterDevModeFromVariant(Source: OleVariant): Integer; safecall;
    function SetRenderCropType(NewCropType: Integer): Integer; safecall;
    function SetRenderDCErasePage(NewErasePage: Integer): Integer; safecall;
    function SetRenderDCOffset(NewOffsetX: Integer; NewOffsetY: Integer): Integer; safecall;
    function SetRenderScale(NewScale: Double): Integer; safecall;
    function SetScale(NewScale: Double): Integer; safecall;
    function SetTableBorderColor(TableID: Integer; BorderIndex: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer; safecall;
    function SetTableBorderColorCMYK(TableID: Integer; BorderIndex: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer; safecall;
    function SetTableBorderWidth(TableID: Integer; BorderIndex: Integer; NewWidth: Double): Integer; safecall;
    function SetTableCellAlignment(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; NewCellAlignment: Integer): Integer; safecall;
    function SetTableCellBackgroundColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; Red: Double; 
                                         Green: Double; Blue: Double): Integer; safecall;
    function SetTableCellBackgroundColorCMYK(TableID: Integer; FirstRow: Integer; 
                                             FirstColumn: Integer; LastRow: Integer; 
                                             LastColumn: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer; safecall;
    function SetTableCellBorderColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetTableCellBorderColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; 
                                         BorderIndex: Integer; C: Double; M: Double; Y: Double; 
                                         K: Double): Integer; safecall;
    function SetTableCellBorderWidth(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     NewWidth: Double): Integer; safecall;
    function SetTableCellContent(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                 const HTMLText: WideString): Integer; safecall;
    function SetTableCellPadding(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                 LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                 NewPadding: Double): Integer; safecall;
    function SetTableCellTextColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; Red: Double; 
                                   Green: Double; Blue: Double): Integer; safecall;
    function SetTableCellTextColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                       LastRow: Integer; LastColumn: Integer; C: Double; M: Double; 
                                       Y: Double; K: Double): Integer; safecall;
    function SetTableCellTextSize(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                  LastRow: Integer; LastColumn: Integer; NewTextSize: Double): Integer; safecall;
    function SetTableColumnWidth(TableID: Integer; FirstColumn: Integer; LastColumn: Integer; 
                                 NewWidth: Double): Integer; safecall;
    function SetTableRowHeight(TableID: Integer; FirstRow: Integer; LastRow: Integer; 
                               NewHeight: Double): Integer; safecall;
    function SetTableThinBorders(TableID: Integer; ThinBorders: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer; safecall;
    function SetTableThinBordersCMYK(TableID: Integer; ThinBorders: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer; safecall;
    function SetTempFile(const FileName: WideString): Integer; safecall;
    function SetTempPath(const NewPath: WideString): Integer; safecall;
    function SetTextAlign(TextAlign: Integer): Integer; safecall;
    function SetTextCharSpacing(CharSpacing: Double): Integer; safecall;
    function SetTextColor(Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetTextColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetTextColorSep(const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer; safecall;
    function SetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer; safecall;
    function SetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer; safecall;
    function SetTextExtractionWordGap(NewWordGap: Double): Integer; safecall;
    function SetTextHighlight(Highlight: Integer): Integer; safecall;
    function SetTextHighlightColor(Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetTextHighlightColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetTextHighlightColorSep(const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetTextMode(TextMode: Integer): Integer; safecall;
    function SetTextRise(Rise: Double): Integer; safecall;
    function SetTextScaling(ScalePercentage: Double): Integer; safecall;
    function SetTextShader(const ShaderName: WideString): Integer; safecall;
    function SetTextSize(TextSize: Double): Integer; safecall;
    function SetTextSpacing(Spacing: Double): Integer; safecall;
    function SetTextUnderline(Underline: Integer): Integer; safecall;
    function SetTextUnderlineColor(Red: Double; Green: Double; Blue: Double): Integer; safecall;
    function SetTextUnderlineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; safecall;
    function SetTextUnderlineColorSep(const ColorName: WideString; Tint: Double): Integer; safecall;
    function SetTextUnderlineCustomDash(const DashPattern: WideString; DashPhase: Double): Integer; safecall;
    function SetTextUnderlineDash(DashOn: Double; DashOff: Double): Integer; safecall;
    function SetTextUnderlineDistance(UnderlineDistance: Double): Integer; safecall;
    function SetTextUnderlineWidth(UnderlineWidth: Double): Integer; safecall;
    function SetTextWordSpacing(WordSpacing: Double): Integer; safecall;
    function SetTransparency(Transparency: Integer): Integer; safecall;
    function SetViewerPreferences(Option: Integer; NewValue: Integer): Integer; safecall;
    function SetXFAFormFieldAccess(const XFAFieldName: WideString; NewAccess: Integer): Integer; safecall;
    function SetXFAFormFieldBorderColor(const XFAFieldName: WideString; Red: Double; Green: Double; 
                                        Blue: Double): Integer; safecall;
    function SetXFAFormFieldBorderPresence(const XFAFieldName: WideString; NewPresence: Integer): Integer; safecall;
    function SetXFAFormFieldBorderWidth(const XFAFieldName: WideString; BorderWidth: Double): Integer; safecall;
    function SetXFAFormFieldValue(const XFAFieldName: WideString; const NewValue: WideString): Integer; safecall;
    function SetXFAFromString(const Source: WideString; Options: Integer): Integer; safecall;
    function SetupCustomPrinter(const CustomPrinterName: WideString; Setting: Integer; 
                                NewValue: Integer): Integer; safecall;
    function SignFile(const InputFileName: WideString; const OpenPassword: WideString; 
                      const SignatureFieldName: WideString; const OutputFileName: WideString; 
                      const PFXFileName: WideString; const PFXPassword: WideString; 
                      const Reason: WideString; const Location: WideString; 
                      const ContactInfo: WideString): Integer; safecall;
    function SplitPageText(Options: Integer): Integer; safecall;
    function StartPath(StartX: Double; StartY: Double): Integer; safecall;
    function StoreCustomDataFromFile(const Key: WideString; const FileName: WideString; 
                                     Location: Integer; Options: Integer): Integer; safecall;
    function StoreCustomDataFromVariant(const Key: WideString; NewValue: OleVariant; 
                                        Location: Integer; Options: Integer): Integer; safecall;
    function TestTempPath: Integer; safecall;
    function TransformFile(const InputFileName: WideString; const Password: WideString; 
                           const OutputFileName: WideString; TransformType: Integer; 
                           Options: Integer): Integer; safecall;
    function UnlockKey(const LicenseKey: WideString): Integer; safecall;
    function Unlocked: Integer; safecall;
    function UpdateAndFlattenFormField(Index: Integer): Integer; safecall;
    function UpdateAppearanceStream(Index: Integer): Integer; safecall;
    function UseKerning(Kern: Integer): Integer; safecall;
    function UseUnsafeContentStreams(SafetyLevel: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDFLibraryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A189E5D6-325F-42DC-B9DC-64768F206020}
// *********************************************************************//
  IPDFLibraryDisp = dispinterface
    ['{A189E5D6-325F-42DC-B9DC-64768F206020}']
    function AddArcToPath(CenterX: Double; CenterY: Double; TotalAngle: Double): Integer; dispid 59768832;
    function AddCJKFont(CJKFontID: Integer): Integer; dispid 59768833;
    function AddCurveToPath(CtAX: Double; CtAY: Double; CtBX: Double; CtBY: Double; EndX: Double; 
                            EndY: Double): Integer; dispid 59768834;
    function AddEmbeddedFile(const FileName: WideString; const MIMEType: WideString): Integer; dispid 59768835;
    function AddFileAttachment(const Title: WideString; EmbeddedFileID: Integer): Integer; dispid 59768836;
    function AddFormFieldChoiceSub(Index: Integer; const SubName: WideString; 
                                   const DisplayName: WideString): Integer; dispid 59768837;
    function AddFormFieldSub(Index: Integer; const SubName: WideString): Integer; dispid 59768838;
    function AddFormFont(FontID: Integer): Integer; dispid 59768839;
    function AddGlobalJavaScript(const PackageName: WideString; const JavaScript: WideString): Integer; dispid 59768840;
    function AddImageFromFile(const FileName: WideString; Options: Integer): Integer; dispid 59768841;
    function AddImageFromFileOffset(const FileName: WideString; Offset: Integer; 
                                    DataLength: Integer; Options: Integer): Integer; dispid 59768842;
    function AddImageFromVariant(SourceData: OleVariant; Options: Integer): Integer; dispid 59768845;
    function AddLGIDictToPage(const DictContent: WideString): Integer; dispid 59768846;
    function AddLineToPath(EndX: Double; EndY: Double): Integer; dispid 59768847;
    function AddLinkToDestination(Left: Double; Top: Double; Width: Double; Height: Double; 
                                  DestID: Integer; Options: Integer): Integer; dispid 59768848;
    function AddLinkToEmbeddedFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                   EmbeddedFileID: Integer; const Title: WideString; 
                                   const Contents: WideString; IconType: Integer; 
                                   Transpareny: Integer): Integer; dispid 59768849;
    function AddLinkToFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                           const FileName: WideString; Page: Integer; Position: Double; 
                           NewWindow: Integer; Options: Integer): Integer; dispid 59768850;
    function AddLinkToJavaScript(Left: Double; Top: Double; Width: Double; Height: Double; 
                                 const JavaScript: WideString; Options: Integer): Integer; dispid 59768851;
    function AddLinkToLocalFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                const FileName: WideString; Options: Integer): Integer; dispid 59768852;
    function AddLinkToPage(Left: Double; Top: Double; Width: Double; Height: Double; Page: Integer; 
                           Position: Double; Options: Integer): Integer; dispid 59768853;
    function AddLinkToWeb(Left: Double; Top: Double; Width: Double; Height: Double; 
                          const Link: WideString; Options: Integer): Integer; dispid 59768854;
    function AddNoteAnnotation(Left: Double; Top: Double; AnnotType: Integer; PopupLeft: Double; 
                               PopupTop: Double; PopupWidth: Double; PopupHeight: Double; 
                               const Title: WideString; const Contents: WideString; Red: Double; 
                               Green: Double; Blue: Double; Open: Integer): Integer; dispid 59768855;
    function AddOpenTypeFontFromFile(const FileName: WideString; Options: Integer): Integer; dispid 59768856;
    function AddPageLabels(Start: Integer; Style: Integer; Offset: Integer; const Prefix: WideString): Integer; dispid 59768857;
    function AddSVGAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer; dispid 59768858;
    function AddSWFAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; const Title: WideString; 
                                      Options: Integer): Integer; dispid 59768859;
    function AddSeparationColor(const ColorName: WideString; C: Double; M: Double; Y: Double; 
                                K: Double; Options: Integer): Integer; dispid 59768860;
    function AddStampAnnotation(Left: Double; Top: Double; Width: Double; Height: Double; 
                                StampType: Integer; const Title: WideString; 
                                const Contents: WideString; Red: Double; Green: Double; 
                                Blue: Double; Options: Integer): Integer; dispid 59768861;
    function AddStandardFont(StandardFontID: Integer): Integer; dispid 59768862;
    function AddSubsettedFont(const FontName: WideString; CharsetIndex: Integer; 
                              const SubsetChars: WideString): Integer; dispid 59768863;
    function AddTextMarkupAnnotation(MarkupType: Integer; Left: Double; Top: Double; Width: Double; 
                                     Height: Double): Integer; dispid 59768864;
    function AddToFileList(const ListName: WideString; const FileName: WideString): Integer; dispid 59768866;
    function AddTrueTypeFont(const FontName: WideString; Embed: Integer): Integer; dispid 59768867;
    function AddTrueTypeFontFromFile(const FileName: WideString): Integer; dispid 59768868;
    function AddTrueTypeSubsettedFont(const FontName: WideString; const SubsetChars: WideString; 
                                      Options: Integer): Integer; dispid 59768869;
    function AddType1Font(const FileName: WideString): Integer; dispid 59768870;
    function AddU3DAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer; dispid 59768871;
    function AnalyseFile(const InputFileName: WideString; const Password: WideString): Integer; dispid 59768872;
    function AnnotationCount: Integer; dispid 59768873;
    function AppendSpace(RelativeSpace: Double): Integer; dispid 59768875;
    function AppendTableColumns(TableID: Integer; NewColumnCount: Integer): Integer; dispid 59768876;
    function AppendTableRows(TableID: Integer; NewRowCount: Integer): Integer; dispid 59768877;
    function AppendText(const Text: WideString): Integer; dispid 59768878;
    function ApplyStyle(const StyleName: WideString): Integer; dispid 59768879;
    function AttachAnnotToForm(Index: Integer): Integer; dispid 59768880;
    function BalanceContentStream: Integer; dispid 59768881;
    function BeginPageUpdate: Integer; dispid 59768882;
    function CapturePage(Page: Integer): Integer; dispid 59768883;
    function CapturePageEx(Page: Integer; Options: Integer): Integer; dispid 59768884;
    function CharWidth(CharCode: Integer): Integer; dispid 59768885;
    function CheckFileCompliance(const InputFileName: WideString; const Password: WideString; 
                                 ComplianceTest: Integer; Options: Integer): Integer; dispid 59768886;
    function CheckObjects: Integer; dispid 59768887;
    function CheckPageAnnots: Integer; dispid 59768888;
    function ClearFileList(const ListName: WideString): Integer; dispid 59768889;
    function ClearImage(ImageID: Integer): Integer; dispid 59768890;
    function ClearPageLabels: Integer; dispid 59768891;
    function ClearTextFormatting: Integer; dispid 59768892;
    function CloneOutlineAction(OutlineID: Integer): Integer; dispid 59768893;
    function ClonePages(StartPage: Integer; EndPage: Integer; RepeatCount: Integer): Integer; dispid 59768894;
    function CloseOutline(OutlineID: Integer): Integer; dispid 59768895;
    function ClosePath: Integer; dispid 59768896;
    function CombineContentStreams: Integer; dispid 59768897;
    function CompareOutlines(FirstOutlineID: Integer; SecondOutlineID: Integer): Integer; dispid 59768898;
    function CompressContent: Integer; dispid 59768899;
    function CompressFonts(Compress: Integer): Integer; dispid 59768900;
    function CompressImages(Compress: Integer): Integer; dispid 59768901;
    function CompressPage: Integer; dispid 59768902;
    function ContentStreamCount: Integer; dispid 59768903;
    function ContentStreamSafe: Integer; dispid 59768904;
    function CopyPageRanges(DocumentID: Integer; const RangeList: WideString): Integer; dispid 59768905;
    function CopyPageRangesEx(DocumentID: Integer; const RangeList: WideString; Options: Integer): Integer; dispid 59768906;
    function CreateNewObject: Integer; dispid 59768909;
    function CreateTable(RowCount: Integer; ColumnCount: Integer): Integer; dispid 59768910;
    function DAAppendFile(FileHandle: Integer): Integer; dispid 59768911;
    function DACapturePage(FileHandle: Integer; PageRef: Integer): Integer; dispid 59768912;
    function DACapturePageEx(FileHandle: Integer; PageRef: Integer; Options: Integer): Integer; dispid 59768913;
    function DACloseFile(FileHandle: Integer): Integer; dispid 59768914;
    function DADrawCapturedPage(FileHandle: Integer; DACaptureID: Integer; DestPageRef: Integer; 
                                PntLeft: Double; PntBottom: Double; PntWidth: Double; 
                                PntHeight: Double): Integer; dispid 59768915;
    function DADrawRotatedCapturedPage(FileHandle: Integer; DACaptureID: Integer; 
                                       DestPageRef: Integer; PntLeft: Double; PntBottom: Double; 
                                       PntWidth: Double; PntHeight: Double; Angle: Double): Integer; dispid 59768916;
    function DAEmbedFileStreams(FileHandle: Integer; const RootPath: WideString): Integer; dispid 59768917;
    function DAExtractPageText(FileHandle: Integer; PageRef: Integer; Options: Integer): WideString; dispid 59768918;
    function DAFindPage(FileHandle: Integer; Page: Integer): Integer; dispid 59768919;
    function DAGetAnnotationCount(FileHandle: Integer; PageRef: Integer): Integer; dispid 59768920;
    function DAGetFormFieldCount(FileHandle: Integer): Integer; dispid 59768921;
    function DAGetFormFieldTitle(FileHandle: Integer; FieldIndex: Integer): WideString; dispid 59768922;
    function DAGetFormFieldValue(FileHandle: Integer; FieldIndex: Integer): WideString; dispid 59768923;
    function DAGetImageDataToVariant(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer): OleVariant; dispid 59768925;
    function DAGetImageDblProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Double; dispid 59768926;
    function DAGetImageIntProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Integer; dispid 59768927;
    function DAGetImageListCount(FileHandle: Integer; ImageListID: Integer): Integer; dispid 59768928;
    function DAGetInformation(FileHandle: Integer; const Key: WideString): WideString; dispid 59768929;
    function DAGetObjectCount(FileHandle: Integer): Integer; dispid 59768930;
    function DAGetObjectToVariant(FileHandle: Integer; ObjectNumber: Integer): OleVariant; dispid 59768932;
    function DAGetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; 
                          Dimension: Integer): Double; dispid 59768933;
    function DAGetPageContentToVariant(FileHandle: Integer; PageRef: Integer): OleVariant; dispid 59768935;
    function DAGetPageCount(FileHandle: Integer): Integer; dispid 59768936;
    function DAGetPageHeight(FileHandle: Integer; PageRef: Integer): Double; dispid 59768937;
    function DAGetPageImageList(FileHandle: Integer; PageRef: Integer): Integer; dispid 59768938;
    function DAGetPageWidth(FileHandle: Integer; PageRef: Integer): Double; dispid 59768939;
    function DAHasPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer): Integer; dispid 59768940;
    function DAHidePage(FileHandle: Integer; PageRef: Integer): Integer; dispid 59768941;
    function DAMovePage(FileHandle: Integer; PageRef: Integer; TargetPageRef: Integer; 
                        Options: Integer): Integer; dispid 59768942;
    function DANewPage(FileHandle: Integer): Integer; dispid 59768943;
    function DANewPages(FileHandle: Integer; PageCount: Integer): Integer; dispid 59768944;
    function DAOpenFile(const InputFileName: WideString; const Password: WideString): Integer; dispid 59768945;
    function DAOpenFileReadOnly(const InputFileName: WideString; const Password: WideString): Integer; dispid 59768946;
    function DAPageRotation(FileHandle: Integer; PageRef: Integer): Integer; dispid 59768948;
    function DAReleaseImageList(FileHandle: Integer; ImageListID: Integer): Integer; dispid 59768949;
    function DARemoveUsageRights(FileHandle: Integer): Integer; dispid 59768950;
    function DARenderPageToDC(FileHandle: Integer; PageRef: Integer; DPI: Integer; DC: Integer): Integer; dispid 59768951;
    function DARenderPageToFile(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                DPI: Integer; const FileName: WideString): Integer; dispid 59768952;
    function DARenderPageToVariant(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                   DPI: Integer): OleVariant; dispid 59768955;
    function DARotatePage(FileHandle: Integer; PageRef: Integer; Angle: Integer; Options: Integer): Integer; dispid 59768956;
    function DASaveAsFile(FileHandle: Integer; const OutputFileName: WideString): Integer; dispid 59768957;
    function DASaveImageDataToFile(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   const ImageFileName: WideString): Integer; dispid 59768958;
    function DASetInformation(FileHandle: Integer; const Key: WideString; const NewValue: WideString): Integer; dispid 59768960;
    function DASetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; X1: Double; 
                          Y1: Double; X2: Double; Y2: Double): Integer; dispid 59768961;
    function DASetPageSize(FileHandle: Integer; PageRef: Integer; PntWidth: Double; 
                           PntHeight: Double): Integer; dispid 59768962;
    function DASetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59768963;
    function DASetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer; dispid 59768964;
    function DASetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer; dispid 59768965;
    function DASetTextExtractionWordGap(NewWordGap: Double): Integer; dispid 59768966;
    function Decrypt: Integer; dispid 59768967;
    function DecryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Password: WideString): Integer; dispid 59768968;
    function DeleteAnalysis(AnalysisID: Integer): Integer; dispid 59768969;
    function DeleteAnnotation(Index: Integer): Integer; dispid 59768970;
    function DeleteContentStream: Integer; dispid 59768971;
    function DeleteFormField(Index: Integer): Integer; dispid 59768972;
    function DeleteOptionalContentGroup(OptionalContentGroupID: Integer): Integer; dispid 59768973;
    function DeletePageLGIDict(DictIndex: Integer): Integer; dispid 59768974;
    function DeletePages(StartPage: Integer; PageCount: Integer): Integer; dispid 59768975;
    function DocJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer; dispid 59768976;
    function DocumentCount: Integer; dispid 59768977;
    function DrawArc(XPos: Double; YPos: Double; Radius: Double; StartAngle: Double; 
                     EndAngle: Double; Pie: Integer; DrawOptions: Integer): Integer; dispid 59768978;
    function DrawBarcode(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Barcode: Integer; Options: Integer): Integer; dispid 59768979;
    function DrawBox(Left: Double; Top: Double; Width: Double; Height: Double; DrawOptions: Integer): Integer; dispid 59768980;
    function DrawCapturedPage(CaptureID: Integer; Left: Double; Top: Double; Width: Double; 
                              Height: Double): Integer; dispid 59768981;
    function DrawCircle(XPos: Double; YPos: Double; Radius: Double; DrawOptions: Integer): Integer; dispid 59768982;
    function DrawDataMatrixSymbol(Left: Double; Top: Double; ModuleSize: Double; 
                                  const Text: WideString; Encoding: Integer; SymbolSize: Integer; 
                                  Options: Integer): Integer; dispid 59768983;
    function DrawEllipse(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                         DrawOptions: Integer): Integer; dispid 59768984;
    function DrawEllipticArc(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                             StartAngle: Double; EndAngle: Double; Pie: Integer; 
                             DrawOptions: Integer): Integer; dispid 59768985;
    function DrawHTMLText(Left: Double; Top: Double; Width: Double; const HTMLText: WideString): Integer; dispid 59768986;
    function DrawHTMLTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                             const HTMLText: WideString): WideString; dispid 59768987;
    function DrawImage(Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59768988;
    function DrawImageMatrix(M11: Double; M12: Double; M21: Double; M22: Double; MDX: Double; 
                             MDY: Double): Integer; dispid 59768989;
    function DrawIntelligentMailBarcode(Left: Double; Top: Double; BarWidth: Double; 
                                        FullBarHeight: Double; TrackerHeight: Double; 
                                        SpaceWidth: Double; const BarcodeData: WideString; 
                                        Options: Integer): Integer; dispid 59768990;
    function DrawLine(StartX: Double; StartY: Double; EndX: Double; EndY: Double): Integer; dispid 59768991;
    function DrawMultiLineText(XPos: Double; YPos: Double; const Delimiter: WideString; 
                               const Text: WideString): Integer; dispid 59768992;
    function DrawPDF417Symbol(Left: Double; Top: Double; const Text: WideString; Options: Integer): Integer; dispid 59768993;
    function DrawPath(PathOptions: Integer): Integer; dispid 59768994;
    function DrawPathEvenOdd(PathOptions: Integer): Integer; dispid 59768995;
    function DrawPostScriptXObject(PSRef: Integer): Integer; dispid 59768996;
    function DrawRotatedBox(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                            Angle: Double; DrawOptions: Integer): Integer; dispid 59768997;
    function DrawRotatedCapturedPage(CaptureID: Integer; Left: Double; Bottom: Double; 
                                     Width: Double; Height: Double; Angle: Double): Integer; dispid 59768998;
    function DrawRotatedImage(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                              Angle: Double): Integer; dispid 59768999;
    function DrawRotatedMultiLineText(XPos: Double; YPos: Double; Angle: Double; 
                                      const Delimiter: WideString; const Text: WideString): Integer; dispid 59769000;
    function DrawRotatedText(XPos: Double; YPos: Double; Angle: Double; const Text: WideString): Integer; dispid 59769001;
    function DrawRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                Angle: Double; const Text: WideString; Options: Integer): Integer; dispid 59769002;
    function DrawRoundedBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                            Radius: Double; DrawOptions: Integer): Integer; dispid 59769003;
    function DrawScaledImage(Left: Double; Top: Double; Scale: Double): Integer; dispid 59769004;
    function DrawSpacedText(XPos: Double; YPos: Double; Spacing: Double; const Text: WideString): Integer; dispid 59769005;
    function DrawTableRows(TableID: Integer; Left: Double; Top: Double; Height: Double; 
                           FirstRow: Integer; LastRow: Integer): Double; dispid 59769006;
    function DrawText(XPos: Double; YPos: Double; const Text: WideString): Integer; dispid 59769007;
    function DrawTextArc(XPos: Double; YPos: Double; Radius: Double; Angle: Double; 
                         const Text: WideString; DrawOptions: Integer): Integer; dispid 59769008;
    function DrawTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Options: Integer): Integer; dispid 59769009;
    function DrawWrappedText(XPos: Double; YPos: Double; Width: Double; const Text: WideString): Integer; dispid 59769010;
    function EditableContentStream: Integer; dispid 59769011;
    function EmbedFile(const Title: WideString; const FileName: WideString; 
                       const MIMEType: WideString): Integer; dispid 59769012;
    function EmbeddedFileCount: Integer; dispid 59769013;
    function EncapsulateContentStream: Integer; dispid 59769014;
    function EncodePermissions(CanPrint: Integer; CanCopy: Integer; CanChange: Integer; 
                               CanAddNotes: Integer; CanFillFields: Integer; 
                               CanCopyAccess: Integer; CanAssemble: Integer; CanPrintFull: Integer): Integer; dispid 59769015;
    function EncodeStringFromVariant(NumberList: OleVariant; const Encoding: WideString; 
                                     UnmatchedAction: Integer): WideString; dispid 59769016;
    function Encrypt(const Owner: WideString; const User: WideString; Strength: Integer; 
                     Permissions: Integer): Integer; dispid 59769017;
    function EncryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Owner: WideString; const User: WideString; Strength: Integer; 
                         Permissions: Integer): Integer; dispid 59769018;
    function EncryptWithFingerprint(const Fingerprint: WideString): Integer; dispid 59769019;
    function EncryptionAlgorithm: Integer; dispid 59769020;
    function EncryptionStatus: Integer; dispid 59769021;
    function EncryptionStrength: Integer; dispid 59769022;
    function EndPageUpdate: Integer; dispid 59769023;
    function ExtractFilePageContentToVariant(const InputFileName: WideString; 
                                             const Password: WideString; Page: Integer): OleVariant; dispid 59769025;
    function ExtractFilePageText(const InputFileName: WideString; const Password: WideString; 
                                 Page: Integer; Options: Integer): WideString; dispid 59769026;
    function ExtractFilePages(const InputFileName: WideString; const Password: WideString; 
                              const OutputFileName: WideString; const RangeList: WideString): Integer; dispid 59769027;
    function ExtractPageRanges(const RangeList: WideString): Integer; dispid 59769028;
    function ExtractPages(StartPage: Integer; PageCount: Integer): Integer; dispid 59769029;
    function FileListCount(const ListName: WideString): Integer; dispid 59769030;
    function FileListItem(const ListName: WideString; Index: Integer): WideString; dispid 59769031;
    function FindFonts: Integer; dispid 59769032;
    function FindFormFieldByTitle(const Title: WideString): Integer; dispid 59769033;
    function FindImages: Integer; dispid 59769034;
    function FitImage(Left: Double; Top: Double; Width: Double; Height: Double; HAlign: Integer; 
                      VAlign: Integer; Rotate: Integer): Integer; dispid 59769035;
    function FitRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                               Angle: Double; const Text: WideString; Options: Integer): Integer; dispid 59769036;
    function FitTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                        const Text: WideString; Options: Integer): Integer; dispid 59769037;
    function FlattenFormField(Index: Integer): Integer; dispid 59769038;
    function FontCount: Integer; dispid 59769039;
    function FontFamily: WideString; dispid 59769040;
    function FontHasKerning: Integer; dispid 59769041;
    function FontName: WideString; dispid 59769042;
    function FontReference: WideString; dispid 59769043;
    function FontSize: Integer; dispid 59769044;
    function FontType: Integer; dispid 59769045;
    function FormFieldCount: Integer; dispid 59769046;
    function FormFieldHasParent(Index: Integer): Integer; dispid 59769047;
    function FormFieldJavaScriptAction(Index: Integer; const ActionType: WideString; 
                                       const JavaScript: WideString): Integer; dispid 59769048;
    function FormFieldWebLinkAction(Index: Integer; const ActionType: WideString; 
                                    const Link: WideString): Integer; dispid 59769049;
    function GetActionDest(ActionID: Integer): Integer; dispid 59769050;
    function GetActionType(ActionID: Integer): WideString; dispid 59769051;
    function GetActionURL(ActionID: Integer): WideString; dispid 59769052;
    function GetAnalysisInfo(AnalysisID: Integer; AnalysisItem: Integer): WideString; dispid 59769053;
    function GetAnnotActionID(Index: Integer): Integer; dispid 59769054;
    function GetAnnotDblProperty(Index: Integer; Tag: Integer): Double; dispid 59769055;
    function GetAnnotDest(Index: Integer): Integer; dispid 59769056;
    function GetAnnotIntProperty(Index: Integer; Tag: Integer): Integer; dispid 59769057;
    function GetAnnotQuadCount(Index: Integer): Integer; dispid 59769058;
    function GetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; PointNumber: Integer): Double; dispid 59769059;
    function GetAnnotStrProperty(Index: Integer; Tag: Integer): WideString; dispid 59769060;
    function GetBarcodeWidth(NominalWidth: Double; const Text: WideString; Barcode: Integer): Double; dispid 59769061;
    function GetBaseURL: WideString; dispid 59769062;
    function GetCSDictEPSG(CSDictID: Integer): Integer; dispid 59769063;
    function GetCSDictType(CSDictID: Integer): Integer; dispid 59769064;
    function GetCSDictWKT(CSDictID: Integer): WideString; dispid 59769065;
    function GetCanvasDC(CanvasWidth: Integer; CanvasHeight: Integer): Integer; dispid 59769066;
    function GetCatalogInformation(const Key: WideString): WideString; dispid 59769067;
    function GetContentStreamToVariant: OleVariant; dispid 59769069;
    function GetCustomInformation(const Key: WideString): WideString; dispid 59769070;
    function GetCustomKeys(Location: Integer): WideString; dispid 59769071;
    function GetDefaultPrinterName: WideString; dispid 59769072;
    function GetDestName(DestID: Integer): WideString; dispid 59769073;
    function GetDestPage(DestID: Integer): Integer; dispid 59769074;
    function GetDestType(DestID: Integer): Integer; dispid 59769075;
    function GetDestValue(DestID: Integer; ValueKey: Integer): Double; dispid 59769076;
    function GetDocJavaScript(const ActionType: WideString): WideString; dispid 59769077;
    function GetDocumentFileName: WideString; dispid 59769078;
    function GetDocumentFileSize: Integer; dispid 59769079;
    function GetDocumentID(Index: Integer): Integer; dispid 59769080;
    function GetDocumentIdentifier(Part: Integer; Options: Integer): WideString; dispid 59769081;
    function GetDocumentMetadata: WideString; dispid 59769082;
    function GetDocumentRepaired: Integer; dispid 59769083;
    function GetDocumentResourceList: WideString; dispid 59769084;
    function GetEmbeddedFileContentToFile(Index: Integer; const FileName: WideString): Integer; dispid 59769085;
    function GetEmbeddedFileContentToVariant(Index: Integer): OleVariant; dispid 59769088;
    function GetEmbeddedFileID(Index: Integer): Integer; dispid 59769089;
    function GetEmbeddedFileIntProperty(Index: Integer; Tag: Integer): Integer; dispid 59769090;
    function GetEmbeddedFileStrProperty(Index: Integer; Tag: Integer): WideString; dispid 59769091;
    function GetEncryptionFingerprint: WideString; dispid 59769092;
    function GetFileMetadata(const InputFileName: WideString; const Password: WideString): WideString; dispid 59769093;
    function GetFirstChildOutline(OutlineID: Integer): Integer; dispid 59769094;
    function GetFirstOutline: Integer; dispid 59769095;
    function GetFontEncoding: Integer; dispid 59769096;
    function GetFontID(Index: Integer): Integer; dispid 59769097;
    function GetFontObjectNumber: Integer; dispid 59769098;
    function GetFormFieldActionID(Index: Integer; const TriggerEvent: WideString): Integer; dispid 59769099;
    function GetFormFieldAlignment(Index: Integer): Integer; dispid 59769100;
    function GetFormFieldAnnotFlags(Index: Integer): Integer; dispid 59769101;
    function GetFormFieldBackgroundColor(Index: Integer; ColorComponent: Integer): Double; dispid 59769102;
    function GetFormFieldBackgroundColorType(Index: Integer): Integer; dispid 59769103;
    function GetFormFieldBorderColor(Index: Integer; ColorComponent: Integer): Double; dispid 59769104;
    function GetFormFieldBorderColorType(Index: Integer): Integer; dispid 59769105;
    function GetFormFieldBorderProperty(Index: Integer; PropKey: Integer): Double; dispid 59769106;
    function GetFormFieldBorderStyle(Index: Integer): Integer; dispid 59769107;
    function GetFormFieldBound(Index: Integer; Edge: Integer): Double; dispid 59769108;
    function GetFormFieldCaption(Index: Integer): WideString; dispid 59769109;
    function GetFormFieldChildTitle(Index: Integer): WideString; dispid 59769110;
    function GetFormFieldChoiceType(Index: Integer): Integer; dispid 59769111;
    function GetFormFieldColor(Index: Integer; ColorComponent: Integer): Double; dispid 59769112;
    function GetFormFieldComb(Index: Integer): Integer; dispid 59769113;
    function GetFormFieldDefaultValue(Index: Integer): WideString; dispid 59769114;
    function GetFormFieldDescription(Index: Integer): WideString; dispid 59769115;
    function GetFormFieldFlags(Index: Integer): Integer; dispid 59769116;
    function GetFormFieldFontName(Index: Integer): WideString; dispid 59769117;
    function GetFormFieldJavaScript(Index: Integer; const ActionType: WideString): WideString; dispid 59769118;
    function GetFormFieldKidCount(Index: Integer): Integer; dispid 59769119;
    function GetFormFieldMaxLen(Index: Integer): Integer; dispid 59769120;
    function GetFormFieldNoExport(Index: Integer): Integer; dispid 59769121;
    function GetFormFieldPage(Index: Integer): Integer; dispid 59769122;
    function GetFormFieldPrintable(Index: Integer): Integer; dispid 59769123;
    function GetFormFieldReadOnly(Index: Integer): Integer; dispid 59769124;
    function GetFormFieldRequired(Index: Integer): Integer; dispid 59769125;
    function GetFormFieldRotation(Index: Integer): Integer; dispid 59769126;
    function GetFormFieldSubCount(Index: Integer): Integer; dispid 59769127;
    function GetFormFieldSubDisplayName(Index: Integer; SubIndex: Integer): WideString; dispid 59769128;
    function GetFormFieldSubName(Index: Integer; SubIndex: Integer): WideString; dispid 59769129;
    function GetFormFieldSubTempIndex(Index: Integer; SubIndex: Integer): Integer; dispid 59769130;
    function GetFormFieldTabOrder(Index: Integer): Integer; dispid 59769131;
    function GetFormFieldTextFlags(Index: Integer; ValueKey: Integer): Integer; dispid 59769132;
    function GetFormFieldTextSize(Index: Integer): Double; dispid 59769133;
    function GetFormFieldTitle(Index: Integer): WideString; dispid 59769134;
    function GetFormFieldType(Index: Integer): Integer; dispid 59769135;
    function GetFormFieldValue(Index: Integer): WideString; dispid 59769136;
    function GetFormFieldValueByTitle(const Title: WideString): WideString; dispid 59769137;
    function GetFormFieldVisible(Index: Integer): Integer; dispid 59769138;
    function GetFormFieldWebLink(Index: Integer; const ActionType: WideString): WideString; dispid 59769139;
    function GetFormFontCount: Integer; dispid 59769140;
    function GetFormFontName(FontIndex: Integer): WideString; dispid 59769141;
    function GetGlobalJavaScript(const PackageName: WideString): WideString; dispid 59769142;
    function GetHTMLTextHeight(Width: Double; const HTMLText: WideString): Double; dispid 59769143;
    function GetHTMLTextLineCount(Width: Double; const HTMLText: WideString): Integer; dispid 59769144;
    function GetHTMLTextWidth(MaxWidth: Double; const HTMLText: WideString): Double; dispid 59769145;
    function GetImageID(Index: Integer): Integer; dispid 59769146;
    function GetImageListCount(ImageListID: Integer): Integer; dispid 59769147;
    function GetImageListItemDataToVariant(ImageListID: Integer; ImageIndex: Integer; 
                                           Options: Integer): OleVariant; dispid 59769149;
    function GetImageListItemDblProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Double; dispid 59769150;
    function GetImageListItemIntProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Integer; dispid 59769151;
    function GetImageMeasureDict: Integer; dispid 59769152;
    function GetImagePageCount(const FileName: WideString): Integer; dispid 59769153;
    function GetImagePageCountFromString(const Source: WideString): Integer; dispid 59769154;
    function GetImagePtDataDict: Integer; dispid 59769155;
    function GetInformation(Key: Integer): WideString; dispid 59769156;
    function GetInstalledFontsByCharset(CharsetIndex: Integer; Options: Integer): WideString; dispid 59769157;
    function GetInstalledFontsByCodePage(CodePage: Integer; Options: Integer): WideString; dispid 59769158;
    function GetKerning(const CharPair: WideString): Integer; dispid 59769159;
    function GetLatestPrinterNames: WideString; dispid 59769160;
    function GetMaxObjectNumber: Integer; dispid 59769161;
    function GetMeasureDictBoundsCount(MeasureDictID: Integer): Integer; dispid 59769162;
    function GetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer): Double; dispid 59769163;
    function GetMeasureDictCoordinateSystem(MeasureDictID: Integer): Integer; dispid 59769164;
    function GetMeasureDictDCSDict(MeasureDictID: Integer): Integer; dispid 59769165;
    function GetMeasureDictGCSDict(MeasureDictID: Integer): Integer; dispid 59769166;
    function GetMeasureDictGPTSCount(MeasureDictID: Integer): Integer; dispid 59769167;
    function GetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double; dispid 59769168;
    function GetMeasureDictLPTSCount(MeasureDictID: Integer): Integer; dispid 59769169;
    function GetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double; dispid 59769170;
    function GetMeasureDictPDU(MeasureDictID: Integer; UnitIndex: Integer): Integer; dispid 59769171;
    function GetNamedDestination(const DestName: WideString): Integer; dispid 59769172;
    function GetNextOutline(OutlineID: Integer): Integer; dispid 59769173;
    function GetObjectCount: Integer; dispid 59769174;
    function GetObjectToVariant(ObjectNumber: Integer): OleVariant; dispid 59769176;
    function GetOpenActionDestination: Integer; dispid 59769177;
    function GetOpenActionJavaScript: WideString; dispid 59769178;
    function GetOptionalContentConfigCount: Integer; dispid 59769179;
    function GetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer): Integer; dispid 59769180;
    function GetOptionalContentConfigOrderCount(OptionalContentConfigID: Integer): Integer; dispid 59769181;
    function GetOptionalContentConfigOrderItemID(OptionalContentConfigID: Integer; 
                                                 ItemIndex: Integer): Integer; dispid 59769182;
    function GetOptionalContentConfigOrderItemLabel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): WideString; dispid 59769183;
    function GetOptionalContentConfigOrderItemLevel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): Integer; dispid 59769184;
    function GetOptionalContentConfigOrderItemType(OptionalContentConfigID: Integer; 
                                                   ItemIndex: Integer): Integer; dispid 59769185;
    function GetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer): Integer; dispid 59769186;
    function GetOptionalContentGroupID(Index: Integer): Integer; dispid 59769187;
    function GetOptionalContentGroupName(OptionalContentGroupID: Integer): WideString; dispid 59769188;
    function GetOptionalContentGroupPrintable(OptionalContentGroupID: Integer): Integer; dispid 59769189;
    function GetOptionalContentGroupVisible(OptionalContentGroupID: Integer): Integer; dispid 59769190;
    function GetOrigin: Integer; dispid 59769191;
    function GetOutlineActionID(OutlineID: Integer): Integer; dispid 59769192;
    function GetOutlineColor(OutlineID: Integer; ColorComponent: Integer): Double; dispid 59769193;
    function GetOutlineDest(OutlineID: Integer): Integer; dispid 59769194;
    function GetOutlineID(Index: Integer): Integer; dispid 59769195;
    function GetOutlineJavaScript(OutlineID: Integer): WideString; dispid 59769196;
    function GetOutlineObjectNumber(OutlineID: Integer): Integer; dispid 59769197;
    function GetOutlineOpenFile(OutlineID: Integer): WideString; dispid 59769198;
    function GetOutlinePage(OutlineID: Integer): Integer; dispid 59769199;
    function GetOutlineStyle(OutlineID: Integer): Integer; dispid 59769200;
    function GetOutlineWebLink(OutlineID: Integer): WideString; dispid 59769201;
    function GetPageBox(BoxType: Integer; Dimension: Integer): Double; dispid 59769202;
    function GetPageColorSpaces(Options: Integer): WideString; dispid 59769203;
    function GetPageContentToVariant: OleVariant; dispid 59769205;
    function GetPageImageList(Options: Integer): Integer; dispid 59769206;
    function GetPageJavaScript(const ActionType: WideString): WideString; dispid 59769207;
    function GetPageLGIDictContent(DictIndex: Integer): WideString; dispid 59769208;
    function GetPageLGIDictCount: Integer; dispid 59769209;
    function GetPageLabel(Page: Integer): WideString; dispid 59769210;
    function GetPageLayout: Integer; dispid 59769211;
    function GetPageMode: Integer; dispid 59769212;
    function GetPageText(ExtractOptions: Integer): WideString; dispid 59769213;
    function GetPageViewPortCount: Integer; dispid 59769214;
    function GetPageViewPortID(Index: Integer): Integer; dispid 59769215;
    function GetParentOutline(OutlineID: Integer): Integer; dispid 59769216;
    function GetPrevOutline(OutlineID: Integer): Integer; dispid 59769217;
    function GetPrinterBins(const PrinterName: WideString): WideString; dispid 59769218;
    function GetPrinterDevModeToVariant(const PrinterName: WideString): OleVariant; dispid 59769220;
    function GetPrinterMediaTypes(const PrinterName: WideString): WideString; dispid 59769221;
    function GetPrinterNames: WideString; dispid 59769222;
    function GetRenderScale: Double; dispid 59769223;
    function GetStringListCount(StringListID: Integer): Integer; dispid 59769224;
    function GetStringListItem(StringListID: Integer; ItemIndex: Integer): WideString; dispid 59769225;
    function GetTableCellDblProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Double; dispid 59769226;
    function GetTableCellIntProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Integer; dispid 59769227;
    function GetTableCellStrProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): WideString; dispid 59769228;
    function GetTableColumnCount(TableID: Integer): Integer; dispid 59769229;
    function GetTableLastDrawnRow(TableID: Integer): Integer; dispid 59769230;
    function GetTableRowCount(TableID: Integer): Integer; dispid 59769231;
    function GetTempPath: WideString; dispid 59769232;
    function GetTextAscent: Double; dispid 59769233;
    function GetTextBound(Edge: Integer): Double; dispid 59769234;
    function GetTextDescent: Double; dispid 59769235;
    function GetTextHeight: Double; dispid 59769236;
    function GetTextSize: Double; dispid 59769237;
    function GetTextWidth(const Text: WideString): Double; dispid 59769238;
    function GetUnicodeCharactersFromEncoding(Encoding: Integer): WideString; dispid 59769239;
    function GetViewPortBBox(ViewPortID: Integer; Dimension: Integer): Double; dispid 59769240;
    function GetViewPortMeasureDict(ViewPortID: Integer): Integer; dispid 59769241;
    function GetViewPortName(ViewPortID: Integer): WideString; dispid 59769242;
    function GetViewPortPtDataDict(ViewPortID: Integer): Integer; dispid 59769243;
    function GetViewerPreferences(Option: Integer): Integer; dispid 59769244;
    function GetWrappedText(Width: Double; const Delimiter: WideString; const Text: WideString): WideString; dispid 59769245;
    function GetWrappedTextBreakString(Width: Double; const Delimiter: WideString; 
                                       const Text: WideString): WideString; dispid 59769246;
    function GetWrappedTextHeight(Width: Double; const Text: WideString): Double; dispid 59769247;
    function GetWrappedTextLineCount(Width: Double; const Text: WideString): Integer; dispid 59769248;
    function GetXFAFormFieldCount: Integer; dispid 59769249;
    function GetXFAFormFieldName(Index: Integer): WideString; dispid 59769250;
    function GetXFAFormFieldNames(const Delimiter: WideString): WideString; dispid 59769251;
    function GetXFAFormFieldValue(const XFAFieldName: WideString): WideString; dispid 59769252;
    function GetXFAToString(Options: Integer): WideString; dispid 59769253;
    function GlobalJavaScriptCount: Integer; dispid 59769254;
    function GlobalJavaScriptPackageName(Index: Integer): WideString; dispid 59769255;
    function HasFontResources: Integer; dispid 59769256;
    function HasPageBox(BoxType: Integer): Integer; dispid 59769257;
    function HidePage: Integer; dispid 59769258;
    function ImageCount: Integer; dispid 59769259;
    function ImageFillColor: Integer; dispid 59769260;
    function ImageHeight: Integer; dispid 59769261;
    function ImageHorizontalResolution: Integer; dispid 59769262;
    function ImageResolutionUnits: Integer; dispid 59769263;
    function ImageType: Integer; dispid 59769264;
    function ImageVerticalResolution: Integer; dispid 59769265;
    function ImageWidth: Integer; dispid 59769266;
    function ImportEMFFromFile(const FileName: WideString; FontOptions: Integer; 
                               GeneralOptions: Integer): Integer; dispid 59769267;
    function InsertPages(StartPage: Integer; PageCount: Integer): Integer; dispid 59769269;
    function InsertTableColumns(TableID: Integer; Position: Integer; NewColumnCount: Integer): Integer; dispid 59769270;
    function InsertTableRows(TableID: Integer; Position: Integer; NewRowCount: Integer): Integer; dispid 59769271;
    function IsAnnotFormField(Index: Integer): Integer; dispid 59769272;
    function LastErrorCode: Integer; dispid 59769273;
    function LastRenderError: WideString; dispid 59769274;
    function LibraryVersion: WideString; dispid 59769275;
    function LicenseInfo: WideString; dispid 59769276;
    function Linearized: Integer; dispid 59769277;
    function LoadFromCanvasDC(DPI: Double; Options: Integer): Integer; dispid 59769278;
    function LoadFromFile(const FileName: WideString; const Password: WideString): Integer; dispid 59769279;
    function LoadFromVariant(Source: OleVariant; const Password: WideString): Integer; dispid 59769282;
    function LoadState: Integer; dispid 59769283;
    function MergeDocument(DocumentID: Integer): Integer; dispid 59769284;
    function MergeFileList(const ListName: WideString; const OutputFileName: WideString): Integer; dispid 59769285;
    function MergeFileListFast(const ListName: WideString; const OutputFileName: WideString): Integer; dispid 59769286;
    function MergeFiles(const FirstFileName: WideString; const SecondFileName: WideString; 
                        const OutputFileName: WideString): Integer; dispid 59769287;
    function MergeTableCells(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                             LastRow: Integer; LastColumn: Integer): Integer; dispid 59769289;
    function MoveContentStream(FromPosition: Integer; ToPosition: Integer): Integer; dispid 59769290;
    function MoveOutlineAfter(OutlineID: Integer; SiblingID: Integer): Integer; dispid 59769291;
    function MoveOutlineBefore(OutlineID: Integer; SiblingID: Integer): Integer; dispid 59769292;
    function MovePage(NewPosition: Integer): Integer; dispid 59769293;
    function MovePath(NewX: Double; NewY: Double): Integer; dispid 59769294;
    function MultiplyScale(MultScaleBy: Double): Integer; dispid 59769295;
    function NewChildFormField(Index: Integer; const Title: WideString; FieldType: Integer): Integer; dispid 59769296;
    function NewContentStream: Integer; dispid 59769297;
    function NewCustomPrinter(const OriginalPrinterName: WideString): WideString; dispid 59769298;
    function NewDestination(DestPage: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                            Top: Double; Right: Double; Bottom: Double): Integer; dispid 59769299;
    function NewDocument: Integer; dispid 59769300;
    function NewFormField(const Title: WideString; FieldType: Integer): Integer; dispid 59769301;
    function NewNamedDestination(const DestName: WideString; DestID: Integer): Integer; dispid 59769302;
    function NewOptionalContentGroup(const GroupName: WideString): Integer; dispid 59769303;
    function NewOutline(Parent: Integer; const Title: WideString; DestPage: Integer; 
                        DestPosition: Double): Integer; dispid 59769304;
    function NewPage: Integer; dispid 59769305;
    function NewPageFromCanvasDC(DPI: Integer; Options: Integer): Integer; dispid 59769306;
    function NewPages(PageCount: Integer): Integer; dispid 59769307;
    function NewPostScriptXObject(const PS: WideString): Integer; dispid 59769308;
    function NewRGBAxialShader(const ShaderName: WideString; StartX: Double; StartY: Double; 
                               StartRed: Double; StartGreen: Double; StartBlue: Double; 
                               EndX: Double; EndY: Double; EndRed: Double; EndGreen: Double; 
                               EndBlue: Double; Extend: Integer): Integer; dispid 59769309;
    function NewStaticOutline(Parent: Integer; const Title: WideString): Integer; dispid 59769310;
    function NewTilingPatternFromCapturedPage(const PatternName: WideString; CaptureID: Integer): Integer; dispid 59769311;
    function NoEmbedFontListAdd(const FontName: WideString): Integer; dispid 59769312;
    function NoEmbedFontListCount: Integer; dispid 59769313;
    function NoEmbedFontListGet(Index: Integer): WideString; dispid 59769314;
    function NoEmbedFontListRemoveAll: Integer; dispid 59769315;
    function NoEmbedFontListRemoveIndex(Index: Integer): Integer; dispid 59769316;
    function NoEmbedFontListRemoveName(const FontName: WideString): Integer; dispid 59769317;
    function NormalizePage(NormalizeOptions: Integer): Integer; dispid 59769318;
    function OpenOutline(OutlineID: Integer): Integer; dispid 59769319;
    function OptionalContentGroupCount: Integer; dispid 59769320;
    function OutlineCount: Integer; dispid 59769321;
    function OutlineTitle(OutlineID: Integer): WideString; dispid 59769322;
    function PageCount: Integer; dispid 59769323;
    function PageHeight: Double; dispid 59769324;
    function PageJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer; dispid 59769325;
    function PageRotation: Integer; dispid 59769326;
    function PageWidth: Double; dispid 59769327;
    function PrintDocument(const PrinterName: WideString; StartPage: Integer; EndPage: Integer; 
                           Options: Integer): Integer; dispid 59769328;
    function PrintDocumentToFile(const PrinterName: WideString; StartPage: Integer; 
                                 EndPage: Integer; Options: Integer; const FileName: WideString): Integer; dispid 59769329;
    function PrintOptions(PageScaling: Integer; AutoRotateCenter: Integer; const Title: WideString): Integer; dispid 59769331;
    function ReleaseImage(ImageID: Integer): Integer; dispid 59769333;
    function ReleaseImageList(ImageListID: Integer): Integer; dispid 59769334;
    function RemoveAppearanceStream(Index: Integer): Integer; dispid 59769336;
    function RemoveCustomInformation(const Key: WideString): Integer; dispid 59769337;
    function RemoveDocument(DocumentID: Integer): Integer; dispid 59769338;
    function RemoveEmbeddedFile(Index: Integer): Integer; dispid 59769339;
    function RemoveFormFieldBackgroundColor(Index: Integer): Integer; dispid 59769340;
    function RemoveFormFieldBorderColor(Index: Integer): Integer; dispid 59769341;
    function RemoveGlobalJavaScript(const PackageName: WideString): Integer; dispid 59769342;
    function RemoveOpenAction: Integer; dispid 59769343;
    function RemoveOutline(OutlineID: Integer): Integer; dispid 59769344;
    function RemoveSharedContentStreams: Integer; dispid 59769345;
    function RemoveStyle(const StyleName: WideString): Integer; dispid 59769346;
    function RemoveUsageRights: Integer; dispid 59769347;
    function RemoveXFAEntries(Options: Integer): Integer; dispid 59769348;
    function RenderDocumentToFile(DPI: Integer; StartPage: Integer; EndPage: Integer; 
                                  Options: Integer; const FileName: WideString): Integer; dispid 59769349;
    function RenderPageToDC(DPI: Integer; Page: Integer; DC: Integer): Integer; dispid 59769350;
    function RenderPageToFile(DPI: Integer; Page: Integer; Options: Integer; 
                              const FileName: WideString): Integer; dispid 59769351;
    function RenderPageToVariant(DPI: Integer; Page: Integer; Options: Integer): OleVariant; dispid 59769354;
    function ReplaceFonts: Integer; dispid 59769355;
    function ReplaceImage(OriginalImageID: Integer; NewImageID: Integer): Integer; dispid 59769356;
    function ReplaceTag(const Tag: WideString; const NewValue: WideString): Integer; dispid 59769357;
    function RequestPrinterStatus(StatusCommand: Integer): Integer; dispid 59769358;
    function RetrieveCustomDataToFile(const Key: WideString; const FileName: WideString; 
                                      Location: Integer): Integer; dispid 59769359;
    function RetrieveCustomDataToVariant(const Key: WideString; Location: Integer): OleVariant; dispid 59769361;
    function ReverseImage(Reset: Integer): Integer; dispid 59769362;
    function RotatePage(PageRotation: Integer): Integer; dispid 59769363;
    function SaveFontToFile(const FileName: WideString): Integer; dispid 59769364;
    function SaveImageListItemDataToFile(ImageListID: Integer; ImageIndex: Integer; 
                                         Options: Integer; const ImageFileName: WideString): Integer; dispid 59769365;
    function SaveImageToFile(const FileName: WideString): Integer; dispid 59769366;
    function SaveImageToVariant: OleVariant; dispid 59769369;
    function SaveState: Integer; dispid 59769370;
    function SaveStyle(const StyleName: WideString): Integer; dispid 59769371;
    function SaveToFile(const FileName: WideString): Integer; dispid 59769372;
    function SaveToVariant: OleVariant; dispid 59769375;
    function SecurityInfo(SecurityItem: Integer): Integer; dispid 59769376;
    function SelectContentStream(NewIndex: Integer): Integer; dispid 59769377;
    function SelectDocument(DocumentID: Integer): Integer; dispid 59769378;
    function SelectFont(FontID: Integer): Integer; dispid 59769379;
    function SelectImage(ImageID: Integer): Integer; dispid 59769380;
    function SelectPage(PageNumber: Integer): Integer; dispid 59769381;
    function SelectRenderer(RendererID: Integer): Integer; dispid 59769382;
    function SelectedDocument: Integer; dispid 59769383;
    function SelectedFont: Integer; dispid 59769384;
    function SelectedImage: Integer; dispid 59769385;
    function SelectedPage: Integer; dispid 59769386;
    function SetActionURL(ActionID: Integer; const NewURL: WideString): Integer; dispid 59769387;
    function SetAnnotBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; dispid 59769388;
    function SetAnnotBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                 DashOff: Double): Integer; dispid 59769389;
    function SetAnnotContents(Index: Integer; const NewContents: WideString): Integer; dispid 59769390;
    function SetAnnotDblProperty(Index: Integer; Tag: Integer; NewValue: Double): Integer; dispid 59769391;
    function SetAnnotIntProperty(Index: Integer; Tag: Integer; NewValue: Integer): Integer; dispid 59769392;
    function SetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; X1: Double; Y1: Double; 
                                X2: Double; Y2: Double; X3: Double; Y3: Double; X4: Double; 
                                Y4: Double): Integer; dispid 59769393;
    function SetAnnotRect(Index: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59769394;
    function SetAnnotStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer; dispid 59769395;
    function SetBaseURL(const NewBaseURL: WideString): Integer; dispid 59769397;
    function SetBlendMode(BlendMode: Integer): Integer; dispid 59769398;
    function SetBreakString(const NewBreakString: WideString): Integer; dispid 59769399;
    function SetCSDictEPSG(CSDictID: Integer; NewEPSG: Integer): Integer; dispid 59769400;
    function SetCSDictType(CSDictID: Integer; NewDictType: Integer): Integer; dispid 59769401;
    function SetCSDictWKT(CSDictID: Integer; const NewWKT: WideString): Integer; dispid 59769402;
    function SetCairoFileName(const FileName: WideString): Integer; dispid 59769403;
    function SetCapturedPageOptional(CaptureID: Integer; OptionalContentGroupID: Integer): Integer; dispid 59769404;
    function SetCapturedPageTransparencyGroup(CaptureID: Integer; CS: Integer; Isolate: Integer; 
                                              Knockout: Integer): Integer; dispid 59769405;
    function SetCatalogInformation(const Key: WideString; const NewValue: WideString): Integer; dispid 59769406;
    function SetCharWidth(CharCode: Integer; NewWidth: Integer): Integer; dispid 59769407;
    function SetClippingPath: Integer; dispid 59769408;
    function SetClippingPathEvenOdd: Integer; dispid 59769409;
    function SetCompatibility(CompatibilityItem: Integer; CompatibilityMode: Integer): Integer; dispid 59769410;
    function SetContentStreamFromVariant(NewValue: OleVariant): Integer; dispid 59769412;
    function SetContentStreamOptional(OptionalContentGroupID: Integer): Integer; dispid 59769413;
    function SetCropBox(Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59769414;
    function SetCustomInformation(const Key: WideString; const NewValue: WideString): Integer; dispid 59769415;
    function SetCustomLineDash(const DashPattern: WideString; DashPhase: Double): Integer; dispid 59769416;
    function SetDestProperties(DestID: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                               Top: Double; Right: Double; Bottom: Double): Integer; dispid 59769417;
    function SetDestValue(DestID: Integer; ValueKey: Integer; NewValue: Double): Integer; dispid 59769418;
    function SetDocumentMetadata(const XMP: WideString): Integer; dispid 59769419;
    function SetEmbeddedFileStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer; dispid 59769420;
    function SetFillColor(Red: Double; Green: Double; Blue: Double): Integer; dispid 59769421;
    function SetFillColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769422;
    function SetFillColorSep(const ColorName: WideString; Tint: Double): Integer; dispid 59769423;
    function SetFillShader(const ShaderName: WideString): Integer; dispid 59769424;
    function SetFillTilingPattern(const PatternName: WideString): Integer; dispid 59769425;
    function SetFindImagesMode(NewFindImagesMode: Integer): Integer; dispid 59769426;
    function SetFontEncoding(Encoding: Integer): Integer; dispid 59769427;
    function SetFontFlags(Fixed: Integer; Serif: Integer; Symbolic: Integer; Script: Integer; 
                          Italic: Integer; AllCap: Integer; SmallCap: Integer; ForceBold: Integer): Integer; dispid 59769428;
    function SetFormFieldAlignment(Index: Integer; Alignment: Integer): Integer; dispid 59769429;
    function SetFormFieldAnnotFlags(Index: Integer; NewFlags: Integer): Integer; dispid 59769430;
    function SetFormFieldBackgroundColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; dispid 59769431;
    function SetFormFieldBackgroundColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer; dispid 59769432;
    function SetFormFieldBackgroundColorGray(Index: Integer; Gray: Double): Integer; dispid 59769433;
    function SetFormFieldBackgroundColorSep(Index: Integer; const ColorName: WideString; 
                                            Tint: Double): Integer; dispid 59769434;
    function SetFormFieldBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; dispid 59769435;
    function SetFormFieldBorderColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769436;
    function SetFormFieldBorderColorGray(Index: Integer; Gray: Double): Integer; dispid 59769437;
    function SetFormFieldBorderColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer; dispid 59769438;
    function SetFormFieldBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                     DashOff: Double): Integer; dispid 59769439;
    function SetFormFieldBounds(Index: Integer; Left: Double; Top: Double; Width: Double; 
                                Height: Double): Integer; dispid 59769440;
    function SetFormFieldCalcOrder(Index: Integer; Order: Integer): Integer; dispid 59769441;
    function SetFormFieldCaption(Index: Integer; const NewCaption: WideString): Integer; dispid 59769442;
    function SetFormFieldCheckStyle(Index: Integer; CheckStyle: Integer; Position: Integer): Integer; dispid 59769443;
    function SetFormFieldChildTitle(Index: Integer; const NewTitle: WideString): Integer; dispid 59769444;
    function SetFormFieldChoiceType(Index: Integer; ChoiceType: Integer): Integer; dispid 59769445;
    function SetFormFieldColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer; dispid 59769446;
    function SetFormFieldColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769447;
    function SetFormFieldColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer; dispid 59769448;
    function SetFormFieldComb(Index: Integer; Comb: Integer): Integer; dispid 59769449;
    function SetFormFieldDefaultValue(Index: Integer; const NewDefaultValue: WideString): Integer; dispid 59769450;
    function SetFormFieldDescription(Index: Integer; const NewDescription: WideString): Integer; dispid 59769451;
    function SetFormFieldFlags(Index: Integer; NewFlags: Integer): Integer; dispid 59769452;
    function SetFormFieldFont(Index: Integer; FontIndex: Integer): Integer; dispid 59769453;
    function SetFormFieldHighlightMode(Index: Integer; NewMode: Integer): Integer; dispid 59769454;
    function SetFormFieldIcon(Index: Integer; IconType: Integer; CaptureID: Integer): Integer; dispid 59769455;
    function SetFormFieldIconStyle(Index: Integer; Placement: Integer; Scale: Integer; 
                                   ScaleType: Integer; HorizontalShift: Integer; 
                                   VerticalShift: Integer): Integer; dispid 59769456;
    function SetFormFieldMaxLen(Index: Integer; NewMaxLen: Integer): Integer; dispid 59769457;
    function SetFormFieldNoExport(Index: Integer; NoExport: Integer): Integer; dispid 59769458;
    function SetFormFieldOptional(Index: Integer; OptionalContentGroupID: Integer): Integer; dispid 59769459;
    function SetFormFieldPage(Index: Integer; NewPage: Integer): Integer; dispid 59769460;
    function SetFormFieldPrintable(Index: Integer; Printable: Integer): Integer; dispid 59769461;
    function SetFormFieldReadOnly(Index: Integer; ReadOnly: Integer): Integer; dispid 59769462;
    function SetFormFieldRequired(Index: Integer; Required: Integer): Integer; dispid 59769463;
    function SetFormFieldRotation(Index: Integer; Angle: Integer): Integer; dispid 59769464;
    function SetFormFieldStandardFont(Index: Integer; StandardFontID: Integer): Integer; dispid 59769465;
    function SetFormFieldSubmitAction(Index: Integer; const ActionType: WideString; 
                                      const Link: WideString): Integer; dispid 59769466;
    function SetFormFieldTabOrder(Index: Integer; Order: Integer): Integer; dispid 59769467;
    function SetFormFieldTextFlags(Index: Integer; Multiline: Integer; Password: Integer; 
                                   FileSelect: Integer; DoNotSpellCheck: Integer; 
                                   DoNotScroll: Integer): Integer; dispid 59769468;
    function SetFormFieldTextSize(Index: Integer; NewTextSize: Double): Integer; dispid 59769469;
    function SetFormFieldValue(Index: Integer; const NewValue: WideString): Integer; dispid 59769470;
    function SetFormFieldValueByTitle(const Title: WideString; const NewValue: WideString): Integer; dispid 59769471;
    function SetFormFieldVisible(Index: Integer; Visible: Integer): Integer; dispid 59769472;
    function SetGDIPlusFileName(const DLLFileName: WideString): Integer; dispid 59769473;
    function SetGDIPlusOptions(OptionID: Integer; NewValue: Integer): Integer; dispid 59769474;
    function SetHTMLBoldFont(const FontSet: WideString; FontID: Integer): Integer; dispid 59769475;
    function SetHTMLBoldItalicFont(const FontSet: WideString; FontID: Integer): Integer; dispid 59769476;
    function SetHTMLItalicFont(const FontSet: WideString; FontID: Integer): Integer; dispid 59769477;
    function SetHTMLNormalFont(const FontSet: WideString; FontID: Integer): Integer; dispid 59769478;
    function SetImageAsMask(MaskType: Integer): Integer; dispid 59769479;
    function SetImageMask(FromRed: Double; FromGreen: Double; FromBlue: Double; ToRed: Double; 
                          ToGreen: Double; ToBlue: Double): Integer; dispid 59769480;
    function SetImageMaskCMYK(FromC: Double; FromM: Double; FromY: Double; FromK: Double; 
                              ToC: Double; ToM: Double; ToY: Double; ToK: Double): Integer; dispid 59769481;
    function SetImageMaskFromImage(ImageID: Integer): Integer; dispid 59769482;
    function SetImageOptional(OptionalContentGroupID: Integer): Integer; dispid 59769483;
    function SetImageResolution(Horizontal: Integer; Vertical: Integer; Units: Integer): Integer; dispid 59769484;
    function SetInformation(Key: Integer; const NewValue: WideString): Integer; dispid 59769485;
    function SetJPEGQuality(Quality: Integer): Integer; dispid 59769486;
    function SetJavaScriptMode(JSMode: Integer): Integer; dispid 59769487;
    function SetKerning(const CharPair: WideString; Adjustment: Integer): Integer; dispid 59769488;
    function SetLineCap(LineCap: Integer): Integer; dispid 59769489;
    function SetLineColor(Red: Double; Green: Double; Blue: Double): Integer; dispid 59769490;
    function SetLineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769491;
    function SetLineColorSep(const ColorName: WideString; Tint: Double): Integer; dispid 59769492;
    function SetLineDash(DashOn: Double; DashOff: Double): Integer; dispid 59769493;
    function SetLineDashEx(const DashValues: WideString): Integer; dispid 59769494;
    function SetLineJoin(LineJoin: Integer): Integer; dispid 59769495;
    function SetLineShader(const ShaderName: WideString): Integer; dispid 59769496;
    function SetLineWidth(LineWidth: Double): Integer; dispid 59769497;
    function SetMarkupAnnotStyle(Index: Integer; Red: Double; Green: Double; Blue: Double; 
                                 Transparency: Double): Integer; dispid 59769498;
    function SetMeasureDictBoundsCount(MeasureDictID: Integer; NewCount: Integer): Integer; dispid 59769499;
    function SetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; dispid 59769500;
    function SetMeasureDictCoordinateSystem(MeasureDictID: Integer; CoordinateSystemID: Integer): Integer; dispid 59769501;
    function SetMeasureDictGPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer; dispid 59769502;
    function SetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; dispid 59769503;
    function SetMeasureDictLPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer; dispid 59769504;
    function SetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer; dispid 59769505;
    function SetMeasureDictPDU(MeasureDictID: Integer; LinearUnit: Integer; AreaUnit: Integer; 
                               AngularUnit: Integer): Integer; dispid 59769506;
    function SetMeasurementUnits(MeasurementUnits: Integer): Integer; dispid 59769507;
    function SetNeedAppearances(NewValue: Integer): Integer; dispid 59769508;
    function SetObjectFromVariant(ObjectNumber: Integer; NewValue: OleVariant): Integer; dispid 59769510;
    function SetOpenActionDestination(OpenPage: Integer; Zoom: Integer): Integer; dispid 59769511;
    function SetOpenActionDestinationFull(OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                          Left: Double; Top: Double; Right: Double; Bottom: Double): Integer; dispid 59769512;
    function SetOpenActionJavaScript(const JavaScript: WideString): Integer; dispid 59769513;
    function SetOpenActionMenu(const MenuItem: WideString): Integer; dispid 59769514;
    function SetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer; NewLocked: Integer): Integer; dispid 59769515;
    function SetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer; NewState: Integer): Integer; dispid 59769516;
    function SetOptionalContentGroupName(OptionalContentGroupID: Integer; 
                                         const NewGroupName: WideString): Integer; dispid 59769517;
    function SetOptionalContentGroupPrintable(OptionalContentGroupID: Integer; Printable: Integer): Integer; dispid 59769518;
    function SetOptionalContentGroupVisible(OptionalContentGroupID: Integer; Visible: Integer): Integer; dispid 59769519;
    function SetOrigin(Origin: Integer): Integer; dispid 59769520;
    function SetOutlineColor(OutlineID: Integer; Red: Double; Green: Double; Blue: Double): Integer; dispid 59769521;
    function SetOutlineDestination(OutlineID: Integer; DestPage: Integer; DestPosition: Double): Integer; dispid 59769522;
    function SetOutlineDestinationFull(OutlineID: Integer; DestPage: Integer; Zoom: Integer; 
                                       DestType: Integer; Left: Double; Top: Double; Right: Double; 
                                       Bottom: Double): Integer; dispid 59769523;
    function SetOutlineDestinationZoom(OutlineID: Integer; DestPage: Integer; DestPosition: Double; 
                                       Zoom: Integer): Integer; dispid 59769524;
    function SetOutlineJavaScript(OutlineID: Integer; const JavaScript: WideString): Integer; dispid 59769525;
    function SetOutlineNamedDestination(OutlineID: Integer; const DestName: WideString): Integer; dispid 59769526;
    function SetOutlineOpenFile(OutlineID: Integer; const FileName: WideString): Integer; dispid 59769527;
    function SetOutlineRemoteDestination(OutlineID: Integer; const FileName: WideString; 
                                         OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                         PntLeft: Double; PntTop: Double; PntRight: Double; 
                                         PntBottom: Double; NewWindow: Integer): Integer; dispid 59769528;
    function SetOutlineStyle(OutlineID: Integer; SetItalic: Integer; SetBold: Integer): Integer; dispid 59769529;
    function SetOutlineTitle(OutlineID: Integer; const NewTitle: WideString): Integer; dispid 59769530;
    function SetOutlineWebLink(OutlineID: Integer; const Link: WideString): Integer; dispid 59769531;
    function SetOverprint(StrokingOverprint: Integer; OtherOverprint: Integer; 
                          OverprintMode: Integer): Integer; dispid 59769532;
    function SetPDFAMode(NewMode: Integer): Integer; dispid 59769533;
    function SetPNGTransparencyColor(RedByte: Integer; GreenByte: Integer; BlueByte: Integer): Integer; dispid 59769534;
    function SetPageActionMenu(const MenuItem: WideString): Integer; dispid 59769535;
    function SetPageBox(BoxType: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59769536;
    function SetPageContentFromVariant(NewValue: OleVariant): Integer; dispid 59769538;
    function SetPageDimensions(NewPageWidth: Double; NewPageHeight: Double): Integer; dispid 59769539;
    function SetPageLayout(NewPageLayout: Integer): Integer; dispid 59769540;
    function SetPageMode(NewPageMode: Integer): Integer; dispid 59769541;
    function SetPageSize(const PaperName: WideString): Integer; dispid 59769542;
    function SetPageThumbnail: Integer; dispid 59769543;
    function SetPageTransparencyGroup(CS: Integer; Isolate: Integer; Knockout: Integer): Integer; dispid 59769544;
    function SetPrecision(NewPrecision: Integer): Integer; dispid 59769545;
    function SetPrinterDevModeFromVariant(Source: OleVariant): Integer; dispid 59769547;
    function SetRenderCropType(NewCropType: Integer): Integer; dispid 59769548;
    function SetRenderDCErasePage(NewErasePage: Integer): Integer; dispid 59769549;
    function SetRenderDCOffset(NewOffsetX: Integer; NewOffsetY: Integer): Integer; dispid 59769550;
    function SetRenderScale(NewScale: Double): Integer; dispid 59769551;
    function SetScale(NewScale: Double): Integer; dispid 59769552;
    function SetTableBorderColor(TableID: Integer; BorderIndex: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer; dispid 59769553;
    function SetTableBorderColorCMYK(TableID: Integer; BorderIndex: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer; dispid 59769554;
    function SetTableBorderWidth(TableID: Integer; BorderIndex: Integer; NewWidth: Double): Integer; dispid 59769555;
    function SetTableCellAlignment(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; NewCellAlignment: Integer): Integer; dispid 59769556;
    function SetTableCellBackgroundColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; Red: Double; 
                                         Green: Double; Blue: Double): Integer; dispid 59769557;
    function SetTableCellBackgroundColorCMYK(TableID: Integer; FirstRow: Integer; 
                                             FirstColumn: Integer; LastRow: Integer; 
                                             LastColumn: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer; dispid 59769558;
    function SetTableCellBorderColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     Red: Double; Green: Double; Blue: Double): Integer; dispid 59769559;
    function SetTableCellBorderColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; 
                                         BorderIndex: Integer; C: Double; M: Double; Y: Double; 
                                         K: Double): Integer; dispid 59769560;
    function SetTableCellBorderWidth(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     NewWidth: Double): Integer; dispid 59769561;
    function SetTableCellContent(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                 const HTMLText: WideString): Integer; dispid 59769562;
    function SetTableCellPadding(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                 LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                 NewPadding: Double): Integer; dispid 59769563;
    function SetTableCellTextColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; Red: Double; 
                                   Green: Double; Blue: Double): Integer; dispid 59769564;
    function SetTableCellTextColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                       LastRow: Integer; LastColumn: Integer; C: Double; M: Double; 
                                       Y: Double; K: Double): Integer; dispid 59769565;
    function SetTableCellTextSize(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                  LastRow: Integer; LastColumn: Integer; NewTextSize: Double): Integer; dispid 59769566;
    function SetTableColumnWidth(TableID: Integer; FirstColumn: Integer; LastColumn: Integer; 
                                 NewWidth: Double): Integer; dispid 59769567;
    function SetTableRowHeight(TableID: Integer; FirstRow: Integer; LastRow: Integer; 
                               NewHeight: Double): Integer; dispid 59769568;
    function SetTableThinBorders(TableID: Integer; ThinBorders: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer; dispid 59769569;
    function SetTableThinBordersCMYK(TableID: Integer; ThinBorders: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer; dispid 59769570;
    function SetTempFile(const FileName: WideString): Integer; dispid 59769571;
    function SetTempPath(const NewPath: WideString): Integer; dispid 59769572;
    function SetTextAlign(TextAlign: Integer): Integer; dispid 59769573;
    function SetTextCharSpacing(CharSpacing: Double): Integer; dispid 59769574;
    function SetTextColor(Red: Double; Green: Double; Blue: Double): Integer; dispid 59769575;
    function SetTextColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769576;
    function SetTextColorSep(const ColorName: WideString; Tint: Double): Integer; dispid 59769577;
    function SetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer; dispid 59769578;
    function SetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer; dispid 59769579;
    function SetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer; dispid 59769580;
    function SetTextExtractionWordGap(NewWordGap: Double): Integer; dispid 59769581;
    function SetTextHighlight(Highlight: Integer): Integer; dispid 59769582;
    function SetTextHighlightColor(Red: Double; Green: Double; Blue: Double): Integer; dispid 59769583;
    function SetTextHighlightColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769584;
    function SetTextHighlightColorSep(const ColorName: WideString; Tint: Double): Integer; dispid 59769585;
    function SetTextMode(TextMode: Integer): Integer; dispid 59769586;
    function SetTextRise(Rise: Double): Integer; dispid 59769587;
    function SetTextScaling(ScalePercentage: Double): Integer; dispid 59769588;
    function SetTextShader(const ShaderName: WideString): Integer; dispid 59769589;
    function SetTextSize(TextSize: Double): Integer; dispid 59769590;
    function SetTextSpacing(Spacing: Double): Integer; dispid 59769591;
    function SetTextUnderline(Underline: Integer): Integer; dispid 59769592;
    function SetTextUnderlineColor(Red: Double; Green: Double; Blue: Double): Integer; dispid 59769593;
    function SetTextUnderlineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer; dispid 59769594;
    function SetTextUnderlineColorSep(const ColorName: WideString; Tint: Double): Integer; dispid 59769595;
    function SetTextUnderlineCustomDash(const DashPattern: WideString; DashPhase: Double): Integer; dispid 59769596;
    function SetTextUnderlineDash(DashOn: Double; DashOff: Double): Integer; dispid 59769597;
    function SetTextUnderlineDistance(UnderlineDistance: Double): Integer; dispid 59769598;
    function SetTextUnderlineWidth(UnderlineWidth: Double): Integer; dispid 59769599;
    function SetTextWordSpacing(WordSpacing: Double): Integer; dispid 59769600;
    function SetTransparency(Transparency: Integer): Integer; dispid 59769601;
    function SetViewerPreferences(Option: Integer; NewValue: Integer): Integer; dispid 59769602;
    function SetXFAFormFieldAccess(const XFAFieldName: WideString; NewAccess: Integer): Integer; dispid 59769603;
    function SetXFAFormFieldBorderColor(const XFAFieldName: WideString; Red: Double; Green: Double; 
                                        Blue: Double): Integer; dispid 59769604;
    function SetXFAFormFieldBorderPresence(const XFAFieldName: WideString; NewPresence: Integer): Integer; dispid 59769605;
    function SetXFAFormFieldBorderWidth(const XFAFieldName: WideString; BorderWidth: Double): Integer; dispid 59769606;
    function SetXFAFormFieldValue(const XFAFieldName: WideString; const NewValue: WideString): Integer; dispid 59769607;
    function SetXFAFromString(const Source: WideString; Options: Integer): Integer; dispid 59769608;
    function SetupCustomPrinter(const CustomPrinterName: WideString; Setting: Integer; 
                                NewValue: Integer): Integer; dispid 59769609;
    function SignFile(const InputFileName: WideString; const OpenPassword: WideString; 
                      const SignatureFieldName: WideString; const OutputFileName: WideString; 
                      const PFXFileName: WideString; const PFXPassword: WideString; 
                      const Reason: WideString; const Location: WideString; 
                      const ContactInfo: WideString): Integer; dispid 59769610;
    function SplitPageText(Options: Integer): Integer; dispid 59769611;
    function StartPath(StartX: Double; StartY: Double): Integer; dispid 59769612;
    function StoreCustomDataFromFile(const Key: WideString; const FileName: WideString; 
                                     Location: Integer; Options: Integer): Integer; dispid 59769613;
    function StoreCustomDataFromVariant(const Key: WideString; NewValue: OleVariant; 
                                        Location: Integer; Options: Integer): Integer; dispid 59769615;
    function TestTempPath: Integer; dispid 59769617;
    function TransformFile(const InputFileName: WideString; const Password: WideString; 
                           const OutputFileName: WideString; TransformType: Integer; 
                           Options: Integer): Integer; dispid 59769618;
    function UnlockKey(const LicenseKey: WideString): Integer; dispid 59769619;
    function Unlocked: Integer; dispid 59769620;
    function UpdateAndFlattenFormField(Index: Integer): Integer; dispid 59769621;
    function UpdateAppearanceStream(Index: Integer): Integer; dispid 59769622;
    function UseKerning(Kern: Integer): Integer; dispid 59769623;
    function UseUnsafeContentStreams(SafetyLevel: Integer): Integer; dispid 59769624;
  end;

// *********************************************************************//
// The Class CoPDFLibrary provides a Create and CreateRemote method to          
// create instances of the default interface IPDFLibrary exposed by              
// the CoClass PDFLibrary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPDFLibrary = class
    class function Create: IPDFLibrary;
    class function CreateRemote(const MachineName: string): IPDFLibrary;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPDFLibrary
// Help String      : DebenuPDFLibraryAX0912.PDFLibrary Object
// Default Interface: IPDFLibrary
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TPDFLibrary = class(TOleServer)
  private
    FIntf: IPDFLibrary;
    function GetDefaultInterface: IPDFLibrary;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDFLibrary);
    procedure Disconnect; override;
    function AddArcToPath(CenterX: Double; CenterY: Double; TotalAngle: Double): Integer;
    function AddCJKFont(CJKFontID: Integer): Integer;
    function AddCurveToPath(CtAX: Double; CtAY: Double; CtBX: Double; CtBY: Double; EndX: Double; 
                            EndY: Double): Integer;
    function AddEmbeddedFile(const FileName: WideString; const MIMEType: WideString): Integer;
    function AddFileAttachment(const Title: WideString; EmbeddedFileID: Integer): Integer;
    function AddFormFieldChoiceSub(Index: Integer; const SubName: WideString; 
                                   const DisplayName: WideString): Integer;
    function AddFormFieldSub(Index: Integer; const SubName: WideString): Integer;
    function AddFormFont(FontID: Integer): Integer;
    function AddGlobalJavaScript(const PackageName: WideString; const JavaScript: WideString): Integer;
    function AddImageFromFile(const FileName: WideString; Options: Integer): Integer;
    function AddImageFromFileOffset(const FileName: WideString; Offset: Integer; 
                                    DataLength: Integer; Options: Integer): Integer;
    function AddImageFromVariant(SourceData: OleVariant; Options: Integer): Integer;
    function AddLGIDictToPage(const DictContent: WideString): Integer;
    function AddLineToPath(EndX: Double; EndY: Double): Integer;
    function AddLinkToDestination(Left: Double; Top: Double; Width: Double; Height: Double; 
                                  DestID: Integer; Options: Integer): Integer;
    function AddLinkToEmbeddedFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                   EmbeddedFileID: Integer; const Title: WideString; 
                                   const Contents: WideString; IconType: Integer; 
                                   Transpareny: Integer): Integer;
    function AddLinkToFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                           const FileName: WideString; Page: Integer; Position: Double; 
                           NewWindow: Integer; Options: Integer): Integer;
    function AddLinkToJavaScript(Left: Double; Top: Double; Width: Double; Height: Double; 
                                 const JavaScript: WideString; Options: Integer): Integer;
    function AddLinkToLocalFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                const FileName: WideString; Options: Integer): Integer;
    function AddLinkToPage(Left: Double; Top: Double; Width: Double; Height: Double; Page: Integer; 
                           Position: Double; Options: Integer): Integer;
    function AddLinkToWeb(Left: Double; Top: Double; Width: Double; Height: Double; 
                          const Link: WideString; Options: Integer): Integer;
    function AddNoteAnnotation(Left: Double; Top: Double; AnnotType: Integer; PopupLeft: Double; 
                               PopupTop: Double; PopupWidth: Double; PopupHeight: Double; 
                               const Title: WideString; const Contents: WideString; Red: Double; 
                               Green: Double; Blue: Double; Open: Integer): Integer;
    function AddOpenTypeFontFromFile(const FileName: WideString; Options: Integer): Integer;
    function AddPageLabels(Start: Integer; Style: Integer; Offset: Integer; const Prefix: WideString): Integer;
    function AddSVGAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer;
    function AddSWFAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; const Title: WideString; 
                                      Options: Integer): Integer;
    function AddSeparationColor(const ColorName: WideString; C: Double; M: Double; Y: Double; 
                                K: Double; Options: Integer): Integer;
    function AddStampAnnotation(Left: Double; Top: Double; Width: Double; Height: Double; 
                                StampType: Integer; const Title: WideString; 
                                const Contents: WideString; Red: Double; Green: Double; 
                                Blue: Double; Options: Integer): Integer;
    function AddStandardFont(StandardFontID: Integer): Integer;
    function AddSubsettedFont(const FontName: WideString; CharsetIndex: Integer; 
                              const SubsetChars: WideString): Integer;
    function AddTextMarkupAnnotation(MarkupType: Integer; Left: Double; Top: Double; Width: Double; 
                                     Height: Double): Integer;
    function AddToFileList(const ListName: WideString; const FileName: WideString): Integer;
    function AddTrueTypeFont(const FontName: WideString; Embed: Integer): Integer;
    function AddTrueTypeFontFromFile(const FileName: WideString): Integer;
    function AddTrueTypeSubsettedFont(const FontName: WideString; const SubsetChars: WideString; 
                                      Options: Integer): Integer;
    function AddType1Font(const FileName: WideString): Integer;
    function AddU3DAnnotationFromFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                      const FileName: WideString; Options: Integer): Integer;
    function AnalyseFile(const InputFileName: WideString; const Password: WideString): Integer;
    function AnnotationCount: Integer;
    function AppendSpace(RelativeSpace: Double): Integer;
    function AppendTableColumns(TableID: Integer; NewColumnCount: Integer): Integer;
    function AppendTableRows(TableID: Integer; NewRowCount: Integer): Integer;
    function AppendText(const Text: WideString): Integer;
    function ApplyStyle(const StyleName: WideString): Integer;
    function AttachAnnotToForm(Index: Integer): Integer;
    function BalanceContentStream: Integer;
    function BeginPageUpdate: Integer;
    function CapturePage(Page: Integer): Integer;
    function CapturePageEx(Page: Integer; Options: Integer): Integer;
    function CharWidth(CharCode: Integer): Integer;
    function CheckFileCompliance(const InputFileName: WideString; const Password: WideString; 
                                 ComplianceTest: Integer; Options: Integer): Integer;
    function CheckObjects: Integer;
    function CheckPageAnnots: Integer;
    function ClearFileList(const ListName: WideString): Integer;
    function ClearImage(ImageID: Integer): Integer;
    function ClearPageLabels: Integer;
    function ClearTextFormatting: Integer;
    function CloneOutlineAction(OutlineID: Integer): Integer;
    function ClonePages(StartPage: Integer; EndPage: Integer; RepeatCount: Integer): Integer;
    function CloseOutline(OutlineID: Integer): Integer;
    function ClosePath: Integer;
    function CombineContentStreams: Integer;
    function CompareOutlines(FirstOutlineID: Integer; SecondOutlineID: Integer): Integer;
    function CompressContent: Integer;
    function CompressFonts(Compress: Integer): Integer;
    function CompressImages(Compress: Integer): Integer;
    function CompressPage: Integer;
    function ContentStreamCount: Integer;
    function ContentStreamSafe: Integer;
    function CopyPageRanges(DocumentID: Integer; const RangeList: WideString): Integer;
    function CopyPageRangesEx(DocumentID: Integer; const RangeList: WideString; Options: Integer): Integer;
    function CreateNewObject: Integer;
    function CreateTable(RowCount: Integer; ColumnCount: Integer): Integer;
    function DAAppendFile(FileHandle: Integer): Integer;
    function DACapturePage(FileHandle: Integer; PageRef: Integer): Integer;
    function DACapturePageEx(FileHandle: Integer; PageRef: Integer; Options: Integer): Integer;
    function DACloseFile(FileHandle: Integer): Integer;
    function DADrawCapturedPage(FileHandle: Integer; DACaptureID: Integer; DestPageRef: Integer; 
                                PntLeft: Double; PntBottom: Double; PntWidth: Double; 
                                PntHeight: Double): Integer;
    function DADrawRotatedCapturedPage(FileHandle: Integer; DACaptureID: Integer; 
                                       DestPageRef: Integer; PntLeft: Double; PntBottom: Double; 
                                       PntWidth: Double; PntHeight: Double; Angle: Double): Integer;
    function DAEmbedFileStreams(FileHandle: Integer; const RootPath: WideString): Integer;
    function DAExtractPageText(FileHandle: Integer; PageRef: Integer; Options: Integer): WideString;
    function DAFindPage(FileHandle: Integer; Page: Integer): Integer;
    function DAGetAnnotationCount(FileHandle: Integer; PageRef: Integer): Integer;
    function DAGetFormFieldCount(FileHandle: Integer): Integer;
    function DAGetFormFieldTitle(FileHandle: Integer; FieldIndex: Integer): WideString;
    function DAGetFormFieldValue(FileHandle: Integer; FieldIndex: Integer): WideString;
    function DAGetImageDataToVariant(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer): OleVariant;
    function DAGetImageDblProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Double;
    function DAGetImageIntProperty(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   PropertyID: Integer): Integer;
    function DAGetImageListCount(FileHandle: Integer; ImageListID: Integer): Integer;
    function DAGetInformation(FileHandle: Integer; const Key: WideString): WideString;
    function DAGetObjectCount(FileHandle: Integer): Integer;
    function DAGetObjectToVariant(FileHandle: Integer; ObjectNumber: Integer): OleVariant;
    function DAGetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; 
                          Dimension: Integer): Double;
    function DAGetPageContentToVariant(FileHandle: Integer; PageRef: Integer): OleVariant;
    function DAGetPageCount(FileHandle: Integer): Integer;
    function DAGetPageHeight(FileHandle: Integer; PageRef: Integer): Double;
    function DAGetPageImageList(FileHandle: Integer; PageRef: Integer): Integer;
    function DAGetPageWidth(FileHandle: Integer; PageRef: Integer): Double;
    function DAHasPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer): Integer;
    function DAHidePage(FileHandle: Integer; PageRef: Integer): Integer;
    function DAMovePage(FileHandle: Integer; PageRef: Integer; TargetPageRef: Integer; 
                        Options: Integer): Integer;
    function DANewPage(FileHandle: Integer): Integer;
    function DANewPages(FileHandle: Integer; PageCount: Integer): Integer;
    function DAOpenFile(const InputFileName: WideString; const Password: WideString): Integer;
    function DAOpenFileReadOnly(const InputFileName: WideString; const Password: WideString): Integer;
    function DAPageRotation(FileHandle: Integer; PageRef: Integer): Integer;
    function DAReleaseImageList(FileHandle: Integer; ImageListID: Integer): Integer;
    function DARemoveUsageRights(FileHandle: Integer): Integer;
    function DARenderPageToDC(FileHandle: Integer; PageRef: Integer; DPI: Integer; DC: Integer): Integer;
    function DARenderPageToFile(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                DPI: Integer; const FileName: WideString): Integer;
    function DARenderPageToVariant(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                   DPI: Integer): OleVariant;
    function DARotatePage(FileHandle: Integer; PageRef: Integer; Angle: Integer; Options: Integer): Integer;
    function DASaveAsFile(FileHandle: Integer; const OutputFileName: WideString): Integer;
    function DASaveImageDataToFile(FileHandle: Integer; ImageListID: Integer; ImageIndex: Integer; 
                                   const ImageFileName: WideString): Integer;
    function DASetInformation(FileHandle: Integer; const Key: WideString; const NewValue: WideString): Integer;
    function DASetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; X1: Double; 
                          Y1: Double; X2: Double; Y2: Double): Integer;
    function DASetPageSize(FileHandle: Integer; PageRef: Integer; PntWidth: Double; 
                           PntHeight: Double): Integer;
    function DASetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function DASetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer;
    function DASetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer;
    function DASetTextExtractionWordGap(NewWordGap: Double): Integer;
    function Decrypt: Integer;
    function DecryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Password: WideString): Integer;
    function DeleteAnalysis(AnalysisID: Integer): Integer;
    function DeleteAnnotation(Index: Integer): Integer;
    function DeleteContentStream: Integer;
    function DeleteFormField(Index: Integer): Integer;
    function DeleteOptionalContentGroup(OptionalContentGroupID: Integer): Integer;
    function DeletePageLGIDict(DictIndex: Integer): Integer;
    function DeletePages(StartPage: Integer; PageCount: Integer): Integer;
    function DocJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer;
    function DocumentCount: Integer;
    function DrawArc(XPos: Double; YPos: Double; Radius: Double; StartAngle: Double; 
                     EndAngle: Double; Pie: Integer; DrawOptions: Integer): Integer;
    function DrawBarcode(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Barcode: Integer; Options: Integer): Integer;
    function DrawBox(Left: Double; Top: Double; Width: Double; Height: Double; DrawOptions: Integer): Integer;
    function DrawCapturedPage(CaptureID: Integer; Left: Double; Top: Double; Width: Double; 
                              Height: Double): Integer;
    function DrawCircle(XPos: Double; YPos: Double; Radius: Double; DrawOptions: Integer): Integer;
    function DrawDataMatrixSymbol(Left: Double; Top: Double; ModuleSize: Double; 
                                  const Text: WideString; Encoding: Integer; SymbolSize: Integer; 
                                  Options: Integer): Integer;
    function DrawEllipse(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                         DrawOptions: Integer): Integer;
    function DrawEllipticArc(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                             StartAngle: Double; EndAngle: Double; Pie: Integer; 
                             DrawOptions: Integer): Integer;
    function DrawHTMLText(Left: Double; Top: Double; Width: Double; const HTMLText: WideString): Integer;
    function DrawHTMLTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                             const HTMLText: WideString): WideString;
    function DrawImage(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function DrawImageMatrix(M11: Double; M12: Double; M21: Double; M22: Double; MDX: Double; 
                             MDY: Double): Integer;
    function DrawIntelligentMailBarcode(Left: Double; Top: Double; BarWidth: Double; 
                                        FullBarHeight: Double; TrackerHeight: Double; 
                                        SpaceWidth: Double; const BarcodeData: WideString; 
                                        Options: Integer): Integer;
    function DrawLine(StartX: Double; StartY: Double; EndX: Double; EndY: Double): Integer;
    function DrawMultiLineText(XPos: Double; YPos: Double; const Delimiter: WideString; 
                               const Text: WideString): Integer;
    function DrawPDF417Symbol(Left: Double; Top: Double; const Text: WideString; Options: Integer): Integer;
    function DrawPath(PathOptions: Integer): Integer;
    function DrawPathEvenOdd(PathOptions: Integer): Integer;
    function DrawPostScriptXObject(PSRef: Integer): Integer;
    function DrawRotatedBox(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                            Angle: Double; DrawOptions: Integer): Integer;
    function DrawRotatedCapturedPage(CaptureID: Integer; Left: Double; Bottom: Double; 
                                     Width: Double; Height: Double; Angle: Double): Integer;
    function DrawRotatedImage(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                              Angle: Double): Integer;
    function DrawRotatedMultiLineText(XPos: Double; YPos: Double; Angle: Double; 
                                      const Delimiter: WideString; const Text: WideString): Integer;
    function DrawRotatedText(XPos: Double; YPos: Double; Angle: Double; const Text: WideString): Integer;
    function DrawRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                Angle: Double; const Text: WideString; Options: Integer): Integer;
    function DrawRoundedBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                            Radius: Double; DrawOptions: Integer): Integer;
    function DrawScaledImage(Left: Double; Top: Double; Scale: Double): Integer;
    function DrawSpacedText(XPos: Double; YPos: Double; Spacing: Double; const Text: WideString): Integer;
    function DrawTableRows(TableID: Integer; Left: Double; Top: Double; Height: Double; 
                           FirstRow: Integer; LastRow: Integer): Double;
    function DrawText(XPos: Double; YPos: Double; const Text: WideString): Integer;
    function DrawTextArc(XPos: Double; YPos: Double; Radius: Double; Angle: Double; 
                         const Text: WideString; DrawOptions: Integer): Integer;
    function DrawTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                         const Text: WideString; Options: Integer): Integer;
    function DrawWrappedText(XPos: Double; YPos: Double; Width: Double; const Text: WideString): Integer;
    function EditableContentStream: Integer;
    function EmbedFile(const Title: WideString; const FileName: WideString; 
                       const MIMEType: WideString): Integer;
    function EmbeddedFileCount: Integer;
    function EncapsulateContentStream: Integer;
    function EncodePermissions(CanPrint: Integer; CanCopy: Integer; CanChange: Integer; 
                               CanAddNotes: Integer; CanFillFields: Integer; 
                               CanCopyAccess: Integer; CanAssemble: Integer; CanPrintFull: Integer): Integer;
    function EncodeStringFromVariant(NumberList: OleVariant; const Encoding: WideString; 
                                     UnmatchedAction: Integer): WideString;
    function Encrypt(const Owner: WideString; const User: WideString; Strength: Integer; 
                     Permissions: Integer): Integer;
    function EncryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                         const Owner: WideString; const User: WideString; Strength: Integer; 
                         Permissions: Integer): Integer;
    function EncryptWithFingerprint(const Fingerprint: WideString): Integer;
    function EncryptionAlgorithm: Integer;
    function EncryptionStatus: Integer;
    function EncryptionStrength: Integer;
    function EndPageUpdate: Integer;
    function ExtractFilePageContentToVariant(const InputFileName: WideString; 
                                             const Password: WideString; Page: Integer): OleVariant;
    function ExtractFilePageText(const InputFileName: WideString; const Password: WideString; 
                                 Page: Integer; Options: Integer): WideString;
    function ExtractFilePages(const InputFileName: WideString; const Password: WideString; 
                              const OutputFileName: WideString; const RangeList: WideString): Integer;
    function ExtractPageRanges(const RangeList: WideString): Integer;
    function ExtractPages(StartPage: Integer; PageCount: Integer): Integer;
    function FileListCount(const ListName: WideString): Integer;
    function FileListItem(const ListName: WideString; Index: Integer): WideString;
    function FindFonts: Integer;
    function FindFormFieldByTitle(const Title: WideString): Integer;
    function FindImages: Integer;
    function FitImage(Left: Double; Top: Double; Width: Double; Height: Double; HAlign: Integer; 
                      VAlign: Integer; Rotate: Integer): Integer;
    function FitRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                               Angle: Double; const Text: WideString; Options: Integer): Integer;
    function FitTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                        const Text: WideString; Options: Integer): Integer;
    function FlattenFormField(Index: Integer): Integer;
    function FontCount: Integer;
    function FontFamily: WideString;
    function FontHasKerning: Integer;
    function FontName: WideString;
    function FontReference: WideString;
    function FontSize: Integer;
    function FontType: Integer;
    function FormFieldCount: Integer;
    function FormFieldHasParent(Index: Integer): Integer;
    function FormFieldJavaScriptAction(Index: Integer; const ActionType: WideString; 
                                       const JavaScript: WideString): Integer;
    function FormFieldWebLinkAction(Index: Integer; const ActionType: WideString; 
                                    const Link: WideString): Integer;
    function GetActionDest(ActionID: Integer): Integer;
    function GetActionType(ActionID: Integer): WideString;
    function GetActionURL(ActionID: Integer): WideString;
    function GetAnalysisInfo(AnalysisID: Integer; AnalysisItem: Integer): WideString;
    function GetAnnotActionID(Index: Integer): Integer;
    function GetAnnotDblProperty(Index: Integer; Tag: Integer): Double;
    function GetAnnotDest(Index: Integer): Integer;
    function GetAnnotIntProperty(Index: Integer; Tag: Integer): Integer;
    function GetAnnotQuadCount(Index: Integer): Integer;
    function GetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; PointNumber: Integer): Double;
    function GetAnnotStrProperty(Index: Integer; Tag: Integer): WideString;
    function GetBarcodeWidth(NominalWidth: Double; const Text: WideString; Barcode: Integer): Double;
    function GetBaseURL: WideString;
    function GetCSDictEPSG(CSDictID: Integer): Integer;
    function GetCSDictType(CSDictID: Integer): Integer;
    function GetCSDictWKT(CSDictID: Integer): WideString;
    function GetCanvasDC(CanvasWidth: Integer; CanvasHeight: Integer): Integer;
    function GetCatalogInformation(const Key: WideString): WideString;
    function GetContentStreamToVariant: OleVariant;
    function GetCustomInformation(const Key: WideString): WideString;
    function GetCustomKeys(Location: Integer): WideString;
    function GetDefaultPrinterName: WideString;
    function GetDestName(DestID: Integer): WideString;
    function GetDestPage(DestID: Integer): Integer;
    function GetDestType(DestID: Integer): Integer;
    function GetDestValue(DestID: Integer; ValueKey: Integer): Double;
    function GetDocJavaScript(const ActionType: WideString): WideString;
    function GetDocumentFileName: WideString;
    function GetDocumentFileSize: Integer;
    function GetDocumentID(Index: Integer): Integer;
    function GetDocumentIdentifier(Part: Integer; Options: Integer): WideString;
    function GetDocumentMetadata: WideString;
    function GetDocumentRepaired: Integer;
    function GetDocumentResourceList: WideString;
    function GetEmbeddedFileContentToFile(Index: Integer; const FileName: WideString): Integer;
    function GetEmbeddedFileContentToVariant(Index: Integer): OleVariant;
    function GetEmbeddedFileID(Index: Integer): Integer;
    function GetEmbeddedFileIntProperty(Index: Integer; Tag: Integer): Integer;
    function GetEmbeddedFileStrProperty(Index: Integer; Tag: Integer): WideString;
    function GetEncryptionFingerprint: WideString;
    function GetFileMetadata(const InputFileName: WideString; const Password: WideString): WideString;
    function GetFirstChildOutline(OutlineID: Integer): Integer;
    function GetFirstOutline: Integer;
    function GetFontEncoding: Integer;
    function GetFontID(Index: Integer): Integer;
    function GetFontObjectNumber: Integer;
    function GetFormFieldActionID(Index: Integer; const TriggerEvent: WideString): Integer;
    function GetFormFieldAlignment(Index: Integer): Integer;
    function GetFormFieldAnnotFlags(Index: Integer): Integer;
    function GetFormFieldBackgroundColor(Index: Integer; ColorComponent: Integer): Double;
    function GetFormFieldBackgroundColorType(Index: Integer): Integer;
    function GetFormFieldBorderColor(Index: Integer; ColorComponent: Integer): Double;
    function GetFormFieldBorderColorType(Index: Integer): Integer;
    function GetFormFieldBorderProperty(Index: Integer; PropKey: Integer): Double;
    function GetFormFieldBorderStyle(Index: Integer): Integer;
    function GetFormFieldBound(Index: Integer; Edge: Integer): Double;
    function GetFormFieldCaption(Index: Integer): WideString;
    function GetFormFieldChildTitle(Index: Integer): WideString;
    function GetFormFieldChoiceType(Index: Integer): Integer;
    function GetFormFieldColor(Index: Integer; ColorComponent: Integer): Double;
    function GetFormFieldComb(Index: Integer): Integer;
    function GetFormFieldDefaultValue(Index: Integer): WideString;
    function GetFormFieldDescription(Index: Integer): WideString;
    function GetFormFieldFlags(Index: Integer): Integer;
    function GetFormFieldFontName(Index: Integer): WideString;
    function GetFormFieldJavaScript(Index: Integer; const ActionType: WideString): WideString;
    function GetFormFieldKidCount(Index: Integer): Integer;
    function GetFormFieldMaxLen(Index: Integer): Integer;
    function GetFormFieldNoExport(Index: Integer): Integer;
    function GetFormFieldPage(Index: Integer): Integer;
    function GetFormFieldPrintable(Index: Integer): Integer;
    function GetFormFieldReadOnly(Index: Integer): Integer;
    function GetFormFieldRequired(Index: Integer): Integer;
    function GetFormFieldRotation(Index: Integer): Integer;
    function GetFormFieldSubCount(Index: Integer): Integer;
    function GetFormFieldSubDisplayName(Index: Integer; SubIndex: Integer): WideString;
    function GetFormFieldSubName(Index: Integer; SubIndex: Integer): WideString;
    function GetFormFieldSubTempIndex(Index: Integer; SubIndex: Integer): Integer;
    function GetFormFieldTabOrder(Index: Integer): Integer;
    function GetFormFieldTextFlags(Index: Integer; ValueKey: Integer): Integer;
    function GetFormFieldTextSize(Index: Integer): Double;
    function GetFormFieldTitle(Index: Integer): WideString;
    function GetFormFieldType(Index: Integer): Integer;
    function GetFormFieldValue(Index: Integer): WideString;
    function GetFormFieldValueByTitle(const Title: WideString): WideString;
    function GetFormFieldVisible(Index: Integer): Integer;
    function GetFormFieldWebLink(Index: Integer; const ActionType: WideString): WideString;
    function GetFormFontCount: Integer;
    function GetFormFontName(FontIndex: Integer): WideString;
    function GetGlobalJavaScript(const PackageName: WideString): WideString;
    function GetHTMLTextHeight(Width: Double; const HTMLText: WideString): Double;
    function GetHTMLTextLineCount(Width: Double; const HTMLText: WideString): Integer;
    function GetHTMLTextWidth(MaxWidth: Double; const HTMLText: WideString): Double;
    function GetImageID(Index: Integer): Integer;
    function GetImageListCount(ImageListID: Integer): Integer;
    function GetImageListItemDataToVariant(ImageListID: Integer; ImageIndex: Integer; 
                                           Options: Integer): OleVariant;
    function GetImageListItemDblProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Double;
    function GetImageListItemIntProperty(ImageListID: Integer; ImageIndex: Integer; 
                                         PropertyID: Integer): Integer;
    function GetImageMeasureDict: Integer;
    function GetImagePageCount(const FileName: WideString): Integer;
    function GetImagePageCountFromString(const Source: WideString): Integer;
    function GetImagePtDataDict: Integer;
    function GetInformation(Key: Integer): WideString;
    function GetInstalledFontsByCharset(CharsetIndex: Integer; Options: Integer): WideString;
    function GetInstalledFontsByCodePage(CodePage: Integer; Options: Integer): WideString;
    function GetKerning(const CharPair: WideString): Integer;
    function GetLatestPrinterNames: WideString;
    function GetMaxObjectNumber: Integer;
    function GetMeasureDictBoundsCount(MeasureDictID: Integer): Integer;
    function GetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
    function GetMeasureDictCoordinateSystem(MeasureDictID: Integer): Integer;
    function GetMeasureDictDCSDict(MeasureDictID: Integer): Integer;
    function GetMeasureDictGCSDict(MeasureDictID: Integer): Integer;
    function GetMeasureDictGPTSCount(MeasureDictID: Integer): Integer;
    function GetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
    function GetMeasureDictLPTSCount(MeasureDictID: Integer): Integer;
    function GetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
    function GetMeasureDictPDU(MeasureDictID: Integer; UnitIndex: Integer): Integer;
    function GetNamedDestination(const DestName: WideString): Integer;
    function GetNextOutline(OutlineID: Integer): Integer;
    function GetObjectCount: Integer;
    function GetObjectToVariant(ObjectNumber: Integer): OleVariant;
    function GetOpenActionDestination: Integer;
    function GetOpenActionJavaScript: WideString;
    function GetOptionalContentConfigCount: Integer;
    function GetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer): Integer;
    function GetOptionalContentConfigOrderCount(OptionalContentConfigID: Integer): Integer;
    function GetOptionalContentConfigOrderItemID(OptionalContentConfigID: Integer; 
                                                 ItemIndex: Integer): Integer;
    function GetOptionalContentConfigOrderItemLabel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): WideString;
    function GetOptionalContentConfigOrderItemLevel(OptionalContentConfigID: Integer; 
                                                    ItemIndex: Integer): Integer;
    function GetOptionalContentConfigOrderItemType(OptionalContentConfigID: Integer; 
                                                   ItemIndex: Integer): Integer;
    function GetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer): Integer;
    function GetOptionalContentGroupID(Index: Integer): Integer;
    function GetOptionalContentGroupName(OptionalContentGroupID: Integer): WideString;
    function GetOptionalContentGroupPrintable(OptionalContentGroupID: Integer): Integer;
    function GetOptionalContentGroupVisible(OptionalContentGroupID: Integer): Integer;
    function GetOrigin: Integer;
    function GetOutlineActionID(OutlineID: Integer): Integer;
    function GetOutlineColor(OutlineID: Integer; ColorComponent: Integer): Double;
    function GetOutlineDest(OutlineID: Integer): Integer;
    function GetOutlineID(Index: Integer): Integer;
    function GetOutlineJavaScript(OutlineID: Integer): WideString;
    function GetOutlineObjectNumber(OutlineID: Integer): Integer;
    function GetOutlineOpenFile(OutlineID: Integer): WideString;
    function GetOutlinePage(OutlineID: Integer): Integer;
    function GetOutlineStyle(OutlineID: Integer): Integer;
    function GetOutlineWebLink(OutlineID: Integer): WideString;
    function GetPageBox(BoxType: Integer; Dimension: Integer): Double;
    function GetPageColorSpaces(Options: Integer): WideString;
    function GetPageContentToVariant: OleVariant;
    function GetPageImageList(Options: Integer): Integer;
    function GetPageJavaScript(const ActionType: WideString): WideString;
    function GetPageLGIDictContent(DictIndex: Integer): WideString;
    function GetPageLGIDictCount: Integer;
    function GetPageLabel(Page: Integer): WideString;
    function GetPageLayout: Integer;
    function GetPageMode: Integer;
    function GetPageText(ExtractOptions: Integer): WideString;
    function GetPageViewPortCount: Integer;
    function GetPageViewPortID(Index: Integer): Integer;
    function GetParentOutline(OutlineID: Integer): Integer;
    function GetPrevOutline(OutlineID: Integer): Integer;
    function GetPrinterBins(const PrinterName: WideString): WideString;
    function GetPrinterDevModeToVariant(const PrinterName: WideString): OleVariant;
    function GetPrinterMediaTypes(const PrinterName: WideString): WideString;
    function GetPrinterNames: WideString;
    function GetRenderScale: Double;
    function GetStringListCount(StringListID: Integer): Integer;
    function GetStringListItem(StringListID: Integer; ItemIndex: Integer): WideString;
    function GetTableCellDblProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Double;
    function GetTableCellIntProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): Integer;
    function GetTableCellStrProperty(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                     Tag: Integer): WideString;
    function GetTableColumnCount(TableID: Integer): Integer;
    function GetTableLastDrawnRow(TableID: Integer): Integer;
    function GetTableRowCount(TableID: Integer): Integer;
    function GetTempPath: WideString;
    function GetTextAscent: Double;
    function GetTextBound(Edge: Integer): Double;
    function GetTextDescent: Double;
    function GetTextHeight: Double;
    function GetTextSize: Double;
    function GetTextWidth(const Text: WideString): Double;
    function GetUnicodeCharactersFromEncoding(Encoding: Integer): WideString;
    function GetViewPortBBox(ViewPortID: Integer; Dimension: Integer): Double;
    function GetViewPortMeasureDict(ViewPortID: Integer): Integer;
    function GetViewPortName(ViewPortID: Integer): WideString;
    function GetViewPortPtDataDict(ViewPortID: Integer): Integer;
    function GetViewerPreferences(Option: Integer): Integer;
    function GetWrappedText(Width: Double; const Delimiter: WideString; const Text: WideString): WideString;
    function GetWrappedTextBreakString(Width: Double; const Delimiter: WideString; 
                                       const Text: WideString): WideString;
    function GetWrappedTextHeight(Width: Double; const Text: WideString): Double;
    function GetWrappedTextLineCount(Width: Double; const Text: WideString): Integer;
    function GetXFAFormFieldCount: Integer;
    function GetXFAFormFieldName(Index: Integer): WideString;
    function GetXFAFormFieldNames(const Delimiter: WideString): WideString;
    function GetXFAFormFieldValue(const XFAFieldName: WideString): WideString;
    function GetXFAToString(Options: Integer): WideString;
    function GlobalJavaScriptCount: Integer;
    function GlobalJavaScriptPackageName(Index: Integer): WideString;
    function HasFontResources: Integer;
    function HasPageBox(BoxType: Integer): Integer;
    function HidePage: Integer;
    function ImageCount: Integer;
    function ImageFillColor: Integer;
    function ImageHeight: Integer;
    function ImageHorizontalResolution: Integer;
    function ImageResolutionUnits: Integer;
    function ImageType: Integer;
    function ImageVerticalResolution: Integer;
    function ImageWidth: Integer;
    function ImportEMFFromFile(const FileName: WideString; FontOptions: Integer; 
                               GeneralOptions: Integer): Integer;
    function InsertPages(StartPage: Integer; PageCount: Integer): Integer;
    function InsertTableColumns(TableID: Integer; Position: Integer; NewColumnCount: Integer): Integer;
    function InsertTableRows(TableID: Integer; Position: Integer; NewRowCount: Integer): Integer;
    function IsAnnotFormField(Index: Integer): Integer;
    function LastErrorCode: Integer;
    function LastRenderError: WideString;
    function LibraryVersion: WideString;
    function LicenseInfo: WideString;
    function Linearized: Integer;
    function LoadFromCanvasDC(DPI: Double; Options: Integer): Integer;
    function LoadFromFile(const FileName: WideString; const Password: WideString): Integer;
    function LoadFromVariant(Source: OleVariant; const Password: WideString): Integer;
    function LoadState: Integer;
    function MergeDocument(DocumentID: Integer): Integer;
    function MergeFileList(const ListName: WideString; const OutputFileName: WideString): Integer;
    function MergeFileListFast(const ListName: WideString; const OutputFileName: WideString): Integer;
    function MergeFiles(const FirstFileName: WideString; const SecondFileName: WideString; 
                        const OutputFileName: WideString): Integer;
    function MergeTableCells(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                             LastRow: Integer; LastColumn: Integer): Integer;
    function MoveContentStream(FromPosition: Integer; ToPosition: Integer): Integer;
    function MoveOutlineAfter(OutlineID: Integer; SiblingID: Integer): Integer;
    function MoveOutlineBefore(OutlineID: Integer; SiblingID: Integer): Integer;
    function MovePage(NewPosition: Integer): Integer;
    function MovePath(NewX: Double; NewY: Double): Integer;
    function MultiplyScale(MultScaleBy: Double): Integer;
    function NewChildFormField(Index: Integer; const Title: WideString; FieldType: Integer): Integer;
    function NewContentStream: Integer;
    function NewCustomPrinter(const OriginalPrinterName: WideString): WideString;
    function NewDestination(DestPage: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                            Top: Double; Right: Double; Bottom: Double): Integer;
    function NewDocument: Integer;
    function NewFormField(const Title: WideString; FieldType: Integer): Integer;
    function NewNamedDestination(const DestName: WideString; DestID: Integer): Integer;
    function NewOptionalContentGroup(const GroupName: WideString): Integer;
    function NewOutline(Parent: Integer; const Title: WideString; DestPage: Integer; 
                        DestPosition: Double): Integer;
    function NewPage: Integer;
    function NewPageFromCanvasDC(DPI: Integer; Options: Integer): Integer;
    function NewPages(PageCount: Integer): Integer;
    function NewPostScriptXObject(const PS: WideString): Integer;
    function NewRGBAxialShader(const ShaderName: WideString; StartX: Double; StartY: Double; 
                               StartRed: Double; StartGreen: Double; StartBlue: Double; 
                               EndX: Double; EndY: Double; EndRed: Double; EndGreen: Double; 
                               EndBlue: Double; Extend: Integer): Integer;
    function NewStaticOutline(Parent: Integer; const Title: WideString): Integer;
    function NewTilingPatternFromCapturedPage(const PatternName: WideString; CaptureID: Integer): Integer;
    function NoEmbedFontListAdd(const FontName: WideString): Integer;
    function NoEmbedFontListCount: Integer;
    function NoEmbedFontListGet(Index: Integer): WideString;
    function NoEmbedFontListRemoveAll: Integer;
    function NoEmbedFontListRemoveIndex(Index: Integer): Integer;
    function NoEmbedFontListRemoveName(const FontName: WideString): Integer;
    function NormalizePage(NormalizeOptions: Integer): Integer;
    function OpenOutline(OutlineID: Integer): Integer;
    function OptionalContentGroupCount: Integer;
    function OutlineCount: Integer;
    function OutlineTitle(OutlineID: Integer): WideString;
    function PageCount: Integer;
    function PageHeight: Double;
    function PageJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer;
    function PageRotation: Integer;
    function PageWidth: Double;
    function PrintDocument(const PrinterName: WideString; StartPage: Integer; EndPage: Integer; 
                           Options: Integer): Integer;
    function PrintDocumentToFile(const PrinterName: WideString; StartPage: Integer; 
                                 EndPage: Integer; Options: Integer; const FileName: WideString): Integer;
    function PrintOptions(PageScaling: Integer; AutoRotateCenter: Integer; const Title: WideString): Integer;
    function ReleaseImage(ImageID: Integer): Integer;
    function ReleaseImageList(ImageListID: Integer): Integer;
    function RemoveAppearanceStream(Index: Integer): Integer;
    function RemoveCustomInformation(const Key: WideString): Integer;
    function RemoveDocument(DocumentID: Integer): Integer;
    function RemoveEmbeddedFile(Index: Integer): Integer;
    function RemoveFormFieldBackgroundColor(Index: Integer): Integer;
    function RemoveFormFieldBorderColor(Index: Integer): Integer;
    function RemoveGlobalJavaScript(const PackageName: WideString): Integer;
    function RemoveOpenAction: Integer;
    function RemoveOutline(OutlineID: Integer): Integer;
    function RemoveSharedContentStreams: Integer;
    function RemoveStyle(const StyleName: WideString): Integer;
    function RemoveUsageRights: Integer;
    function RemoveXFAEntries(Options: Integer): Integer;
    function RenderDocumentToFile(DPI: Integer; StartPage: Integer; EndPage: Integer; 
                                  Options: Integer; const FileName: WideString): Integer;
    function RenderPageToDC(DPI: Integer; Page: Integer; DC: Integer): Integer;
    function RenderPageToFile(DPI: Integer; Page: Integer; Options: Integer; 
                              const FileName: WideString): Integer;
    function RenderPageToVariant(DPI: Integer; Page: Integer; Options: Integer): OleVariant;
    function ReplaceFonts: Integer;
    function ReplaceImage(OriginalImageID: Integer; NewImageID: Integer): Integer;
    function ReplaceTag(const Tag: WideString; const NewValue: WideString): Integer;
    function RequestPrinterStatus(StatusCommand: Integer): Integer;
    function RetrieveCustomDataToFile(const Key: WideString; const FileName: WideString; 
                                      Location: Integer): Integer;
    function RetrieveCustomDataToVariant(const Key: WideString; Location: Integer): OleVariant;
    function ReverseImage(Reset: Integer): Integer;
    function RotatePage(PageRotation: Integer): Integer;
    function SaveFontToFile(const FileName: WideString): Integer;
    function SaveImageListItemDataToFile(ImageListID: Integer; ImageIndex: Integer; 
                                         Options: Integer; const ImageFileName: WideString): Integer;
    function SaveImageToFile(const FileName: WideString): Integer;
    function SaveImageToVariant: OleVariant;
    function SaveState: Integer;
    function SaveStyle(const StyleName: WideString): Integer;
    function SaveToFile(const FileName: WideString): Integer;
    function SaveToVariant: OleVariant;
    function SecurityInfo(SecurityItem: Integer): Integer;
    function SelectContentStream(NewIndex: Integer): Integer;
    function SelectDocument(DocumentID: Integer): Integer;
    function SelectFont(FontID: Integer): Integer;
    function SelectImage(ImageID: Integer): Integer;
    function SelectPage(PageNumber: Integer): Integer;
    function SelectRenderer(RendererID: Integer): Integer;
    function SelectedDocument: Integer;
    function SelectedFont: Integer;
    function SelectedImage: Integer;
    function SelectedPage: Integer;
    function SetActionURL(ActionID: Integer; const NewURL: WideString): Integer;
    function SetAnnotBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
    function SetAnnotBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                 DashOff: Double): Integer;
    function SetAnnotContents(Index: Integer; const NewContents: WideString): Integer;
    function SetAnnotDblProperty(Index: Integer; Tag: Integer; NewValue: Double): Integer;
    function SetAnnotIntProperty(Index: Integer; Tag: Integer; NewValue: Integer): Integer;
    function SetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; X1: Double; Y1: Double; 
                                X2: Double; Y2: Double; X3: Double; Y3: Double; X4: Double; 
                                Y4: Double): Integer;
    function SetAnnotRect(Index: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function SetAnnotStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer;
    function SetBaseURL(const NewBaseURL: WideString): Integer;
    function SetBlendMode(BlendMode: Integer): Integer;
    function SetBreakString(const NewBreakString: WideString): Integer;
    function SetCSDictEPSG(CSDictID: Integer; NewEPSG: Integer): Integer;
    function SetCSDictType(CSDictID: Integer; NewDictType: Integer): Integer;
    function SetCSDictWKT(CSDictID: Integer; const NewWKT: WideString): Integer;
    function SetCairoFileName(const FileName: WideString): Integer;
    function SetCapturedPageOptional(CaptureID: Integer; OptionalContentGroupID: Integer): Integer;
    function SetCapturedPageTransparencyGroup(CaptureID: Integer; CS: Integer; Isolate: Integer; 
                                              Knockout: Integer): Integer;
    function SetCatalogInformation(const Key: WideString; const NewValue: WideString): Integer;
    function SetCharWidth(CharCode: Integer; NewWidth: Integer): Integer;
    function SetClippingPath: Integer;
    function SetClippingPathEvenOdd: Integer;
    function SetCompatibility(CompatibilityItem: Integer; CompatibilityMode: Integer): Integer;
    function SetContentStreamFromVariant(NewValue: OleVariant): Integer;
    function SetContentStreamOptional(OptionalContentGroupID: Integer): Integer;
    function SetCropBox(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function SetCustomInformation(const Key: WideString; const NewValue: WideString): Integer;
    function SetCustomLineDash(const DashPattern: WideString; DashPhase: Double): Integer;
    function SetDestProperties(DestID: Integer; Zoom: Integer; DestType: Integer; Left: Double; 
                               Top: Double; Right: Double; Bottom: Double): Integer;
    function SetDestValue(DestID: Integer; ValueKey: Integer; NewValue: Double): Integer;
    function SetDocumentMetadata(const XMP: WideString): Integer;
    function SetEmbeddedFileStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer;
    function SetFillColor(Red: Double; Green: Double; Blue: Double): Integer;
    function SetFillColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetFillColorSep(const ColorName: WideString; Tint: Double): Integer;
    function SetFillShader(const ShaderName: WideString): Integer;
    function SetFillTilingPattern(const PatternName: WideString): Integer;
    function SetFindImagesMode(NewFindImagesMode: Integer): Integer;
    function SetFontEncoding(Encoding: Integer): Integer;
    function SetFontFlags(Fixed: Integer; Serif: Integer; Symbolic: Integer; Script: Integer; 
                          Italic: Integer; AllCap: Integer; SmallCap: Integer; ForceBold: Integer): Integer;
    function SetFormFieldAlignment(Index: Integer; Alignment: Integer): Integer;
    function SetFormFieldAnnotFlags(Index: Integer; NewFlags: Integer): Integer;
    function SetFormFieldBackgroundColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
    function SetFormFieldBackgroundColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer;
    function SetFormFieldBackgroundColorGray(Index: Integer; Gray: Double): Integer;
    function SetFormFieldBackgroundColorSep(Index: Integer; const ColorName: WideString; 
                                            Tint: Double): Integer;
    function SetFormFieldBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
    function SetFormFieldBorderColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetFormFieldBorderColorGray(Index: Integer; Gray: Double): Integer;
    function SetFormFieldBorderColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer;
    function SetFormFieldBorderStyle(Index: Integer; Width: Double; Style: Integer; DashOn: Double; 
                                     DashOff: Double): Integer;
    function SetFormFieldBounds(Index: Integer; Left: Double; Top: Double; Width: Double; 
                                Height: Double): Integer;
    function SetFormFieldCalcOrder(Index: Integer; Order: Integer): Integer;
    function SetFormFieldCaption(Index: Integer; const NewCaption: WideString): Integer;
    function SetFormFieldCheckStyle(Index: Integer; CheckStyle: Integer; Position: Integer): Integer;
    function SetFormFieldChildTitle(Index: Integer; const NewTitle: WideString): Integer;
    function SetFormFieldChoiceType(Index: Integer; ChoiceType: Integer): Integer;
    function SetFormFieldColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
    function SetFormFieldColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetFormFieldColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer;
    function SetFormFieldComb(Index: Integer; Comb: Integer): Integer;
    function SetFormFieldDefaultValue(Index: Integer; const NewDefaultValue: WideString): Integer;
    function SetFormFieldDescription(Index: Integer; const NewDescription: WideString): Integer;
    function SetFormFieldFlags(Index: Integer; NewFlags: Integer): Integer;
    function SetFormFieldFont(Index: Integer; FontIndex: Integer): Integer;
    function SetFormFieldHighlightMode(Index: Integer; NewMode: Integer): Integer;
    function SetFormFieldIcon(Index: Integer; IconType: Integer; CaptureID: Integer): Integer;
    function SetFormFieldIconStyle(Index: Integer; Placement: Integer; Scale: Integer; 
                                   ScaleType: Integer; HorizontalShift: Integer; 
                                   VerticalShift: Integer): Integer;
    function SetFormFieldMaxLen(Index: Integer; NewMaxLen: Integer): Integer;
    function SetFormFieldNoExport(Index: Integer; NoExport: Integer): Integer;
    function SetFormFieldOptional(Index: Integer; OptionalContentGroupID: Integer): Integer;
    function SetFormFieldPage(Index: Integer; NewPage: Integer): Integer;
    function SetFormFieldPrintable(Index: Integer; Printable: Integer): Integer;
    function SetFormFieldReadOnly(Index: Integer; ReadOnly: Integer): Integer;
    function SetFormFieldRequired(Index: Integer; Required: Integer): Integer;
    function SetFormFieldRotation(Index: Integer; Angle: Integer): Integer;
    function SetFormFieldStandardFont(Index: Integer; StandardFontID: Integer): Integer;
    function SetFormFieldSubmitAction(Index: Integer; const ActionType: WideString; 
                                      const Link: WideString): Integer;
    function SetFormFieldTabOrder(Index: Integer; Order: Integer): Integer;
    function SetFormFieldTextFlags(Index: Integer; Multiline: Integer; Password: Integer; 
                                   FileSelect: Integer; DoNotSpellCheck: Integer; 
                                   DoNotScroll: Integer): Integer;
    function SetFormFieldTextSize(Index: Integer; NewTextSize: Double): Integer;
    function SetFormFieldValue(Index: Integer; const NewValue: WideString): Integer;
    function SetFormFieldValueByTitle(const Title: WideString; const NewValue: WideString): Integer;
    function SetFormFieldVisible(Index: Integer; Visible: Integer): Integer;
    function SetGDIPlusFileName(const DLLFileName: WideString): Integer;
    function SetGDIPlusOptions(OptionID: Integer; NewValue: Integer): Integer;
    function SetHTMLBoldFont(const FontSet: WideString; FontID: Integer): Integer;
    function SetHTMLBoldItalicFont(const FontSet: WideString; FontID: Integer): Integer;
    function SetHTMLItalicFont(const FontSet: WideString; FontID: Integer): Integer;
    function SetHTMLNormalFont(const FontSet: WideString; FontID: Integer): Integer;
    function SetImageAsMask(MaskType: Integer): Integer;
    function SetImageMask(FromRed: Double; FromGreen: Double; FromBlue: Double; ToRed: Double; 
                          ToGreen: Double; ToBlue: Double): Integer;
    function SetImageMaskCMYK(FromC: Double; FromM: Double; FromY: Double; FromK: Double; 
                              ToC: Double; ToM: Double; ToY: Double; ToK: Double): Integer;
    function SetImageMaskFromImage(ImageID: Integer): Integer;
    function SetImageOptional(OptionalContentGroupID: Integer): Integer;
    function SetImageResolution(Horizontal: Integer; Vertical: Integer; Units: Integer): Integer;
    function SetInformation(Key: Integer; const NewValue: WideString): Integer;
    function SetJPEGQuality(Quality: Integer): Integer;
    function SetJavaScriptMode(JSMode: Integer): Integer;
    function SetKerning(const CharPair: WideString; Adjustment: Integer): Integer;
    function SetLineCap(LineCap: Integer): Integer;
    function SetLineColor(Red: Double; Green: Double; Blue: Double): Integer;
    function SetLineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetLineColorSep(const ColorName: WideString; Tint: Double): Integer;
    function SetLineDash(DashOn: Double; DashOff: Double): Integer;
    function SetLineDashEx(const DashValues: WideString): Integer;
    function SetLineJoin(LineJoin: Integer): Integer;
    function SetLineShader(const ShaderName: WideString): Integer;
    function SetLineWidth(LineWidth: Double): Integer;
    function SetMarkupAnnotStyle(Index: Integer; Red: Double; Green: Double; Blue: Double; 
                                 Transparency: Double): Integer;
    function SetMeasureDictBoundsCount(MeasureDictID: Integer; NewCount: Integer): Integer;
    function SetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer;
    function SetMeasureDictCoordinateSystem(MeasureDictID: Integer; CoordinateSystemID: Integer): Integer;
    function SetMeasureDictGPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer;
    function SetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer;
    function SetMeasureDictLPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer;
    function SetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer; NewValue: Double): Integer;
    function SetMeasureDictPDU(MeasureDictID: Integer; LinearUnit: Integer; AreaUnit: Integer; 
                               AngularUnit: Integer): Integer;
    function SetMeasurementUnits(MeasurementUnits: Integer): Integer;
    function SetNeedAppearances(NewValue: Integer): Integer;
    function SetObjectFromVariant(ObjectNumber: Integer; NewValue: OleVariant): Integer;
    function SetOpenActionDestination(OpenPage: Integer; Zoom: Integer): Integer;
    function SetOpenActionDestinationFull(OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                          Left: Double; Top: Double; Right: Double; Bottom: Double): Integer;
    function SetOpenActionJavaScript(const JavaScript: WideString): Integer;
    function SetOpenActionMenu(const MenuItem: WideString): Integer;
    function SetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                            OptionalContentGroupID: Integer; NewLocked: Integer): Integer;
    function SetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                           OptionalContentGroupID: Integer; NewState: Integer): Integer;
    function SetOptionalContentGroupName(OptionalContentGroupID: Integer; 
                                         const NewGroupName: WideString): Integer;
    function SetOptionalContentGroupPrintable(OptionalContentGroupID: Integer; Printable: Integer): Integer;
    function SetOptionalContentGroupVisible(OptionalContentGroupID: Integer; Visible: Integer): Integer;
    function SetOrigin(Origin: Integer): Integer;
    function SetOutlineColor(OutlineID: Integer; Red: Double; Green: Double; Blue: Double): Integer;
    function SetOutlineDestination(OutlineID: Integer; DestPage: Integer; DestPosition: Double): Integer;
    function SetOutlineDestinationFull(OutlineID: Integer; DestPage: Integer; Zoom: Integer; 
                                       DestType: Integer; Left: Double; Top: Double; Right: Double; 
                                       Bottom: Double): Integer;
    function SetOutlineDestinationZoom(OutlineID: Integer; DestPage: Integer; DestPosition: Double; 
                                       Zoom: Integer): Integer;
    function SetOutlineJavaScript(OutlineID: Integer; const JavaScript: WideString): Integer;
    function SetOutlineNamedDestination(OutlineID: Integer; const DestName: WideString): Integer;
    function SetOutlineOpenFile(OutlineID: Integer; const FileName: WideString): Integer;
    function SetOutlineRemoteDestination(OutlineID: Integer; const FileName: WideString; 
                                         OpenPage: Integer; Zoom: Integer; DestType: Integer; 
                                         PntLeft: Double; PntTop: Double; PntRight: Double; 
                                         PntBottom: Double; NewWindow: Integer): Integer;
    function SetOutlineStyle(OutlineID: Integer; SetItalic: Integer; SetBold: Integer): Integer;
    function SetOutlineTitle(OutlineID: Integer; const NewTitle: WideString): Integer;
    function SetOutlineWebLink(OutlineID: Integer; const Link: WideString): Integer;
    function SetOverprint(StrokingOverprint: Integer; OtherOverprint: Integer; 
                          OverprintMode: Integer): Integer;
    function SetPDFAMode(NewMode: Integer): Integer;
    function SetPNGTransparencyColor(RedByte: Integer; GreenByte: Integer; BlueByte: Integer): Integer;
    function SetPageActionMenu(const MenuItem: WideString): Integer;
    function SetPageBox(BoxType: Integer; Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function SetPageContentFromVariant(NewValue: OleVariant): Integer;
    function SetPageDimensions(NewPageWidth: Double; NewPageHeight: Double): Integer;
    function SetPageLayout(NewPageLayout: Integer): Integer;
    function SetPageMode(NewPageMode: Integer): Integer;
    function SetPageSize(const PaperName: WideString): Integer;
    function SetPageThumbnail: Integer;
    function SetPageTransparencyGroup(CS: Integer; Isolate: Integer; Knockout: Integer): Integer;
    function SetPrecision(NewPrecision: Integer): Integer;
    function SetPrinterDevModeFromVariant(Source: OleVariant): Integer;
    function SetRenderCropType(NewCropType: Integer): Integer;
    function SetRenderDCErasePage(NewErasePage: Integer): Integer;
    function SetRenderDCOffset(NewOffsetX: Integer; NewOffsetY: Integer): Integer;
    function SetRenderScale(NewScale: Double): Integer;
    function SetScale(NewScale: Double): Integer;
    function SetTableBorderColor(TableID: Integer; BorderIndex: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer;
    function SetTableBorderColorCMYK(TableID: Integer; BorderIndex: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer;
    function SetTableBorderWidth(TableID: Integer; BorderIndex: Integer; NewWidth: Double): Integer;
    function SetTableCellAlignment(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; NewCellAlignment: Integer): Integer;
    function SetTableCellBackgroundColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; Red: Double; 
                                         Green: Double; Blue: Double): Integer;
    function SetTableCellBackgroundColorCMYK(TableID: Integer; FirstRow: Integer; 
                                             FirstColumn: Integer; LastRow: Integer; 
                                             LastColumn: Integer; C: Double; M: Double; Y: Double; 
                                             K: Double): Integer;
    function SetTableCellBorderColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     Red: Double; Green: Double; Blue: Double): Integer;
    function SetTableCellBorderColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; 
                                         BorderIndex: Integer; C: Double; M: Double; Y: Double; 
                                         K: Double): Integer;
    function SetTableCellBorderWidth(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                     NewWidth: Double): Integer;
    function SetTableCellContent(TableID: Integer; RowNumber: Integer; ColumnNumber: Integer; 
                                 const HTMLText: WideString): Integer;
    function SetTableCellPadding(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                 LastRow: Integer; LastColumn: Integer; BorderIndex: Integer; 
                                 NewPadding: Double): Integer;
    function SetTableCellTextColor(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                   LastRow: Integer; LastColumn: Integer; Red: Double; 
                                   Green: Double; Blue: Double): Integer;
    function SetTableCellTextColorCMYK(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                       LastRow: Integer; LastColumn: Integer; C: Double; M: Double; 
                                       Y: Double; K: Double): Integer;
    function SetTableCellTextSize(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                  LastRow: Integer; LastColumn: Integer; NewTextSize: Double): Integer;
    function SetTableColumnWidth(TableID: Integer; FirstColumn: Integer; LastColumn: Integer; 
                                 NewWidth: Double): Integer;
    function SetTableRowHeight(TableID: Integer; FirstRow: Integer; LastRow: Integer; 
                               NewHeight: Double): Integer;
    function SetTableThinBorders(TableID: Integer; ThinBorders: Integer; Red: Double; 
                                 Green: Double; Blue: Double): Integer;
    function SetTableThinBordersCMYK(TableID: Integer; ThinBorders: Integer; C: Double; M: Double; 
                                     Y: Double; K: Double): Integer;
    function SetTempFile(const FileName: WideString): Integer;
    function SetTempPath(const NewPath: WideString): Integer;
    function SetTextAlign(TextAlign: Integer): Integer;
    function SetTextCharSpacing(CharSpacing: Double): Integer;
    function SetTextColor(Red: Double; Green: Double; Blue: Double): Integer;
    function SetTextColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetTextColorSep(const ColorName: WideString; Tint: Double): Integer;
    function SetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
    function SetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer;
    function SetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer;
    function SetTextExtractionWordGap(NewWordGap: Double): Integer;
    function SetTextHighlight(Highlight: Integer): Integer;
    function SetTextHighlightColor(Red: Double; Green: Double; Blue: Double): Integer;
    function SetTextHighlightColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetTextHighlightColorSep(const ColorName: WideString; Tint: Double): Integer;
    function SetTextMode(TextMode: Integer): Integer;
    function SetTextRise(Rise: Double): Integer;
    function SetTextScaling(ScalePercentage: Double): Integer;
    function SetTextShader(const ShaderName: WideString): Integer;
    function SetTextSize(TextSize: Double): Integer;
    function SetTextSpacing(Spacing: Double): Integer;
    function SetTextUnderline(Underline: Integer): Integer;
    function SetTextUnderlineColor(Red: Double; Green: Double; Blue: Double): Integer;
    function SetTextUnderlineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
    function SetTextUnderlineColorSep(const ColorName: WideString; Tint: Double): Integer;
    function SetTextUnderlineCustomDash(const DashPattern: WideString; DashPhase: Double): Integer;
    function SetTextUnderlineDash(DashOn: Double; DashOff: Double): Integer;
    function SetTextUnderlineDistance(UnderlineDistance: Double): Integer;
    function SetTextUnderlineWidth(UnderlineWidth: Double): Integer;
    function SetTextWordSpacing(WordSpacing: Double): Integer;
    function SetTransparency(Transparency: Integer): Integer;
    function SetViewerPreferences(Option: Integer; NewValue: Integer): Integer;
    function SetXFAFormFieldAccess(const XFAFieldName: WideString; NewAccess: Integer): Integer;
    function SetXFAFormFieldBorderColor(const XFAFieldName: WideString; Red: Double; Green: Double; 
                                        Blue: Double): Integer;
    function SetXFAFormFieldBorderPresence(const XFAFieldName: WideString; NewPresence: Integer): Integer;
    function SetXFAFormFieldBorderWidth(const XFAFieldName: WideString; BorderWidth: Double): Integer;
    function SetXFAFormFieldValue(const XFAFieldName: WideString; const NewValue: WideString): Integer;
    function SetXFAFromString(const Source: WideString; Options: Integer): Integer;
    function SetupCustomPrinter(const CustomPrinterName: WideString; Setting: Integer; 
                                NewValue: Integer): Integer;
    function SignFile(const InputFileName: WideString; const OpenPassword: WideString; 
                      const SignatureFieldName: WideString; const OutputFileName: WideString; 
                      const PFXFileName: WideString; const PFXPassword: WideString; 
                      const Reason: WideString; const Location: WideString; 
                      const ContactInfo: WideString): Integer;
    function SplitPageText(Options: Integer): Integer;
    function StartPath(StartX: Double; StartY: Double): Integer;
    function StoreCustomDataFromFile(const Key: WideString; const FileName: WideString; 
                                     Location: Integer; Options: Integer): Integer;
    function StoreCustomDataFromVariant(const Key: WideString; NewValue: OleVariant; 
                                        Location: Integer; Options: Integer): Integer;
    function TestTempPath: Integer;
    function TransformFile(const InputFileName: WideString; const Password: WideString; 
                           const OutputFileName: WideString; TransformType: Integer; 
                           Options: Integer): Integer;
    function UnlockKey(const LicenseKey: WideString): Integer;
    function Unlocked: Integer;
    function UpdateAndFlattenFormField(Index: Integer): Integer;
    function UpdateAppearanceStream(Index: Integer): Integer;
    function UseKerning(Kern: Integer): Integer;
    function UseUnsafeContentStreams(SafetyLevel: Integer): Integer;
    property DefaultInterface: IPDFLibrary read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoPDFLibrary.Create: IPDFLibrary;
begin
  Result := CreateComObject(CLASS_PDFLibrary) as IPDFLibrary;
end;

class function CoPDFLibrary.CreateRemote(const MachineName: string): IPDFLibrary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PDFLibrary) as IPDFLibrary;
end;

procedure TPDFLibrary.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{BF2F08F8-E5DE-4C02-B9A1-C26AC3FD27C7}';
    IntfIID:   '{A189E5D6-325F-42DC-B9DC-64768F206020}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPDFLibrary.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDFLibrary;
  end;
end;

procedure TPDFLibrary.ConnectTo(svrIntf: IPDFLibrary);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPDFLibrary.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPDFLibrary.GetDefaultInterface: IPDFLibrary;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPDFLibrary.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TPDFLibrary.Destroy;
begin
  inherited Destroy;
end;

function TPDFLibrary.AddArcToPath(CenterX: Double; CenterY: Double; TotalAngle: Double): Integer;
begin
  Result := DefaultInterface.AddArcToPath(CenterX, CenterY, TotalAngle);
end;

function TPDFLibrary.AddCJKFont(CJKFontID: Integer): Integer;
begin
  Result := DefaultInterface.AddCJKFont(CJKFontID);
end;

function TPDFLibrary.AddCurveToPath(CtAX: Double; CtAY: Double; CtBX: Double; CtBY: Double; 
                                    EndX: Double; EndY: Double): Integer;
begin
  Result := DefaultInterface.AddCurveToPath(CtAX, CtAY, CtBX, CtBY, EndX, EndY);
end;

function TPDFLibrary.AddEmbeddedFile(const FileName: WideString; const MIMEType: WideString): Integer;
begin
  Result := DefaultInterface.AddEmbeddedFile(FileName, MIMEType);
end;

function TPDFLibrary.AddFileAttachment(const Title: WideString; EmbeddedFileID: Integer): Integer;
begin
  Result := DefaultInterface.AddFileAttachment(Title, EmbeddedFileID);
end;

function TPDFLibrary.AddFormFieldChoiceSub(Index: Integer; const SubName: WideString; 
                                           const DisplayName: WideString): Integer;
begin
  Result := DefaultInterface.AddFormFieldChoiceSub(Index, SubName, DisplayName);
end;

function TPDFLibrary.AddFormFieldSub(Index: Integer; const SubName: WideString): Integer;
begin
  Result := DefaultInterface.AddFormFieldSub(Index, SubName);
end;

function TPDFLibrary.AddFormFont(FontID: Integer): Integer;
begin
  Result := DefaultInterface.AddFormFont(FontID);
end;

function TPDFLibrary.AddGlobalJavaScript(const PackageName: WideString; const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.AddGlobalJavaScript(PackageName, JavaScript);
end;

function TPDFLibrary.AddImageFromFile(const FileName: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddImageFromFile(FileName, Options);
end;

function TPDFLibrary.AddImageFromFileOffset(const FileName: WideString; Offset: Integer; 
                                            DataLength: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddImageFromFileOffset(FileName, Offset, DataLength, Options);
end;

function TPDFLibrary.AddImageFromVariant(SourceData: OleVariant; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddImageFromVariant(SourceData, Options);
end;

function TPDFLibrary.AddLGIDictToPage(const DictContent: WideString): Integer;
begin
  Result := DefaultInterface.AddLGIDictToPage(DictContent);
end;

function TPDFLibrary.AddLineToPath(EndX: Double; EndY: Double): Integer;
begin
  Result := DefaultInterface.AddLineToPath(EndX, EndY);
end;

function TPDFLibrary.AddLinkToDestination(Left: Double; Top: Double; Width: Double; Height: Double; 
                                          DestID: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToDestination(Left, Top, Width, Height, DestID, Options);
end;

function TPDFLibrary.AddLinkToEmbeddedFile(Left: Double; Top: Double; Width: Double; 
                                           Height: Double; EmbeddedFileID: Integer; 
                                           const Title: WideString; const Contents: WideString; 
                                           IconType: Integer; Transpareny: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToEmbeddedFile(Left, Top, Width, Height, EmbeddedFileID, Title, 
                                                   Contents, IconType, Transpareny);
end;

function TPDFLibrary.AddLinkToFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                   const FileName: WideString; Page: Integer; Position: Double; 
                                   NewWindow: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToFile(Left, Top, Width, Height, FileName, Page, Position, 
                                           NewWindow, Options);
end;

function TPDFLibrary.AddLinkToJavaScript(Left: Double; Top: Double; Width: Double; Height: Double; 
                                         const JavaScript: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToJavaScript(Left, Top, Width, Height, JavaScript, Options);
end;

function TPDFLibrary.AddLinkToLocalFile(Left: Double; Top: Double; Width: Double; Height: Double; 
                                        const FileName: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToLocalFile(Left, Top, Width, Height, FileName, Options);
end;

function TPDFLibrary.AddLinkToPage(Left: Double; Top: Double; Width: Double; Height: Double; 
                                   Page: Integer; Position: Double; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToPage(Left, Top, Width, Height, Page, Position, Options);
end;

function TPDFLibrary.AddLinkToWeb(Left: Double; Top: Double; Width: Double; Height: Double; 
                                  const Link: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddLinkToWeb(Left, Top, Width, Height, Link, Options);
end;

function TPDFLibrary.AddNoteAnnotation(Left: Double; Top: Double; AnnotType: Integer; 
                                       PopupLeft: Double; PopupTop: Double; PopupWidth: Double; 
                                       PopupHeight: Double; const Title: WideString; 
                                       const Contents: WideString; Red: Double; Green: Double; 
                                       Blue: Double; Open: Integer): Integer;
begin
  Result := DefaultInterface.AddNoteAnnotation(Left, Top, AnnotType, PopupLeft, PopupTop, 
                                               PopupWidth, PopupHeight, Title, Contents, Red, 
                                               Green, Blue, Open);
end;

function TPDFLibrary.AddOpenTypeFontFromFile(const FileName: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddOpenTypeFontFromFile(FileName, Options);
end;

function TPDFLibrary.AddPageLabels(Start: Integer; Style: Integer; Offset: Integer; 
                                   const Prefix: WideString): Integer;
begin
  Result := DefaultInterface.AddPageLabels(Start, Style, Offset, Prefix);
end;

function TPDFLibrary.AddSVGAnnotationFromFile(Left: Double; Top: Double; Width: Double; 
                                              Height: Double; const FileName: WideString; 
                                              Options: Integer): Integer;
begin
  Result := DefaultInterface.AddSVGAnnotationFromFile(Left, Top, Width, Height, FileName, Options);
end;

function TPDFLibrary.AddSWFAnnotationFromFile(Left: Double; Top: Double; Width: Double; 
                                              Height: Double; const FileName: WideString; 
                                              const Title: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddSWFAnnotationFromFile(Left, Top, Width, Height, FileName, Title, 
                                                      Options);
end;

function TPDFLibrary.AddSeparationColor(const ColorName: WideString; C: Double; M: Double; 
                                        Y: Double; K: Double; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddSeparationColor(ColorName, C, M, Y, K, Options);
end;

function TPDFLibrary.AddStampAnnotation(Left: Double; Top: Double; Width: Double; Height: Double; 
                                        StampType: Integer; const Title: WideString; 
                                        const Contents: WideString; Red: Double; Green: Double; 
                                        Blue: Double; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddStampAnnotation(Left, Top, Width, Height, StampType, Title, 
                                                Contents, Red, Green, Blue, Options);
end;

function TPDFLibrary.AddStandardFont(StandardFontID: Integer): Integer;
begin
  Result := DefaultInterface.AddStandardFont(StandardFontID);
end;

function TPDFLibrary.AddSubsettedFont(const FontName: WideString; CharsetIndex: Integer; 
                                      const SubsetChars: WideString): Integer;
begin
  Result := DefaultInterface.AddSubsettedFont(FontName, CharsetIndex, SubsetChars);
end;

function TPDFLibrary.AddTextMarkupAnnotation(MarkupType: Integer; Left: Double; Top: Double; 
                                             Width: Double; Height: Double): Integer;
begin
  Result := DefaultInterface.AddTextMarkupAnnotation(MarkupType, Left, Top, Width, Height);
end;

function TPDFLibrary.AddToFileList(const ListName: WideString; const FileName: WideString): Integer;
begin
  Result := DefaultInterface.AddToFileList(ListName, FileName);
end;

function TPDFLibrary.AddTrueTypeFont(const FontName: WideString; Embed: Integer): Integer;
begin
  Result := DefaultInterface.AddTrueTypeFont(FontName, Embed);
end;

function TPDFLibrary.AddTrueTypeFontFromFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.AddTrueTypeFontFromFile(FileName);
end;

function TPDFLibrary.AddTrueTypeSubsettedFont(const FontName: WideString; 
                                              const SubsetChars: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.AddTrueTypeSubsettedFont(FontName, SubsetChars, Options);
end;

function TPDFLibrary.AddType1Font(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.AddType1Font(FileName);
end;

function TPDFLibrary.AddU3DAnnotationFromFile(Left: Double; Top: Double; Width: Double; 
                                              Height: Double; const FileName: WideString; 
                                              Options: Integer): Integer;
begin
  Result := DefaultInterface.AddU3DAnnotationFromFile(Left, Top, Width, Height, FileName, Options);
end;

function TPDFLibrary.AnalyseFile(const InputFileName: WideString; const Password: WideString): Integer;
begin
  Result := DefaultInterface.AnalyseFile(InputFileName, Password);
end;

function TPDFLibrary.AnnotationCount: Integer;
begin
  Result := DefaultInterface.AnnotationCount;
end;

function TPDFLibrary.AppendSpace(RelativeSpace: Double): Integer;
begin
  Result := DefaultInterface.AppendSpace(RelativeSpace);
end;

function TPDFLibrary.AppendTableColumns(TableID: Integer; NewColumnCount: Integer): Integer;
begin
  Result := DefaultInterface.AppendTableColumns(TableID, NewColumnCount);
end;

function TPDFLibrary.AppendTableRows(TableID: Integer; NewRowCount: Integer): Integer;
begin
  Result := DefaultInterface.AppendTableRows(TableID, NewRowCount);
end;

function TPDFLibrary.AppendText(const Text: WideString): Integer;
begin
  Result := DefaultInterface.AppendText(Text);
end;

function TPDFLibrary.ApplyStyle(const StyleName: WideString): Integer;
begin
  Result := DefaultInterface.ApplyStyle(StyleName);
end;

function TPDFLibrary.AttachAnnotToForm(Index: Integer): Integer;
begin
  Result := DefaultInterface.AttachAnnotToForm(Index);
end;

function TPDFLibrary.BalanceContentStream: Integer;
begin
  Result := DefaultInterface.BalanceContentStream;
end;

function TPDFLibrary.BeginPageUpdate: Integer;
begin
  Result := DefaultInterface.BeginPageUpdate;
end;

function TPDFLibrary.CapturePage(Page: Integer): Integer;
begin
  Result := DefaultInterface.CapturePage(Page);
end;

function TPDFLibrary.CapturePageEx(Page: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.CapturePageEx(Page, Options);
end;

function TPDFLibrary.CharWidth(CharCode: Integer): Integer;
begin
  Result := DefaultInterface.CharWidth(CharCode);
end;

function TPDFLibrary.CheckFileCompliance(const InputFileName: WideString; 
                                         const Password: WideString; ComplianceTest: Integer; 
                                         Options: Integer): Integer;
begin
  Result := DefaultInterface.CheckFileCompliance(InputFileName, Password, ComplianceTest, Options);
end;

function TPDFLibrary.CheckObjects: Integer;
begin
  Result := DefaultInterface.CheckObjects;
end;

function TPDFLibrary.CheckPageAnnots: Integer;
begin
  Result := DefaultInterface.CheckPageAnnots;
end;

function TPDFLibrary.ClearFileList(const ListName: WideString): Integer;
begin
  Result := DefaultInterface.ClearFileList(ListName);
end;

function TPDFLibrary.ClearImage(ImageID: Integer): Integer;
begin
  Result := DefaultInterface.ClearImage(ImageID);
end;

function TPDFLibrary.ClearPageLabels: Integer;
begin
  Result := DefaultInterface.ClearPageLabels;
end;

function TPDFLibrary.ClearTextFormatting: Integer;
begin
  Result := DefaultInterface.ClearTextFormatting;
end;

function TPDFLibrary.CloneOutlineAction(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.CloneOutlineAction(OutlineID);
end;

function TPDFLibrary.ClonePages(StartPage: Integer; EndPage: Integer; RepeatCount: Integer): Integer;
begin
  Result := DefaultInterface.ClonePages(StartPage, EndPage, RepeatCount);
end;

function TPDFLibrary.CloseOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.CloseOutline(OutlineID);
end;

function TPDFLibrary.ClosePath: Integer;
begin
  Result := DefaultInterface.ClosePath;
end;

function TPDFLibrary.CombineContentStreams: Integer;
begin
  Result := DefaultInterface.CombineContentStreams;
end;

function TPDFLibrary.CompareOutlines(FirstOutlineID: Integer; SecondOutlineID: Integer): Integer;
begin
  Result := DefaultInterface.CompareOutlines(FirstOutlineID, SecondOutlineID);
end;

function TPDFLibrary.CompressContent: Integer;
begin
  Result := DefaultInterface.CompressContent;
end;

function TPDFLibrary.CompressFonts(Compress: Integer): Integer;
begin
  Result := DefaultInterface.CompressFonts(Compress);
end;

function TPDFLibrary.CompressImages(Compress: Integer): Integer;
begin
  Result := DefaultInterface.CompressImages(Compress);
end;

function TPDFLibrary.CompressPage: Integer;
begin
  Result := DefaultInterface.CompressPage;
end;

function TPDFLibrary.ContentStreamCount: Integer;
begin
  Result := DefaultInterface.ContentStreamCount;
end;

function TPDFLibrary.ContentStreamSafe: Integer;
begin
  Result := DefaultInterface.ContentStreamSafe;
end;

function TPDFLibrary.CopyPageRanges(DocumentID: Integer; const RangeList: WideString): Integer;
begin
  Result := DefaultInterface.CopyPageRanges(DocumentID, RangeList);
end;

function TPDFLibrary.CopyPageRangesEx(DocumentID: Integer; const RangeList: WideString; 
                                      Options: Integer): Integer;
begin
  Result := DefaultInterface.CopyPageRangesEx(DocumentID, RangeList, Options);
end;

function TPDFLibrary.CreateNewObject: Integer;
begin
  Result := DefaultInterface.CreateNewObject;
end;

function TPDFLibrary.CreateTable(RowCount: Integer; ColumnCount: Integer): Integer;
begin
  Result := DefaultInterface.CreateTable(RowCount, ColumnCount);
end;

function TPDFLibrary.DAAppendFile(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DAAppendFile(FileHandle);
end;

function TPDFLibrary.DACapturePage(FileHandle: Integer; PageRef: Integer): Integer;
begin
  Result := DefaultInterface.DACapturePage(FileHandle, PageRef);
end;

function TPDFLibrary.DACapturePageEx(FileHandle: Integer; PageRef: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.DACapturePageEx(FileHandle, PageRef, Options);
end;

function TPDFLibrary.DACloseFile(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DACloseFile(FileHandle);
end;

function TPDFLibrary.DADrawCapturedPage(FileHandle: Integer; DACaptureID: Integer; 
                                        DestPageRef: Integer; PntLeft: Double; PntBottom: Double; 
                                        PntWidth: Double; PntHeight: Double): Integer;
begin
  Result := DefaultInterface.DADrawCapturedPage(FileHandle, DACaptureID, DestPageRef, PntLeft, 
                                                PntBottom, PntWidth, PntHeight);
end;

function TPDFLibrary.DADrawRotatedCapturedPage(FileHandle: Integer; DACaptureID: Integer; 
                                               DestPageRef: Integer; PntLeft: Double; 
                                               PntBottom: Double; PntWidth: Double; 
                                               PntHeight: Double; Angle: Double): Integer;
begin
  Result := DefaultInterface.DADrawRotatedCapturedPage(FileHandle, DACaptureID, DestPageRef, 
                                                       PntLeft, PntBottom, PntWidth, PntHeight, 
                                                       Angle);
end;

function TPDFLibrary.DAEmbedFileStreams(FileHandle: Integer; const RootPath: WideString): Integer;
begin
  Result := DefaultInterface.DAEmbedFileStreams(FileHandle, RootPath);
end;

function TPDFLibrary.DAExtractPageText(FileHandle: Integer; PageRef: Integer; Options: Integer): WideString;
begin
  Result := DefaultInterface.DAExtractPageText(FileHandle, PageRef, Options);
end;

function TPDFLibrary.DAFindPage(FileHandle: Integer; Page: Integer): Integer;
begin
  Result := DefaultInterface.DAFindPage(FileHandle, Page);
end;

function TPDFLibrary.DAGetAnnotationCount(FileHandle: Integer; PageRef: Integer): Integer;
begin
  Result := DefaultInterface.DAGetAnnotationCount(FileHandle, PageRef);
end;

function TPDFLibrary.DAGetFormFieldCount(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DAGetFormFieldCount(FileHandle);
end;

function TPDFLibrary.DAGetFormFieldTitle(FileHandle: Integer; FieldIndex: Integer): WideString;
begin
  Result := DefaultInterface.DAGetFormFieldTitle(FileHandle, FieldIndex);
end;

function TPDFLibrary.DAGetFormFieldValue(FileHandle: Integer; FieldIndex: Integer): WideString;
begin
  Result := DefaultInterface.DAGetFormFieldValue(FileHandle, FieldIndex);
end;

function TPDFLibrary.DAGetImageDataToVariant(FileHandle: Integer; ImageListID: Integer; 
                                             ImageIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.DAGetImageDataToVariant(FileHandle, ImageListID, ImageIndex);
end;

function TPDFLibrary.DAGetImageDblProperty(FileHandle: Integer; ImageListID: Integer; 
                                           ImageIndex: Integer; PropertyID: Integer): Double;
begin
  Result := DefaultInterface.DAGetImageDblProperty(FileHandle, ImageListID, ImageIndex, PropertyID);
end;

function TPDFLibrary.DAGetImageIntProperty(FileHandle: Integer; ImageListID: Integer; 
                                           ImageIndex: Integer; PropertyID: Integer): Integer;
begin
  Result := DefaultInterface.DAGetImageIntProperty(FileHandle, ImageListID, ImageIndex, PropertyID);
end;

function TPDFLibrary.DAGetImageListCount(FileHandle: Integer; ImageListID: Integer): Integer;
begin
  Result := DefaultInterface.DAGetImageListCount(FileHandle, ImageListID);
end;

function TPDFLibrary.DAGetInformation(FileHandle: Integer; const Key: WideString): WideString;
begin
  Result := DefaultInterface.DAGetInformation(FileHandle, Key);
end;

function TPDFLibrary.DAGetObjectCount(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DAGetObjectCount(FileHandle);
end;

function TPDFLibrary.DAGetObjectToVariant(FileHandle: Integer; ObjectNumber: Integer): OleVariant;
begin
  Result := DefaultInterface.DAGetObjectToVariant(FileHandle, ObjectNumber);
end;

function TPDFLibrary.DAGetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; 
                                  Dimension: Integer): Double;
begin
  Result := DefaultInterface.DAGetPageBox(FileHandle, PageRef, BoxIndex, Dimension);
end;

function TPDFLibrary.DAGetPageContentToVariant(FileHandle: Integer; PageRef: Integer): OleVariant;
begin
  Result := DefaultInterface.DAGetPageContentToVariant(FileHandle, PageRef);
end;

function TPDFLibrary.DAGetPageCount(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DAGetPageCount(FileHandle);
end;

function TPDFLibrary.DAGetPageHeight(FileHandle: Integer; PageRef: Integer): Double;
begin
  Result := DefaultInterface.DAGetPageHeight(FileHandle, PageRef);
end;

function TPDFLibrary.DAGetPageImageList(FileHandle: Integer; PageRef: Integer): Integer;
begin
  Result := DefaultInterface.DAGetPageImageList(FileHandle, PageRef);
end;

function TPDFLibrary.DAGetPageWidth(FileHandle: Integer; PageRef: Integer): Double;
begin
  Result := DefaultInterface.DAGetPageWidth(FileHandle, PageRef);
end;

function TPDFLibrary.DAHasPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer): Integer;
begin
  Result := DefaultInterface.DAHasPageBox(FileHandle, PageRef, BoxIndex);
end;

function TPDFLibrary.DAHidePage(FileHandle: Integer; PageRef: Integer): Integer;
begin
  Result := DefaultInterface.DAHidePage(FileHandle, PageRef);
end;

function TPDFLibrary.DAMovePage(FileHandle: Integer; PageRef: Integer; TargetPageRef: Integer; 
                                Options: Integer): Integer;
begin
  Result := DefaultInterface.DAMovePage(FileHandle, PageRef, TargetPageRef, Options);
end;

function TPDFLibrary.DANewPage(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DANewPage(FileHandle);
end;

function TPDFLibrary.DANewPages(FileHandle: Integer; PageCount: Integer): Integer;
begin
  Result := DefaultInterface.DANewPages(FileHandle, PageCount);
end;

function TPDFLibrary.DAOpenFile(const InputFileName: WideString; const Password: WideString): Integer;
begin
  Result := DefaultInterface.DAOpenFile(InputFileName, Password);
end;

function TPDFLibrary.DAOpenFileReadOnly(const InputFileName: WideString; const Password: WideString): Integer;
begin
  Result := DefaultInterface.DAOpenFileReadOnly(InputFileName, Password);
end;

function TPDFLibrary.DAPageRotation(FileHandle: Integer; PageRef: Integer): Integer;
begin
  Result := DefaultInterface.DAPageRotation(FileHandle, PageRef);
end;

function TPDFLibrary.DAReleaseImageList(FileHandle: Integer; ImageListID: Integer): Integer;
begin
  Result := DefaultInterface.DAReleaseImageList(FileHandle, ImageListID);
end;

function TPDFLibrary.DARemoveUsageRights(FileHandle: Integer): Integer;
begin
  Result := DefaultInterface.DARemoveUsageRights(FileHandle);
end;

function TPDFLibrary.DARenderPageToDC(FileHandle: Integer; PageRef: Integer; DPI: Integer; 
                                      DC: Integer): Integer;
begin
  Result := DefaultInterface.DARenderPageToDC(FileHandle, PageRef, DPI, DC);
end;

function TPDFLibrary.DARenderPageToFile(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                        DPI: Integer; const FileName: WideString): Integer;
begin
  Result := DefaultInterface.DARenderPageToFile(FileHandle, PageRef, Options, DPI, FileName);
end;

function TPDFLibrary.DARenderPageToVariant(FileHandle: Integer; PageRef: Integer; Options: Integer; 
                                           DPI: Integer): OleVariant;
begin
  Result := DefaultInterface.DARenderPageToVariant(FileHandle, PageRef, Options, DPI);
end;

function TPDFLibrary.DARotatePage(FileHandle: Integer; PageRef: Integer; Angle: Integer; 
                                  Options: Integer): Integer;
begin
  Result := DefaultInterface.DARotatePage(FileHandle, PageRef, Angle, Options);
end;

function TPDFLibrary.DASaveAsFile(FileHandle: Integer; const OutputFileName: WideString): Integer;
begin
  Result := DefaultInterface.DASaveAsFile(FileHandle, OutputFileName);
end;

function TPDFLibrary.DASaveImageDataToFile(FileHandle: Integer; ImageListID: Integer; 
                                           ImageIndex: Integer; const ImageFileName: WideString): Integer;
begin
  Result := DefaultInterface.DASaveImageDataToFile(FileHandle, ImageListID, ImageIndex, 
                                                   ImageFileName);
end;

function TPDFLibrary.DASetInformation(FileHandle: Integer; const Key: WideString; 
                                      const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.DASetInformation(FileHandle, Key, NewValue);
end;

function TPDFLibrary.DASetPageBox(FileHandle: Integer; PageRef: Integer; BoxIndex: Integer; 
                                  X1: Double; Y1: Double; X2: Double; Y2: Double): Integer;
begin
  Result := DefaultInterface.DASetPageBox(FileHandle, PageRef, BoxIndex, X1, Y1, X2, Y2);
end;

function TPDFLibrary.DASetPageSize(FileHandle: Integer; PageRef: Integer; PntWidth: Double; 
                                   PntHeight: Double): Integer;
begin
  Result := DefaultInterface.DASetPageSize(FileHandle, PageRef, PntWidth, PntHeight);
end;

function TPDFLibrary.DASetTextExtractionArea(Left: Double; Top: Double; Width: Double; 
                                             Height: Double): Integer;
begin
  Result := DefaultInterface.DASetTextExtractionArea(Left, Top, Width, Height);
end;

function TPDFLibrary.DASetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer;
begin
  Result := DefaultInterface.DASetTextExtractionOptions(OptionID, NewValue);
end;

function TPDFLibrary.DASetTextExtractionScaling(Options: Integer; Horizontal: Double; 
                                                Vertical: Double): Integer;
begin
  Result := DefaultInterface.DASetTextExtractionScaling(Options, Horizontal, Vertical);
end;

function TPDFLibrary.DASetTextExtractionWordGap(NewWordGap: Double): Integer;
begin
  Result := DefaultInterface.DASetTextExtractionWordGap(NewWordGap);
end;

function TPDFLibrary.Decrypt: Integer;
begin
  Result := DefaultInterface.Decrypt;
end;

function TPDFLibrary.DecryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                                 const Password: WideString): Integer;
begin
  Result := DefaultInterface.DecryptFile(InputFileName, OutputFileName, Password);
end;

function TPDFLibrary.DeleteAnalysis(AnalysisID: Integer): Integer;
begin
  Result := DefaultInterface.DeleteAnalysis(AnalysisID);
end;

function TPDFLibrary.DeleteAnnotation(Index: Integer): Integer;
begin
  Result := DefaultInterface.DeleteAnnotation(Index);
end;

function TPDFLibrary.DeleteContentStream: Integer;
begin
  Result := DefaultInterface.DeleteContentStream;
end;

function TPDFLibrary.DeleteFormField(Index: Integer): Integer;
begin
  Result := DefaultInterface.DeleteFormField(Index);
end;

function TPDFLibrary.DeleteOptionalContentGroup(OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.DeleteOptionalContentGroup(OptionalContentGroupID);
end;

function TPDFLibrary.DeletePageLGIDict(DictIndex: Integer): Integer;
begin
  Result := DefaultInterface.DeletePageLGIDict(DictIndex);
end;

function TPDFLibrary.DeletePages(StartPage: Integer; PageCount: Integer): Integer;
begin
  Result := DefaultInterface.DeletePages(StartPage, PageCount);
end;

function TPDFLibrary.DocJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.DocJavaScriptAction(ActionType, JavaScript);
end;

function TPDFLibrary.DocumentCount: Integer;
begin
  Result := DefaultInterface.DocumentCount;
end;

function TPDFLibrary.DrawArc(XPos: Double; YPos: Double; Radius: Double; StartAngle: Double; 
                             EndAngle: Double; Pie: Integer; DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawArc(XPos, YPos, Radius, StartAngle, EndAngle, Pie, DrawOptions);
end;

function TPDFLibrary.DrawBarcode(Left: Double; Top: Double; Width: Double; Height: Double; 
                                 const Text: WideString; Barcode: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawBarcode(Left, Top, Width, Height, Text, Barcode, Options);
end;

function TPDFLibrary.DrawBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                             DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawBox(Left, Top, Width, Height, DrawOptions);
end;

function TPDFLibrary.DrawCapturedPage(CaptureID: Integer; Left: Double; Top: Double; Width: Double; 
                                      Height: Double): Integer;
begin
  Result := DefaultInterface.DrawCapturedPage(CaptureID, Left, Top, Width, Height);
end;

function TPDFLibrary.DrawCircle(XPos: Double; YPos: Double; Radius: Double; DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawCircle(XPos, YPos, Radius, DrawOptions);
end;

function TPDFLibrary.DrawDataMatrixSymbol(Left: Double; Top: Double; ModuleSize: Double; 
                                          const Text: WideString; Encoding: Integer; 
                                          SymbolSize: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawDataMatrixSymbol(Left, Top, ModuleSize, Text, Encoding, 
                                                  SymbolSize, Options);
end;

function TPDFLibrary.DrawEllipse(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                                 DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawEllipse(XPos, YPos, Width, Height, DrawOptions);
end;

function TPDFLibrary.DrawEllipticArc(XPos: Double; YPos: Double; Width: Double; Height: Double; 
                                     StartAngle: Double; EndAngle: Double; Pie: Integer; 
                                     DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawEllipticArc(XPos, YPos, Width, Height, StartAngle, EndAngle, Pie, 
                                             DrawOptions);
end;

function TPDFLibrary.DrawHTMLText(Left: Double; Top: Double; Width: Double; 
                                  const HTMLText: WideString): Integer;
begin
  Result := DefaultInterface.DrawHTMLText(Left, Top, Width, HTMLText);
end;

function TPDFLibrary.DrawHTMLTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                     const HTMLText: WideString): WideString;
begin
  Result := DefaultInterface.DrawHTMLTextBox(Left, Top, Width, Height, HTMLText);
end;

function TPDFLibrary.DrawImage(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
begin
  Result := DefaultInterface.DrawImage(Left, Top, Width, Height);
end;

function TPDFLibrary.DrawImageMatrix(M11: Double; M12: Double; M21: Double; M22: Double; 
                                     MDX: Double; MDY: Double): Integer;
begin
  Result := DefaultInterface.DrawImageMatrix(M11, M12, M21, M22, MDX, MDY);
end;

function TPDFLibrary.DrawIntelligentMailBarcode(Left: Double; Top: Double; BarWidth: Double; 
                                                FullBarHeight: Double; TrackerHeight: Double; 
                                                SpaceWidth: Double; const BarcodeData: WideString; 
                                                Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawIntelligentMailBarcode(Left, Top, BarWidth, FullBarHeight, 
                                                        TrackerHeight, SpaceWidth, BarcodeData, 
                                                        Options);
end;

function TPDFLibrary.DrawLine(StartX: Double; StartY: Double; EndX: Double; EndY: Double): Integer;
begin
  Result := DefaultInterface.DrawLine(StartX, StartY, EndX, EndY);
end;

function TPDFLibrary.DrawMultiLineText(XPos: Double; YPos: Double; const Delimiter: WideString; 
                                       const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawMultiLineText(XPos, YPos, Delimiter, Text);
end;

function TPDFLibrary.DrawPDF417Symbol(Left: Double; Top: Double; const Text: WideString; 
                                      Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawPDF417Symbol(Left, Top, Text, Options);
end;

function TPDFLibrary.DrawPath(PathOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawPath(PathOptions);
end;

function TPDFLibrary.DrawPathEvenOdd(PathOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawPathEvenOdd(PathOptions);
end;

function TPDFLibrary.DrawPostScriptXObject(PSRef: Integer): Integer;
begin
  Result := DefaultInterface.DrawPostScriptXObject(PSRef);
end;

function TPDFLibrary.DrawRotatedBox(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                                    Angle: Double; DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawRotatedBox(Left, Bottom, Width, Height, Angle, DrawOptions);
end;

function TPDFLibrary.DrawRotatedCapturedPage(CaptureID: Integer; Left: Double; Bottom: Double; 
                                             Width: Double; Height: Double; Angle: Double): Integer;
begin
  Result := DefaultInterface.DrawRotatedCapturedPage(CaptureID, Left, Bottom, Width, Height, Angle);
end;

function TPDFLibrary.DrawRotatedImage(Left: Double; Bottom: Double; Width: Double; Height: Double; 
                                      Angle: Double): Integer;
begin
  Result := DefaultInterface.DrawRotatedImage(Left, Bottom, Width, Height, Angle);
end;

function TPDFLibrary.DrawRotatedMultiLineText(XPos: Double; YPos: Double; Angle: Double; 
                                              const Delimiter: WideString; const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawRotatedMultiLineText(XPos, YPos, Angle, Delimiter, Text);
end;

function TPDFLibrary.DrawRotatedText(XPos: Double; YPos: Double; Angle: Double; 
                                     const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawRotatedText(XPos, YPos, Angle, Text);
end;

function TPDFLibrary.DrawRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                        Angle: Double; const Text: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawRotatedTextBox(Left, Top, Width, Height, Angle, Text, Options);
end;

function TPDFLibrary.DrawRoundedBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                    Radius: Double; DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawRoundedBox(Left, Top, Width, Height, Radius, DrawOptions);
end;

function TPDFLibrary.DrawScaledImage(Left: Double; Top: Double; Scale: Double): Integer;
begin
  Result := DefaultInterface.DrawScaledImage(Left, Top, Scale);
end;

function TPDFLibrary.DrawSpacedText(XPos: Double; YPos: Double; Spacing: Double; 
                                    const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawSpacedText(XPos, YPos, Spacing, Text);
end;

function TPDFLibrary.DrawTableRows(TableID: Integer; Left: Double; Top: Double; Height: Double; 
                                   FirstRow: Integer; LastRow: Integer): Double;
begin
  Result := DefaultInterface.DrawTableRows(TableID, Left, Top, Height, FirstRow, LastRow);
end;

function TPDFLibrary.DrawText(XPos: Double; YPos: Double; const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawText(XPos, YPos, Text);
end;

function TPDFLibrary.DrawTextArc(XPos: Double; YPos: Double; Radius: Double; Angle: Double; 
                                 const Text: WideString; DrawOptions: Integer): Integer;
begin
  Result := DefaultInterface.DrawTextArc(XPos, YPos, Radius, Angle, Text, DrawOptions);
end;

function TPDFLibrary.DrawTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                 const Text: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.DrawTextBox(Left, Top, Width, Height, Text, Options);
end;

function TPDFLibrary.DrawWrappedText(XPos: Double; YPos: Double; Width: Double; 
                                     const Text: WideString): Integer;
begin
  Result := DefaultInterface.DrawWrappedText(XPos, YPos, Width, Text);
end;

function TPDFLibrary.EditableContentStream: Integer;
begin
  Result := DefaultInterface.EditableContentStream;
end;

function TPDFLibrary.EmbedFile(const Title: WideString; const FileName: WideString; 
                               const MIMEType: WideString): Integer;
begin
  Result := DefaultInterface.EmbedFile(Title, FileName, MIMEType);
end;

function TPDFLibrary.EmbeddedFileCount: Integer;
begin
  Result := DefaultInterface.EmbeddedFileCount;
end;

function TPDFLibrary.EncapsulateContentStream: Integer;
begin
  Result := DefaultInterface.EncapsulateContentStream;
end;

function TPDFLibrary.EncodePermissions(CanPrint: Integer; CanCopy: Integer; CanChange: Integer; 
                                       CanAddNotes: Integer; CanFillFields: Integer; 
                                       CanCopyAccess: Integer; CanAssemble: Integer; 
                                       CanPrintFull: Integer): Integer;
begin
  Result := DefaultInterface.EncodePermissions(CanPrint, CanCopy, CanChange, CanAddNotes, 
                                               CanFillFields, CanCopyAccess, CanAssemble, 
                                               CanPrintFull);
end;

function TPDFLibrary.EncodeStringFromVariant(NumberList: OleVariant; const Encoding: WideString; 
                                             UnmatchedAction: Integer): WideString;
begin
  Result := DefaultInterface.EncodeStringFromVariant(NumberList, Encoding, UnmatchedAction);
end;

function TPDFLibrary.Encrypt(const Owner: WideString; const User: WideString; Strength: Integer; 
                             Permissions: Integer): Integer;
begin
  Result := DefaultInterface.Encrypt(Owner, User, Strength, Permissions);
end;

function TPDFLibrary.EncryptFile(const InputFileName: WideString; const OutputFileName: WideString; 
                                 const Owner: WideString; const User: WideString; 
                                 Strength: Integer; Permissions: Integer): Integer;
begin
  Result := DefaultInterface.EncryptFile(InputFileName, OutputFileName, Owner, User, Strength, 
                                         Permissions);
end;

function TPDFLibrary.EncryptWithFingerprint(const Fingerprint: WideString): Integer;
begin
  Result := DefaultInterface.EncryptWithFingerprint(Fingerprint);
end;

function TPDFLibrary.EncryptionAlgorithm: Integer;
begin
  Result := DefaultInterface.EncryptionAlgorithm;
end;

function TPDFLibrary.EncryptionStatus: Integer;
begin
  Result := DefaultInterface.EncryptionStatus;
end;

function TPDFLibrary.EncryptionStrength: Integer;
begin
  Result := DefaultInterface.EncryptionStrength;
end;

function TPDFLibrary.EndPageUpdate: Integer;
begin
  Result := DefaultInterface.EndPageUpdate;
end;

function TPDFLibrary.ExtractFilePageContentToVariant(const InputFileName: WideString; 
                                                     const Password: WideString; Page: Integer): OleVariant;
begin
  Result := DefaultInterface.ExtractFilePageContentToVariant(InputFileName, Password, Page);
end;

function TPDFLibrary.ExtractFilePageText(const InputFileName: WideString; 
                                         const Password: WideString; Page: Integer; Options: Integer): WideString;
begin
  Result := DefaultInterface.ExtractFilePageText(InputFileName, Password, Page, Options);
end;

function TPDFLibrary.ExtractFilePages(const InputFileName: WideString; const Password: WideString; 
                                      const OutputFileName: WideString; const RangeList: WideString): Integer;
begin
  Result := DefaultInterface.ExtractFilePages(InputFileName, Password, OutputFileName, RangeList);
end;

function TPDFLibrary.ExtractPageRanges(const RangeList: WideString): Integer;
begin
  Result := DefaultInterface.ExtractPageRanges(RangeList);
end;

function TPDFLibrary.ExtractPages(StartPage: Integer; PageCount: Integer): Integer;
begin
  Result := DefaultInterface.ExtractPages(StartPage, PageCount);
end;

function TPDFLibrary.FileListCount(const ListName: WideString): Integer;
begin
  Result := DefaultInterface.FileListCount(ListName);
end;

function TPDFLibrary.FileListItem(const ListName: WideString; Index: Integer): WideString;
begin
  Result := DefaultInterface.FileListItem(ListName, Index);
end;

function TPDFLibrary.FindFonts: Integer;
begin
  Result := DefaultInterface.FindFonts;
end;

function TPDFLibrary.FindFormFieldByTitle(const Title: WideString): Integer;
begin
  Result := DefaultInterface.FindFormFieldByTitle(Title);
end;

function TPDFLibrary.FindImages: Integer;
begin
  Result := DefaultInterface.FindImages;
end;

function TPDFLibrary.FitImage(Left: Double; Top: Double; Width: Double; Height: Double; 
                              HAlign: Integer; VAlign: Integer; Rotate: Integer): Integer;
begin
  Result := DefaultInterface.FitImage(Left, Top, Width, Height, HAlign, VAlign, Rotate);
end;

function TPDFLibrary.FitRotatedTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                       Angle: Double; const Text: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.FitRotatedTextBox(Left, Top, Width, Height, Angle, Text, Options);
end;

function TPDFLibrary.FitTextBox(Left: Double; Top: Double; Width: Double; Height: Double; 
                                const Text: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.FitTextBox(Left, Top, Width, Height, Text, Options);
end;

function TPDFLibrary.FlattenFormField(Index: Integer): Integer;
begin
  Result := DefaultInterface.FlattenFormField(Index);
end;

function TPDFLibrary.FontCount: Integer;
begin
  Result := DefaultInterface.FontCount;
end;

function TPDFLibrary.FontFamily: WideString;
begin
  Result := DefaultInterface.FontFamily;
end;

function TPDFLibrary.FontHasKerning: Integer;
begin
  Result := DefaultInterface.FontHasKerning;
end;

function TPDFLibrary.FontName: WideString;
begin
  Result := DefaultInterface.FontName;
end;

function TPDFLibrary.FontReference: WideString;
begin
  Result := DefaultInterface.FontReference;
end;

function TPDFLibrary.FontSize: Integer;
begin
  Result := DefaultInterface.FontSize;
end;

function TPDFLibrary.FontType: Integer;
begin
  Result := DefaultInterface.FontType;
end;

function TPDFLibrary.FormFieldCount: Integer;
begin
  Result := DefaultInterface.FormFieldCount;
end;

function TPDFLibrary.FormFieldHasParent(Index: Integer): Integer;
begin
  Result := DefaultInterface.FormFieldHasParent(Index);
end;

function TPDFLibrary.FormFieldJavaScriptAction(Index: Integer; const ActionType: WideString; 
                                               const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.FormFieldJavaScriptAction(Index, ActionType, JavaScript);
end;

function TPDFLibrary.FormFieldWebLinkAction(Index: Integer; const ActionType: WideString; 
                                            const Link: WideString): Integer;
begin
  Result := DefaultInterface.FormFieldWebLinkAction(Index, ActionType, Link);
end;

function TPDFLibrary.GetActionDest(ActionID: Integer): Integer;
begin
  Result := DefaultInterface.GetActionDest(ActionID);
end;

function TPDFLibrary.GetActionType(ActionID: Integer): WideString;
begin
  Result := DefaultInterface.GetActionType(ActionID);
end;

function TPDFLibrary.GetActionURL(ActionID: Integer): WideString;
begin
  Result := DefaultInterface.GetActionURL(ActionID);
end;

function TPDFLibrary.GetAnalysisInfo(AnalysisID: Integer; AnalysisItem: Integer): WideString;
begin
  Result := DefaultInterface.GetAnalysisInfo(AnalysisID, AnalysisItem);
end;

function TPDFLibrary.GetAnnotActionID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetAnnotActionID(Index);
end;

function TPDFLibrary.GetAnnotDblProperty(Index: Integer; Tag: Integer): Double;
begin
  Result := DefaultInterface.GetAnnotDblProperty(Index, Tag);
end;

function TPDFLibrary.GetAnnotDest(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetAnnotDest(Index);
end;

function TPDFLibrary.GetAnnotIntProperty(Index: Integer; Tag: Integer): Integer;
begin
  Result := DefaultInterface.GetAnnotIntProperty(Index, Tag);
end;

function TPDFLibrary.GetAnnotQuadCount(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetAnnotQuadCount(Index);
end;

function TPDFLibrary.GetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; PointNumber: Integer): Double;
begin
  Result := DefaultInterface.GetAnnotQuadPoints(Index, QuadNumber, PointNumber);
end;

function TPDFLibrary.GetAnnotStrProperty(Index: Integer; Tag: Integer): WideString;
begin
  Result := DefaultInterface.GetAnnotStrProperty(Index, Tag);
end;

function TPDFLibrary.GetBarcodeWidth(NominalWidth: Double; const Text: WideString; Barcode: Integer): Double;
begin
  Result := DefaultInterface.GetBarcodeWidth(NominalWidth, Text, Barcode);
end;

function TPDFLibrary.GetBaseURL: WideString;
begin
  Result := DefaultInterface.GetBaseURL;
end;

function TPDFLibrary.GetCSDictEPSG(CSDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetCSDictEPSG(CSDictID);
end;

function TPDFLibrary.GetCSDictType(CSDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetCSDictType(CSDictID);
end;

function TPDFLibrary.GetCSDictWKT(CSDictID: Integer): WideString;
begin
  Result := DefaultInterface.GetCSDictWKT(CSDictID);
end;

function TPDFLibrary.GetCanvasDC(CanvasWidth: Integer; CanvasHeight: Integer): Integer;
begin
  Result := DefaultInterface.GetCanvasDC(CanvasWidth, CanvasHeight);
end;

function TPDFLibrary.GetCatalogInformation(const Key: WideString): WideString;
begin
  Result := DefaultInterface.GetCatalogInformation(Key);
end;

function TPDFLibrary.GetContentStreamToVariant: OleVariant;
begin
  Result := DefaultInterface.GetContentStreamToVariant;
end;

function TPDFLibrary.GetCustomInformation(const Key: WideString): WideString;
begin
  Result := DefaultInterface.GetCustomInformation(Key);
end;

function TPDFLibrary.GetCustomKeys(Location: Integer): WideString;
begin
  Result := DefaultInterface.GetCustomKeys(Location);
end;

function TPDFLibrary.GetDefaultPrinterName: WideString;
begin
  Result := DefaultInterface.GetDefaultPrinterName;
end;

function TPDFLibrary.GetDestName(DestID: Integer): WideString;
begin
  Result := DefaultInterface.GetDestName(DestID);
end;

function TPDFLibrary.GetDestPage(DestID: Integer): Integer;
begin
  Result := DefaultInterface.GetDestPage(DestID);
end;

function TPDFLibrary.GetDestType(DestID: Integer): Integer;
begin
  Result := DefaultInterface.GetDestType(DestID);
end;

function TPDFLibrary.GetDestValue(DestID: Integer; ValueKey: Integer): Double;
begin
  Result := DefaultInterface.GetDestValue(DestID, ValueKey);
end;

function TPDFLibrary.GetDocJavaScript(const ActionType: WideString): WideString;
begin
  Result := DefaultInterface.GetDocJavaScript(ActionType);
end;

function TPDFLibrary.GetDocumentFileName: WideString;
begin
  Result := DefaultInterface.GetDocumentFileName;
end;

function TPDFLibrary.GetDocumentFileSize: Integer;
begin
  Result := DefaultInterface.GetDocumentFileSize;
end;

function TPDFLibrary.GetDocumentID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetDocumentID(Index);
end;

function TPDFLibrary.GetDocumentIdentifier(Part: Integer; Options: Integer): WideString;
begin
  Result := DefaultInterface.GetDocumentIdentifier(Part, Options);
end;

function TPDFLibrary.GetDocumentMetadata: WideString;
begin
  Result := DefaultInterface.GetDocumentMetadata;
end;

function TPDFLibrary.GetDocumentRepaired: Integer;
begin
  Result := DefaultInterface.GetDocumentRepaired;
end;

function TPDFLibrary.GetDocumentResourceList: WideString;
begin
  Result := DefaultInterface.GetDocumentResourceList;
end;

function TPDFLibrary.GetEmbeddedFileContentToFile(Index: Integer; const FileName: WideString): Integer;
begin
  Result := DefaultInterface.GetEmbeddedFileContentToFile(Index, FileName);
end;

function TPDFLibrary.GetEmbeddedFileContentToVariant(Index: Integer): OleVariant;
begin
  Result := DefaultInterface.GetEmbeddedFileContentToVariant(Index);
end;

function TPDFLibrary.GetEmbeddedFileID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetEmbeddedFileID(Index);
end;

function TPDFLibrary.GetEmbeddedFileIntProperty(Index: Integer; Tag: Integer): Integer;
begin
  Result := DefaultInterface.GetEmbeddedFileIntProperty(Index, Tag);
end;

function TPDFLibrary.GetEmbeddedFileStrProperty(Index: Integer; Tag: Integer): WideString;
begin
  Result := DefaultInterface.GetEmbeddedFileStrProperty(Index, Tag);
end;

function TPDFLibrary.GetEncryptionFingerprint: WideString;
begin
  Result := DefaultInterface.GetEncryptionFingerprint;
end;

function TPDFLibrary.GetFileMetadata(const InputFileName: WideString; const Password: WideString): WideString;
begin
  Result := DefaultInterface.GetFileMetadata(InputFileName, Password);
end;

function TPDFLibrary.GetFirstChildOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetFirstChildOutline(OutlineID);
end;

function TPDFLibrary.GetFirstOutline: Integer;
begin
  Result := DefaultInterface.GetFirstOutline;
end;

function TPDFLibrary.GetFontEncoding: Integer;
begin
  Result := DefaultInterface.GetFontEncoding;
end;

function TPDFLibrary.GetFontID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFontID(Index);
end;

function TPDFLibrary.GetFontObjectNumber: Integer;
begin
  Result := DefaultInterface.GetFontObjectNumber;
end;

function TPDFLibrary.GetFormFieldActionID(Index: Integer; const TriggerEvent: WideString): Integer;
begin
  Result := DefaultInterface.GetFormFieldActionID(Index, TriggerEvent);
end;

function TPDFLibrary.GetFormFieldAlignment(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldAlignment(Index);
end;

function TPDFLibrary.GetFormFieldAnnotFlags(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldAnnotFlags(Index);
end;

function TPDFLibrary.GetFormFieldBackgroundColor(Index: Integer; ColorComponent: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldBackgroundColor(Index, ColorComponent);
end;

function TPDFLibrary.GetFormFieldBackgroundColorType(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldBackgroundColorType(Index);
end;

function TPDFLibrary.GetFormFieldBorderColor(Index: Integer; ColorComponent: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldBorderColor(Index, ColorComponent);
end;

function TPDFLibrary.GetFormFieldBorderColorType(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldBorderColorType(Index);
end;

function TPDFLibrary.GetFormFieldBorderProperty(Index: Integer; PropKey: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldBorderProperty(Index, PropKey);
end;

function TPDFLibrary.GetFormFieldBorderStyle(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldBorderStyle(Index);
end;

function TPDFLibrary.GetFormFieldBound(Index: Integer; Edge: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldBound(Index, Edge);
end;

function TPDFLibrary.GetFormFieldCaption(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldCaption(Index);
end;

function TPDFLibrary.GetFormFieldChildTitle(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldChildTitle(Index);
end;

function TPDFLibrary.GetFormFieldChoiceType(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldChoiceType(Index);
end;

function TPDFLibrary.GetFormFieldColor(Index: Integer; ColorComponent: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldColor(Index, ColorComponent);
end;

function TPDFLibrary.GetFormFieldComb(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldComb(Index);
end;

function TPDFLibrary.GetFormFieldDefaultValue(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldDefaultValue(Index);
end;

function TPDFLibrary.GetFormFieldDescription(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldDescription(Index);
end;

function TPDFLibrary.GetFormFieldFlags(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldFlags(Index);
end;

function TPDFLibrary.GetFormFieldFontName(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldFontName(Index);
end;

function TPDFLibrary.GetFormFieldJavaScript(Index: Integer; const ActionType: WideString): WideString;
begin
  Result := DefaultInterface.GetFormFieldJavaScript(Index, ActionType);
end;

function TPDFLibrary.GetFormFieldKidCount(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldKidCount(Index);
end;

function TPDFLibrary.GetFormFieldMaxLen(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldMaxLen(Index);
end;

function TPDFLibrary.GetFormFieldNoExport(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldNoExport(Index);
end;

function TPDFLibrary.GetFormFieldPage(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldPage(Index);
end;

function TPDFLibrary.GetFormFieldPrintable(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldPrintable(Index);
end;

function TPDFLibrary.GetFormFieldReadOnly(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldReadOnly(Index);
end;

function TPDFLibrary.GetFormFieldRequired(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldRequired(Index);
end;

function TPDFLibrary.GetFormFieldRotation(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldRotation(Index);
end;

function TPDFLibrary.GetFormFieldSubCount(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldSubCount(Index);
end;

function TPDFLibrary.GetFormFieldSubDisplayName(Index: Integer; SubIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldSubDisplayName(Index, SubIndex);
end;

function TPDFLibrary.GetFormFieldSubName(Index: Integer; SubIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldSubName(Index, SubIndex);
end;

function TPDFLibrary.GetFormFieldSubTempIndex(Index: Integer; SubIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldSubTempIndex(Index, SubIndex);
end;

function TPDFLibrary.GetFormFieldTabOrder(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldTabOrder(Index);
end;

function TPDFLibrary.GetFormFieldTextFlags(Index: Integer; ValueKey: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldTextFlags(Index, ValueKey);
end;

function TPDFLibrary.GetFormFieldTextSize(Index: Integer): Double;
begin
  Result := DefaultInterface.GetFormFieldTextSize(Index);
end;

function TPDFLibrary.GetFormFieldTitle(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldTitle(Index);
end;

function TPDFLibrary.GetFormFieldType(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldType(Index);
end;

function TPDFLibrary.GetFormFieldValue(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFieldValue(Index);
end;

function TPDFLibrary.GetFormFieldValueByTitle(const Title: WideString): WideString;
begin
  Result := DefaultInterface.GetFormFieldValueByTitle(Title);
end;

function TPDFLibrary.GetFormFieldVisible(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetFormFieldVisible(Index);
end;

function TPDFLibrary.GetFormFieldWebLink(Index: Integer; const ActionType: WideString): WideString;
begin
  Result := DefaultInterface.GetFormFieldWebLink(Index, ActionType);
end;

function TPDFLibrary.GetFormFontCount: Integer;
begin
  Result := DefaultInterface.GetFormFontCount;
end;

function TPDFLibrary.GetFormFontName(FontIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetFormFontName(FontIndex);
end;

function TPDFLibrary.GetGlobalJavaScript(const PackageName: WideString): WideString;
begin
  Result := DefaultInterface.GetGlobalJavaScript(PackageName);
end;

function TPDFLibrary.GetHTMLTextHeight(Width: Double; const HTMLText: WideString): Double;
begin
  Result := DefaultInterface.GetHTMLTextHeight(Width, HTMLText);
end;

function TPDFLibrary.GetHTMLTextLineCount(Width: Double; const HTMLText: WideString): Integer;
begin
  Result := DefaultInterface.GetHTMLTextLineCount(Width, HTMLText);
end;

function TPDFLibrary.GetHTMLTextWidth(MaxWidth: Double; const HTMLText: WideString): Double;
begin
  Result := DefaultInterface.GetHTMLTextWidth(MaxWidth, HTMLText);
end;

function TPDFLibrary.GetImageID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetImageID(Index);
end;

function TPDFLibrary.GetImageListCount(ImageListID: Integer): Integer;
begin
  Result := DefaultInterface.GetImageListCount(ImageListID);
end;

function TPDFLibrary.GetImageListItemDataToVariant(ImageListID: Integer; ImageIndex: Integer; 
                                                   Options: Integer): OleVariant;
begin
  Result := DefaultInterface.GetImageListItemDataToVariant(ImageListID, ImageIndex, Options);
end;

function TPDFLibrary.GetImageListItemDblProperty(ImageListID: Integer; ImageIndex: Integer; 
                                                 PropertyID: Integer): Double;
begin
  Result := DefaultInterface.GetImageListItemDblProperty(ImageListID, ImageIndex, PropertyID);
end;

function TPDFLibrary.GetImageListItemIntProperty(ImageListID: Integer; ImageIndex: Integer; 
                                                 PropertyID: Integer): Integer;
begin
  Result := DefaultInterface.GetImageListItemIntProperty(ImageListID, ImageIndex, PropertyID);
end;

function TPDFLibrary.GetImageMeasureDict: Integer;
begin
  Result := DefaultInterface.GetImageMeasureDict;
end;

function TPDFLibrary.GetImagePageCount(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.GetImagePageCount(FileName);
end;

function TPDFLibrary.GetImagePageCountFromString(const Source: WideString): Integer;
begin
  Result := DefaultInterface.GetImagePageCountFromString(Source);
end;

function TPDFLibrary.GetImagePtDataDict: Integer;
begin
  Result := DefaultInterface.GetImagePtDataDict;
end;

function TPDFLibrary.GetInformation(Key: Integer): WideString;
begin
  Result := DefaultInterface.GetInformation(Key);
end;

function TPDFLibrary.GetInstalledFontsByCharset(CharsetIndex: Integer; Options: Integer): WideString;
begin
  Result := DefaultInterface.GetInstalledFontsByCharset(CharsetIndex, Options);
end;

function TPDFLibrary.GetInstalledFontsByCodePage(CodePage: Integer; Options: Integer): WideString;
begin
  Result := DefaultInterface.GetInstalledFontsByCodePage(CodePage, Options);
end;

function TPDFLibrary.GetKerning(const CharPair: WideString): Integer;
begin
  Result := DefaultInterface.GetKerning(CharPair);
end;

function TPDFLibrary.GetLatestPrinterNames: WideString;
begin
  Result := DefaultInterface.GetLatestPrinterNames;
end;

function TPDFLibrary.GetMaxObjectNumber: Integer;
begin
  Result := DefaultInterface.GetMaxObjectNumber;
end;

function TPDFLibrary.GetMeasureDictBoundsCount(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictBoundsCount(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
begin
  Result := DefaultInterface.GetMeasureDictBoundsItem(MeasureDictID, ItemIndex);
end;

function TPDFLibrary.GetMeasureDictCoordinateSystem(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictCoordinateSystem(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictDCSDict(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictDCSDict(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictGCSDict(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictGCSDict(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictGPTSCount(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictGPTSCount(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
begin
  Result := DefaultInterface.GetMeasureDictGPTSItem(MeasureDictID, ItemIndex);
end;

function TPDFLibrary.GetMeasureDictLPTSCount(MeasureDictID: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictLPTSCount(MeasureDictID);
end;

function TPDFLibrary.GetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer): Double;
begin
  Result := DefaultInterface.GetMeasureDictLPTSItem(MeasureDictID, ItemIndex);
end;

function TPDFLibrary.GetMeasureDictPDU(MeasureDictID: Integer; UnitIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetMeasureDictPDU(MeasureDictID, UnitIndex);
end;

function TPDFLibrary.GetNamedDestination(const DestName: WideString): Integer;
begin
  Result := DefaultInterface.GetNamedDestination(DestName);
end;

function TPDFLibrary.GetNextOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetNextOutline(OutlineID);
end;

function TPDFLibrary.GetObjectCount: Integer;
begin
  Result := DefaultInterface.GetObjectCount;
end;

function TPDFLibrary.GetObjectToVariant(ObjectNumber: Integer): OleVariant;
begin
  Result := DefaultInterface.GetObjectToVariant(ObjectNumber);
end;

function TPDFLibrary.GetOpenActionDestination: Integer;
begin
  Result := DefaultInterface.GetOpenActionDestination;
end;

function TPDFLibrary.GetOpenActionJavaScript: WideString;
begin
  Result := DefaultInterface.GetOpenActionJavaScript;
end;

function TPDFLibrary.GetOptionalContentConfigCount: Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigCount;
end;

function TPDFLibrary.GetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                                    OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigLocked(OptionalContentConfigID, 
                                                            OptionalContentGroupID);
end;

function TPDFLibrary.GetOptionalContentConfigOrderCount(OptionalContentConfigID: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigOrderCount(OptionalContentConfigID);
end;

function TPDFLibrary.GetOptionalContentConfigOrderItemID(OptionalContentConfigID: Integer; 
                                                         ItemIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigOrderItemID(OptionalContentConfigID, ItemIndex);
end;

function TPDFLibrary.GetOptionalContentConfigOrderItemLabel(OptionalContentConfigID: Integer; 
                                                            ItemIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetOptionalContentConfigOrderItemLabel(OptionalContentConfigID, 
                                                                    ItemIndex);
end;

function TPDFLibrary.GetOptionalContentConfigOrderItemLevel(OptionalContentConfigID: Integer; 
                                                            ItemIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigOrderItemLevel(OptionalContentConfigID, 
                                                                    ItemIndex);
end;

function TPDFLibrary.GetOptionalContentConfigOrderItemType(OptionalContentConfigID: Integer; 
                                                           ItemIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigOrderItemType(OptionalContentConfigID, 
                                                                   ItemIndex);
end;

function TPDFLibrary.GetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                                   OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentConfigState(OptionalContentConfigID, 
                                                           OptionalContentGroupID);
end;

function TPDFLibrary.GetOptionalContentGroupID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentGroupID(Index);
end;

function TPDFLibrary.GetOptionalContentGroupName(OptionalContentGroupID: Integer): WideString;
begin
  Result := DefaultInterface.GetOptionalContentGroupName(OptionalContentGroupID);
end;

function TPDFLibrary.GetOptionalContentGroupPrintable(OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentGroupPrintable(OptionalContentGroupID);
end;

function TPDFLibrary.GetOptionalContentGroupVisible(OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.GetOptionalContentGroupVisible(OptionalContentGroupID);
end;

function TPDFLibrary.GetOrigin: Integer;
begin
  Result := DefaultInterface.GetOrigin;
end;

function TPDFLibrary.GetOutlineActionID(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlineActionID(OutlineID);
end;

function TPDFLibrary.GetOutlineColor(OutlineID: Integer; ColorComponent: Integer): Double;
begin
  Result := DefaultInterface.GetOutlineColor(OutlineID, ColorComponent);
end;

function TPDFLibrary.GetOutlineDest(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlineDest(OutlineID);
end;

function TPDFLibrary.GetOutlineID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlineID(Index);
end;

function TPDFLibrary.GetOutlineJavaScript(OutlineID: Integer): WideString;
begin
  Result := DefaultInterface.GetOutlineJavaScript(OutlineID);
end;

function TPDFLibrary.GetOutlineObjectNumber(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlineObjectNumber(OutlineID);
end;

function TPDFLibrary.GetOutlineOpenFile(OutlineID: Integer): WideString;
begin
  Result := DefaultInterface.GetOutlineOpenFile(OutlineID);
end;

function TPDFLibrary.GetOutlinePage(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlinePage(OutlineID);
end;

function TPDFLibrary.GetOutlineStyle(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetOutlineStyle(OutlineID);
end;

function TPDFLibrary.GetOutlineWebLink(OutlineID: Integer): WideString;
begin
  Result := DefaultInterface.GetOutlineWebLink(OutlineID);
end;

function TPDFLibrary.GetPageBox(BoxType: Integer; Dimension: Integer): Double;
begin
  Result := DefaultInterface.GetPageBox(BoxType, Dimension);
end;

function TPDFLibrary.GetPageColorSpaces(Options: Integer): WideString;
begin
  Result := DefaultInterface.GetPageColorSpaces(Options);
end;

function TPDFLibrary.GetPageContentToVariant: OleVariant;
begin
  Result := DefaultInterface.GetPageContentToVariant;
end;

function TPDFLibrary.GetPageImageList(Options: Integer): Integer;
begin
  Result := DefaultInterface.GetPageImageList(Options);
end;

function TPDFLibrary.GetPageJavaScript(const ActionType: WideString): WideString;
begin
  Result := DefaultInterface.GetPageJavaScript(ActionType);
end;

function TPDFLibrary.GetPageLGIDictContent(DictIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetPageLGIDictContent(DictIndex);
end;

function TPDFLibrary.GetPageLGIDictCount: Integer;
begin
  Result := DefaultInterface.GetPageLGIDictCount;
end;

function TPDFLibrary.GetPageLabel(Page: Integer): WideString;
begin
  Result := DefaultInterface.GetPageLabel(Page);
end;

function TPDFLibrary.GetPageLayout: Integer;
begin
  Result := DefaultInterface.GetPageLayout;
end;

function TPDFLibrary.GetPageMode: Integer;
begin
  Result := DefaultInterface.GetPageMode;
end;

function TPDFLibrary.GetPageText(ExtractOptions: Integer): WideString;
begin
  Result := DefaultInterface.GetPageText(ExtractOptions);
end;

function TPDFLibrary.GetPageViewPortCount: Integer;
begin
  Result := DefaultInterface.GetPageViewPortCount;
end;

function TPDFLibrary.GetPageViewPortID(Index: Integer): Integer;
begin
  Result := DefaultInterface.GetPageViewPortID(Index);
end;

function TPDFLibrary.GetParentOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetParentOutline(OutlineID);
end;

function TPDFLibrary.GetPrevOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.GetPrevOutline(OutlineID);
end;

function TPDFLibrary.GetPrinterBins(const PrinterName: WideString): WideString;
begin
  Result := DefaultInterface.GetPrinterBins(PrinterName);
end;

function TPDFLibrary.GetPrinterDevModeToVariant(const PrinterName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetPrinterDevModeToVariant(PrinterName);
end;

function TPDFLibrary.GetPrinterMediaTypes(const PrinterName: WideString): WideString;
begin
  Result := DefaultInterface.GetPrinterMediaTypes(PrinterName);
end;

function TPDFLibrary.GetPrinterNames: WideString;
begin
  Result := DefaultInterface.GetPrinterNames;
end;

function TPDFLibrary.GetRenderScale: Double;
begin
  Result := DefaultInterface.GetRenderScale;
end;

function TPDFLibrary.GetStringListCount(StringListID: Integer): Integer;
begin
  Result := DefaultInterface.GetStringListCount(StringListID);
end;

function TPDFLibrary.GetStringListItem(StringListID: Integer; ItemIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetStringListItem(StringListID, ItemIndex);
end;

function TPDFLibrary.GetTableCellDblProperty(TableID: Integer; RowNumber: Integer; 
                                             ColumnNumber: Integer; Tag: Integer): Double;
begin
  Result := DefaultInterface.GetTableCellDblProperty(TableID, RowNumber, ColumnNumber, Tag);
end;

function TPDFLibrary.GetTableCellIntProperty(TableID: Integer; RowNumber: Integer; 
                                             ColumnNumber: Integer; Tag: Integer): Integer;
begin
  Result := DefaultInterface.GetTableCellIntProperty(TableID, RowNumber, ColumnNumber, Tag);
end;

function TPDFLibrary.GetTableCellStrProperty(TableID: Integer; RowNumber: Integer; 
                                             ColumnNumber: Integer; Tag: Integer): WideString;
begin
  Result := DefaultInterface.GetTableCellStrProperty(TableID, RowNumber, ColumnNumber, Tag);
end;

function TPDFLibrary.GetTableColumnCount(TableID: Integer): Integer;
begin
  Result := DefaultInterface.GetTableColumnCount(TableID);
end;

function TPDFLibrary.GetTableLastDrawnRow(TableID: Integer): Integer;
begin
  Result := DefaultInterface.GetTableLastDrawnRow(TableID);
end;

function TPDFLibrary.GetTableRowCount(TableID: Integer): Integer;
begin
  Result := DefaultInterface.GetTableRowCount(TableID);
end;

function TPDFLibrary.GetTempPath: WideString;
begin
  Result := DefaultInterface.GetTempPath;
end;

function TPDFLibrary.GetTextAscent: Double;
begin
  Result := DefaultInterface.GetTextAscent;
end;

function TPDFLibrary.GetTextBound(Edge: Integer): Double;
begin
  Result := DefaultInterface.GetTextBound(Edge);
end;

function TPDFLibrary.GetTextDescent: Double;
begin
  Result := DefaultInterface.GetTextDescent;
end;

function TPDFLibrary.GetTextHeight: Double;
begin
  Result := DefaultInterface.GetTextHeight;
end;

function TPDFLibrary.GetTextSize: Double;
begin
  Result := DefaultInterface.GetTextSize;
end;

function TPDFLibrary.GetTextWidth(const Text: WideString): Double;
begin
  Result := DefaultInterface.GetTextWidth(Text);
end;

function TPDFLibrary.GetUnicodeCharactersFromEncoding(Encoding: Integer): WideString;
begin
  Result := DefaultInterface.GetUnicodeCharactersFromEncoding(Encoding);
end;

function TPDFLibrary.GetViewPortBBox(ViewPortID: Integer; Dimension: Integer): Double;
begin
  Result := DefaultInterface.GetViewPortBBox(ViewPortID, Dimension);
end;

function TPDFLibrary.GetViewPortMeasureDict(ViewPortID: Integer): Integer;
begin
  Result := DefaultInterface.GetViewPortMeasureDict(ViewPortID);
end;

function TPDFLibrary.GetViewPortName(ViewPortID: Integer): WideString;
begin
  Result := DefaultInterface.GetViewPortName(ViewPortID);
end;

function TPDFLibrary.GetViewPortPtDataDict(ViewPortID: Integer): Integer;
begin
  Result := DefaultInterface.GetViewPortPtDataDict(ViewPortID);
end;

function TPDFLibrary.GetViewerPreferences(Option: Integer): Integer;
begin
  Result := DefaultInterface.GetViewerPreferences(Option);
end;

function TPDFLibrary.GetWrappedText(Width: Double; const Delimiter: WideString; 
                                    const Text: WideString): WideString;
begin
  Result := DefaultInterface.GetWrappedText(Width, Delimiter, Text);
end;

function TPDFLibrary.GetWrappedTextBreakString(Width: Double; const Delimiter: WideString; 
                                               const Text: WideString): WideString;
begin
  Result := DefaultInterface.GetWrappedTextBreakString(Width, Delimiter, Text);
end;

function TPDFLibrary.GetWrappedTextHeight(Width: Double; const Text: WideString): Double;
begin
  Result := DefaultInterface.GetWrappedTextHeight(Width, Text);
end;

function TPDFLibrary.GetWrappedTextLineCount(Width: Double; const Text: WideString): Integer;
begin
  Result := DefaultInterface.GetWrappedTextLineCount(Width, Text);
end;

function TPDFLibrary.GetXFAFormFieldCount: Integer;
begin
  Result := DefaultInterface.GetXFAFormFieldCount;
end;

function TPDFLibrary.GetXFAFormFieldName(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetXFAFormFieldName(Index);
end;

function TPDFLibrary.GetXFAFormFieldNames(const Delimiter: WideString): WideString;
begin
  Result := DefaultInterface.GetXFAFormFieldNames(Delimiter);
end;

function TPDFLibrary.GetXFAFormFieldValue(const XFAFieldName: WideString): WideString;
begin
  Result := DefaultInterface.GetXFAFormFieldValue(XFAFieldName);
end;

function TPDFLibrary.GetXFAToString(Options: Integer): WideString;
begin
  Result := DefaultInterface.GetXFAToString(Options);
end;

function TPDFLibrary.GlobalJavaScriptCount: Integer;
begin
  Result := DefaultInterface.GlobalJavaScriptCount;
end;

function TPDFLibrary.GlobalJavaScriptPackageName(Index: Integer): WideString;
begin
  Result := DefaultInterface.GlobalJavaScriptPackageName(Index);
end;

function TPDFLibrary.HasFontResources: Integer;
begin
  Result := DefaultInterface.HasFontResources;
end;

function TPDFLibrary.HasPageBox(BoxType: Integer): Integer;
begin
  Result := DefaultInterface.HasPageBox(BoxType);
end;

function TPDFLibrary.HidePage: Integer;
begin
  Result := DefaultInterface.HidePage;
end;

function TPDFLibrary.ImageCount: Integer;
begin
  Result := DefaultInterface.ImageCount;
end;

function TPDFLibrary.ImageFillColor: Integer;
begin
  Result := DefaultInterface.ImageFillColor;
end;

function TPDFLibrary.ImageHeight: Integer;
begin
  Result := DefaultInterface.ImageHeight;
end;

function TPDFLibrary.ImageHorizontalResolution: Integer;
begin
  Result := DefaultInterface.ImageHorizontalResolution;
end;

function TPDFLibrary.ImageResolutionUnits: Integer;
begin
  Result := DefaultInterface.ImageResolutionUnits;
end;

function TPDFLibrary.ImageType: Integer;
begin
  Result := DefaultInterface.ImageType;
end;

function TPDFLibrary.ImageVerticalResolution: Integer;
begin
  Result := DefaultInterface.ImageVerticalResolution;
end;

function TPDFLibrary.ImageWidth: Integer;
begin
  Result := DefaultInterface.ImageWidth;
end;

function TPDFLibrary.ImportEMFFromFile(const FileName: WideString; FontOptions: Integer; 
                                       GeneralOptions: Integer): Integer;
begin
  Result := DefaultInterface.ImportEMFFromFile(FileName, FontOptions, GeneralOptions);
end;

function TPDFLibrary.InsertPages(StartPage: Integer; PageCount: Integer): Integer;
begin
  Result := DefaultInterface.InsertPages(StartPage, PageCount);
end;

function TPDFLibrary.InsertTableColumns(TableID: Integer; Position: Integer; NewColumnCount: Integer): Integer;
begin
  Result := DefaultInterface.InsertTableColumns(TableID, Position, NewColumnCount);
end;

function TPDFLibrary.InsertTableRows(TableID: Integer; Position: Integer; NewRowCount: Integer): Integer;
begin
  Result := DefaultInterface.InsertTableRows(TableID, Position, NewRowCount);
end;

function TPDFLibrary.IsAnnotFormField(Index: Integer): Integer;
begin
  Result := DefaultInterface.IsAnnotFormField(Index);
end;

function TPDFLibrary.LastErrorCode: Integer;
begin
  Result := DefaultInterface.LastErrorCode;
end;

function TPDFLibrary.LastRenderError: WideString;
begin
  Result := DefaultInterface.LastRenderError;
end;

function TPDFLibrary.LibraryVersion: WideString;
begin
  Result := DefaultInterface.LibraryVersion;
end;

function TPDFLibrary.LicenseInfo: WideString;
begin
  Result := DefaultInterface.LicenseInfo;
end;

function TPDFLibrary.Linearized: Integer;
begin
  Result := DefaultInterface.Linearized;
end;

function TPDFLibrary.LoadFromCanvasDC(DPI: Double; Options: Integer): Integer;
begin
  Result := DefaultInterface.LoadFromCanvasDC(DPI, Options);
end;

function TPDFLibrary.LoadFromFile(const FileName: WideString; const Password: WideString): Integer;
begin
  Result := DefaultInterface.LoadFromFile(FileName, Password);
end;

function TPDFLibrary.LoadFromVariant(Source: OleVariant; const Password: WideString): Integer;
begin
  Result := DefaultInterface.LoadFromVariant(Source, Password);
end;

function TPDFLibrary.LoadState: Integer;
begin
  Result := DefaultInterface.LoadState;
end;

function TPDFLibrary.MergeDocument(DocumentID: Integer): Integer;
begin
  Result := DefaultInterface.MergeDocument(DocumentID);
end;

function TPDFLibrary.MergeFileList(const ListName: WideString; const OutputFileName: WideString): Integer;
begin
  Result := DefaultInterface.MergeFileList(ListName, OutputFileName);
end;

function TPDFLibrary.MergeFileListFast(const ListName: WideString; const OutputFileName: WideString): Integer;
begin
  Result := DefaultInterface.MergeFileListFast(ListName, OutputFileName);
end;

function TPDFLibrary.MergeFiles(const FirstFileName: WideString; const SecondFileName: WideString; 
                                const OutputFileName: WideString): Integer;
begin
  Result := DefaultInterface.MergeFiles(FirstFileName, SecondFileName, OutputFileName);
end;

function TPDFLibrary.MergeTableCells(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                     LastRow: Integer; LastColumn: Integer): Integer;
begin
  Result := DefaultInterface.MergeTableCells(TableID, FirstRow, FirstColumn, LastRow, LastColumn);
end;

function TPDFLibrary.MoveContentStream(FromPosition: Integer; ToPosition: Integer): Integer;
begin
  Result := DefaultInterface.MoveContentStream(FromPosition, ToPosition);
end;

function TPDFLibrary.MoveOutlineAfter(OutlineID: Integer; SiblingID: Integer): Integer;
begin
  Result := DefaultInterface.MoveOutlineAfter(OutlineID, SiblingID);
end;

function TPDFLibrary.MoveOutlineBefore(OutlineID: Integer; SiblingID: Integer): Integer;
begin
  Result := DefaultInterface.MoveOutlineBefore(OutlineID, SiblingID);
end;

function TPDFLibrary.MovePage(NewPosition: Integer): Integer;
begin
  Result := DefaultInterface.MovePage(NewPosition);
end;

function TPDFLibrary.MovePath(NewX: Double; NewY: Double): Integer;
begin
  Result := DefaultInterface.MovePath(NewX, NewY);
end;

function TPDFLibrary.MultiplyScale(MultScaleBy: Double): Integer;
begin
  Result := DefaultInterface.MultiplyScale(MultScaleBy);
end;

function TPDFLibrary.NewChildFormField(Index: Integer; const Title: WideString; FieldType: Integer): Integer;
begin
  Result := DefaultInterface.NewChildFormField(Index, Title, FieldType);
end;

function TPDFLibrary.NewContentStream: Integer;
begin
  Result := DefaultInterface.NewContentStream;
end;

function TPDFLibrary.NewCustomPrinter(const OriginalPrinterName: WideString): WideString;
begin
  Result := DefaultInterface.NewCustomPrinter(OriginalPrinterName);
end;

function TPDFLibrary.NewDestination(DestPage: Integer; Zoom: Integer; DestType: Integer; 
                                    Left: Double; Top: Double; Right: Double; Bottom: Double): Integer;
begin
  Result := DefaultInterface.NewDestination(DestPage, Zoom, DestType, Left, Top, Right, Bottom);
end;

function TPDFLibrary.NewDocument: Integer;
begin
  Result := DefaultInterface.NewDocument;
end;

function TPDFLibrary.NewFormField(const Title: WideString; FieldType: Integer): Integer;
begin
  Result := DefaultInterface.NewFormField(Title, FieldType);
end;

function TPDFLibrary.NewNamedDestination(const DestName: WideString; DestID: Integer): Integer;
begin
  Result := DefaultInterface.NewNamedDestination(DestName, DestID);
end;

function TPDFLibrary.NewOptionalContentGroup(const GroupName: WideString): Integer;
begin
  Result := DefaultInterface.NewOptionalContentGroup(GroupName);
end;

function TPDFLibrary.NewOutline(Parent: Integer; const Title: WideString; DestPage: Integer; 
                                DestPosition: Double): Integer;
begin
  Result := DefaultInterface.NewOutline(Parent, Title, DestPage, DestPosition);
end;

function TPDFLibrary.NewPage: Integer;
begin
  Result := DefaultInterface.NewPage;
end;

function TPDFLibrary.NewPageFromCanvasDC(DPI: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.NewPageFromCanvasDC(DPI, Options);
end;

function TPDFLibrary.NewPages(PageCount: Integer): Integer;
begin
  Result := DefaultInterface.NewPages(PageCount);
end;

function TPDFLibrary.NewPostScriptXObject(const PS: WideString): Integer;
begin
  Result := DefaultInterface.NewPostScriptXObject(PS);
end;

function TPDFLibrary.NewRGBAxialShader(const ShaderName: WideString; StartX: Double; 
                                       StartY: Double; StartRed: Double; StartGreen: Double; 
                                       StartBlue: Double; EndX: Double; EndY: Double; 
                                       EndRed: Double; EndGreen: Double; EndBlue: Double; 
                                       Extend: Integer): Integer;
begin
  Result := DefaultInterface.NewRGBAxialShader(ShaderName, StartX, StartY, StartRed, StartGreen, 
                                               StartBlue, EndX, EndY, EndRed, EndGreen, EndBlue, 
                                               Extend);
end;

function TPDFLibrary.NewStaticOutline(Parent: Integer; const Title: WideString): Integer;
begin
  Result := DefaultInterface.NewStaticOutline(Parent, Title);
end;

function TPDFLibrary.NewTilingPatternFromCapturedPage(const PatternName: WideString; 
                                                      CaptureID: Integer): Integer;
begin
  Result := DefaultInterface.NewTilingPatternFromCapturedPage(PatternName, CaptureID);
end;

function TPDFLibrary.NoEmbedFontListAdd(const FontName: WideString): Integer;
begin
  Result := DefaultInterface.NoEmbedFontListAdd(FontName);
end;

function TPDFLibrary.NoEmbedFontListCount: Integer;
begin
  Result := DefaultInterface.NoEmbedFontListCount;
end;

function TPDFLibrary.NoEmbedFontListGet(Index: Integer): WideString;
begin
  Result := DefaultInterface.NoEmbedFontListGet(Index);
end;

function TPDFLibrary.NoEmbedFontListRemoveAll: Integer;
begin
  Result := DefaultInterface.NoEmbedFontListRemoveAll;
end;

function TPDFLibrary.NoEmbedFontListRemoveIndex(Index: Integer): Integer;
begin
  Result := DefaultInterface.NoEmbedFontListRemoveIndex(Index);
end;

function TPDFLibrary.NoEmbedFontListRemoveName(const FontName: WideString): Integer;
begin
  Result := DefaultInterface.NoEmbedFontListRemoveName(FontName);
end;

function TPDFLibrary.NormalizePage(NormalizeOptions: Integer): Integer;
begin
  Result := DefaultInterface.NormalizePage(NormalizeOptions);
end;

function TPDFLibrary.OpenOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.OpenOutline(OutlineID);
end;

function TPDFLibrary.OptionalContentGroupCount: Integer;
begin
  Result := DefaultInterface.OptionalContentGroupCount;
end;

function TPDFLibrary.OutlineCount: Integer;
begin
  Result := DefaultInterface.OutlineCount;
end;

function TPDFLibrary.OutlineTitle(OutlineID: Integer): WideString;
begin
  Result := DefaultInterface.OutlineTitle(OutlineID);
end;

function TPDFLibrary.PageCount: Integer;
begin
  Result := DefaultInterface.PageCount;
end;

function TPDFLibrary.PageHeight: Double;
begin
  Result := DefaultInterface.PageHeight;
end;

function TPDFLibrary.PageJavaScriptAction(const ActionType: WideString; const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.PageJavaScriptAction(ActionType, JavaScript);
end;

function TPDFLibrary.PageRotation: Integer;
begin
  Result := DefaultInterface.PageRotation;
end;

function TPDFLibrary.PageWidth: Double;
begin
  Result := DefaultInterface.PageWidth;
end;

function TPDFLibrary.PrintDocument(const PrinterName: WideString; StartPage: Integer; 
                                   EndPage: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.PrintDocument(PrinterName, StartPage, EndPage, Options);
end;

function TPDFLibrary.PrintDocumentToFile(const PrinterName: WideString; StartPage: Integer; 
                                         EndPage: Integer; Options: Integer; 
                                         const FileName: WideString): Integer;
begin
  Result := DefaultInterface.PrintDocumentToFile(PrinterName, StartPage, EndPage, Options, FileName);
end;

function TPDFLibrary.PrintOptions(PageScaling: Integer; AutoRotateCenter: Integer; 
                                  const Title: WideString): Integer;
begin
  Result := DefaultInterface.PrintOptions(PageScaling, AutoRotateCenter, Title);
end;

function TPDFLibrary.ReleaseImage(ImageID: Integer): Integer;
begin
  Result := DefaultInterface.ReleaseImage(ImageID);
end;

function TPDFLibrary.ReleaseImageList(ImageListID: Integer): Integer;
begin
  Result := DefaultInterface.ReleaseImageList(ImageListID);
end;

function TPDFLibrary.RemoveAppearanceStream(Index: Integer): Integer;
begin
  Result := DefaultInterface.RemoveAppearanceStream(Index);
end;

function TPDFLibrary.RemoveCustomInformation(const Key: WideString): Integer;
begin
  Result := DefaultInterface.RemoveCustomInformation(Key);
end;

function TPDFLibrary.RemoveDocument(DocumentID: Integer): Integer;
begin
  Result := DefaultInterface.RemoveDocument(DocumentID);
end;

function TPDFLibrary.RemoveEmbeddedFile(Index: Integer): Integer;
begin
  Result := DefaultInterface.RemoveEmbeddedFile(Index);
end;

function TPDFLibrary.RemoveFormFieldBackgroundColor(Index: Integer): Integer;
begin
  Result := DefaultInterface.RemoveFormFieldBackgroundColor(Index);
end;

function TPDFLibrary.RemoveFormFieldBorderColor(Index: Integer): Integer;
begin
  Result := DefaultInterface.RemoveFormFieldBorderColor(Index);
end;

function TPDFLibrary.RemoveGlobalJavaScript(const PackageName: WideString): Integer;
begin
  Result := DefaultInterface.RemoveGlobalJavaScript(PackageName);
end;

function TPDFLibrary.RemoveOpenAction: Integer;
begin
  Result := DefaultInterface.RemoveOpenAction;
end;

function TPDFLibrary.RemoveOutline(OutlineID: Integer): Integer;
begin
  Result := DefaultInterface.RemoveOutline(OutlineID);
end;

function TPDFLibrary.RemoveSharedContentStreams: Integer;
begin
  Result := DefaultInterface.RemoveSharedContentStreams;
end;

function TPDFLibrary.RemoveStyle(const StyleName: WideString): Integer;
begin
  Result := DefaultInterface.RemoveStyle(StyleName);
end;

function TPDFLibrary.RemoveUsageRights: Integer;
begin
  Result := DefaultInterface.RemoveUsageRights;
end;

function TPDFLibrary.RemoveXFAEntries(Options: Integer): Integer;
begin
  Result := DefaultInterface.RemoveXFAEntries(Options);
end;

function TPDFLibrary.RenderDocumentToFile(DPI: Integer; StartPage: Integer; EndPage: Integer; 
                                          Options: Integer; const FileName: WideString): Integer;
begin
  Result := DefaultInterface.RenderDocumentToFile(DPI, StartPage, EndPage, Options, FileName);
end;

function TPDFLibrary.RenderPageToDC(DPI: Integer; Page: Integer; DC: Integer): Integer;
begin
  Result := DefaultInterface.RenderPageToDC(DPI, Page, DC);
end;

function TPDFLibrary.RenderPageToFile(DPI: Integer; Page: Integer; Options: Integer; 
                                      const FileName: WideString): Integer;
begin
  Result := DefaultInterface.RenderPageToFile(DPI, Page, Options, FileName);
end;

function TPDFLibrary.RenderPageToVariant(DPI: Integer; Page: Integer; Options: Integer): OleVariant;
begin
  Result := DefaultInterface.RenderPageToVariant(DPI, Page, Options);
end;

function TPDFLibrary.ReplaceFonts: Integer;
begin
  Result := DefaultInterface.ReplaceFonts;
end;

function TPDFLibrary.ReplaceImage(OriginalImageID: Integer; NewImageID: Integer): Integer;
begin
  Result := DefaultInterface.ReplaceImage(OriginalImageID, NewImageID);
end;

function TPDFLibrary.ReplaceTag(const Tag: WideString; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.ReplaceTag(Tag, NewValue);
end;

function TPDFLibrary.RequestPrinterStatus(StatusCommand: Integer): Integer;
begin
  Result := DefaultInterface.RequestPrinterStatus(StatusCommand);
end;

function TPDFLibrary.RetrieveCustomDataToFile(const Key: WideString; const FileName: WideString; 
                                              Location: Integer): Integer;
begin
  Result := DefaultInterface.RetrieveCustomDataToFile(Key, FileName, Location);
end;

function TPDFLibrary.RetrieveCustomDataToVariant(const Key: WideString; Location: Integer): OleVariant;
begin
  Result := DefaultInterface.RetrieveCustomDataToVariant(Key, Location);
end;

function TPDFLibrary.ReverseImage(Reset: Integer): Integer;
begin
  Result := DefaultInterface.ReverseImage(Reset);
end;

function TPDFLibrary.RotatePage(PageRotation: Integer): Integer;
begin
  Result := DefaultInterface.RotatePage(PageRotation);
end;

function TPDFLibrary.SaveFontToFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SaveFontToFile(FileName);
end;

function TPDFLibrary.SaveImageListItemDataToFile(ImageListID: Integer; ImageIndex: Integer; 
                                                 Options: Integer; const ImageFileName: WideString): Integer;
begin
  Result := DefaultInterface.SaveImageListItemDataToFile(ImageListID, ImageIndex, Options, 
                                                         ImageFileName);
end;

function TPDFLibrary.SaveImageToFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SaveImageToFile(FileName);
end;

function TPDFLibrary.SaveImageToVariant: OleVariant;
begin
  Result := DefaultInterface.SaveImageToVariant;
end;

function TPDFLibrary.SaveState: Integer;
begin
  Result := DefaultInterface.SaveState;
end;

function TPDFLibrary.SaveStyle(const StyleName: WideString): Integer;
begin
  Result := DefaultInterface.SaveStyle(StyleName);
end;

function TPDFLibrary.SaveToFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SaveToFile(FileName);
end;

function TPDFLibrary.SaveToVariant: OleVariant;
begin
  Result := DefaultInterface.SaveToVariant;
end;

function TPDFLibrary.SecurityInfo(SecurityItem: Integer): Integer;
begin
  Result := DefaultInterface.SecurityInfo(SecurityItem);
end;

function TPDFLibrary.SelectContentStream(NewIndex: Integer): Integer;
begin
  Result := DefaultInterface.SelectContentStream(NewIndex);
end;

function TPDFLibrary.SelectDocument(DocumentID: Integer): Integer;
begin
  Result := DefaultInterface.SelectDocument(DocumentID);
end;

function TPDFLibrary.SelectFont(FontID: Integer): Integer;
begin
  Result := DefaultInterface.SelectFont(FontID);
end;

function TPDFLibrary.SelectImage(ImageID: Integer): Integer;
begin
  Result := DefaultInterface.SelectImage(ImageID);
end;

function TPDFLibrary.SelectPage(PageNumber: Integer): Integer;
begin
  Result := DefaultInterface.SelectPage(PageNumber);
end;

function TPDFLibrary.SelectRenderer(RendererID: Integer): Integer;
begin
  Result := DefaultInterface.SelectRenderer(RendererID);
end;

function TPDFLibrary.SelectedDocument: Integer;
begin
  Result := DefaultInterface.SelectedDocument;
end;

function TPDFLibrary.SelectedFont: Integer;
begin
  Result := DefaultInterface.SelectedFont;
end;

function TPDFLibrary.SelectedImage: Integer;
begin
  Result := DefaultInterface.SelectedImage;
end;

function TPDFLibrary.SelectedPage: Integer;
begin
  Result := DefaultInterface.SelectedPage;
end;

function TPDFLibrary.SetActionURL(ActionID: Integer; const NewURL: WideString): Integer;
begin
  Result := DefaultInterface.SetActionURL(ActionID, NewURL);
end;

function TPDFLibrary.SetAnnotBorderColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetAnnotBorderColor(Index, Red, Green, Blue);
end;

function TPDFLibrary.SetAnnotBorderStyle(Index: Integer; Width: Double; Style: Integer; 
                                         DashOn: Double; DashOff: Double): Integer;
begin
  Result := DefaultInterface.SetAnnotBorderStyle(Index, Width, Style, DashOn, DashOff);
end;

function TPDFLibrary.SetAnnotContents(Index: Integer; const NewContents: WideString): Integer;
begin
  Result := DefaultInterface.SetAnnotContents(Index, NewContents);
end;

function TPDFLibrary.SetAnnotDblProperty(Index: Integer; Tag: Integer; NewValue: Double): Integer;
begin
  Result := DefaultInterface.SetAnnotDblProperty(Index, Tag, NewValue);
end;

function TPDFLibrary.SetAnnotIntProperty(Index: Integer; Tag: Integer; NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetAnnotIntProperty(Index, Tag, NewValue);
end;

function TPDFLibrary.SetAnnotQuadPoints(Index: Integer; QuadNumber: Integer; X1: Double; 
                                        Y1: Double; X2: Double; Y2: Double; X3: Double; Y3: Double; 
                                        X4: Double; Y4: Double): Integer;
begin
  Result := DefaultInterface.SetAnnotQuadPoints(Index, QuadNumber, X1, Y1, X2, Y2, X3, Y3, X4, Y4);
end;

function TPDFLibrary.SetAnnotRect(Index: Integer; Left: Double; Top: Double; Width: Double; 
                                  Height: Double): Integer;
begin
  Result := DefaultInterface.SetAnnotRect(Index, Left, Top, Width, Height);
end;

function TPDFLibrary.SetAnnotStrProperty(Index: Integer; Tag: Integer; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetAnnotStrProperty(Index, Tag, NewValue);
end;

function TPDFLibrary.SetBaseURL(const NewBaseURL: WideString): Integer;
begin
  Result := DefaultInterface.SetBaseURL(NewBaseURL);
end;

function TPDFLibrary.SetBlendMode(BlendMode: Integer): Integer;
begin
  Result := DefaultInterface.SetBlendMode(BlendMode);
end;

function TPDFLibrary.SetBreakString(const NewBreakString: WideString): Integer;
begin
  Result := DefaultInterface.SetBreakString(NewBreakString);
end;

function TPDFLibrary.SetCSDictEPSG(CSDictID: Integer; NewEPSG: Integer): Integer;
begin
  Result := DefaultInterface.SetCSDictEPSG(CSDictID, NewEPSG);
end;

function TPDFLibrary.SetCSDictType(CSDictID: Integer; NewDictType: Integer): Integer;
begin
  Result := DefaultInterface.SetCSDictType(CSDictID, NewDictType);
end;

function TPDFLibrary.SetCSDictWKT(CSDictID: Integer; const NewWKT: WideString): Integer;
begin
  Result := DefaultInterface.SetCSDictWKT(CSDictID, NewWKT);
end;

function TPDFLibrary.SetCairoFileName(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SetCairoFileName(FileName);
end;

function TPDFLibrary.SetCapturedPageOptional(CaptureID: Integer; OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.SetCapturedPageOptional(CaptureID, OptionalContentGroupID);
end;

function TPDFLibrary.SetCapturedPageTransparencyGroup(CaptureID: Integer; CS: Integer; 
                                                      Isolate: Integer; Knockout: Integer): Integer;
begin
  Result := DefaultInterface.SetCapturedPageTransparencyGroup(CaptureID, CS, Isolate, Knockout);
end;

function TPDFLibrary.SetCatalogInformation(const Key: WideString; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetCatalogInformation(Key, NewValue);
end;

function TPDFLibrary.SetCharWidth(CharCode: Integer; NewWidth: Integer): Integer;
begin
  Result := DefaultInterface.SetCharWidth(CharCode, NewWidth);
end;

function TPDFLibrary.SetClippingPath: Integer;
begin
  Result := DefaultInterface.SetClippingPath;
end;

function TPDFLibrary.SetClippingPathEvenOdd: Integer;
begin
  Result := DefaultInterface.SetClippingPathEvenOdd;
end;

function TPDFLibrary.SetCompatibility(CompatibilityItem: Integer; CompatibilityMode: Integer): Integer;
begin
  Result := DefaultInterface.SetCompatibility(CompatibilityItem, CompatibilityMode);
end;

function TPDFLibrary.SetContentStreamFromVariant(NewValue: OleVariant): Integer;
begin
  Result := DefaultInterface.SetContentStreamFromVariant(NewValue);
end;

function TPDFLibrary.SetContentStreamOptional(OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.SetContentStreamOptional(OptionalContentGroupID);
end;

function TPDFLibrary.SetCropBox(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
begin
  Result := DefaultInterface.SetCropBox(Left, Top, Width, Height);
end;

function TPDFLibrary.SetCustomInformation(const Key: WideString; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetCustomInformation(Key, NewValue);
end;

function TPDFLibrary.SetCustomLineDash(const DashPattern: WideString; DashPhase: Double): Integer;
begin
  Result := DefaultInterface.SetCustomLineDash(DashPattern, DashPhase);
end;

function TPDFLibrary.SetDestProperties(DestID: Integer; Zoom: Integer; DestType: Integer; 
                                       Left: Double; Top: Double; Right: Double; Bottom: Double): Integer;
begin
  Result := DefaultInterface.SetDestProperties(DestID, Zoom, DestType, Left, Top, Right, Bottom);
end;

function TPDFLibrary.SetDestValue(DestID: Integer; ValueKey: Integer; NewValue: Double): Integer;
begin
  Result := DefaultInterface.SetDestValue(DestID, ValueKey, NewValue);
end;

function TPDFLibrary.SetDocumentMetadata(const XMP: WideString): Integer;
begin
  Result := DefaultInterface.SetDocumentMetadata(XMP);
end;

function TPDFLibrary.SetEmbeddedFileStrProperty(Index: Integer; Tag: Integer; 
                                                const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetEmbeddedFileStrProperty(Index, Tag, NewValue);
end;

function TPDFLibrary.SetFillColor(Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetFillColor(Red, Green, Blue);
end;

function TPDFLibrary.SetFillColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetFillColorCMYK(C, M, Y, K);
end;

function TPDFLibrary.SetFillColorSep(const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetFillColorSep(ColorName, Tint);
end;

function TPDFLibrary.SetFillShader(const ShaderName: WideString): Integer;
begin
  Result := DefaultInterface.SetFillShader(ShaderName);
end;

function TPDFLibrary.SetFillTilingPattern(const PatternName: WideString): Integer;
begin
  Result := DefaultInterface.SetFillTilingPattern(PatternName);
end;

function TPDFLibrary.SetFindImagesMode(NewFindImagesMode: Integer): Integer;
begin
  Result := DefaultInterface.SetFindImagesMode(NewFindImagesMode);
end;

function TPDFLibrary.SetFontEncoding(Encoding: Integer): Integer;
begin
  Result := DefaultInterface.SetFontEncoding(Encoding);
end;

function TPDFLibrary.SetFontFlags(Fixed: Integer; Serif: Integer; Symbolic: Integer; 
                                  Script: Integer; Italic: Integer; AllCap: Integer; 
                                  SmallCap: Integer; ForceBold: Integer): Integer;
begin
  Result := DefaultInterface.SetFontFlags(Fixed, Serif, Symbolic, Script, Italic, AllCap, SmallCap, 
                                          ForceBold);
end;

function TPDFLibrary.SetFormFieldAlignment(Index: Integer; Alignment: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldAlignment(Index, Alignment);
end;

function TPDFLibrary.SetFormFieldAnnotFlags(Index: Integer; NewFlags: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldAnnotFlags(Index, NewFlags);
end;

function TPDFLibrary.SetFormFieldBackgroundColor(Index: Integer; Red: Double; Green: Double; 
                                                 Blue: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBackgroundColor(Index, Red, Green, Blue);
end;

function TPDFLibrary.SetFormFieldBackgroundColorCMYK(Index: Integer; C: Double; M: Double; 
                                                     Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBackgroundColorCMYK(Index, C, M, Y, K);
end;

function TPDFLibrary.SetFormFieldBackgroundColorGray(Index: Integer; Gray: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBackgroundColorGray(Index, Gray);
end;

function TPDFLibrary.SetFormFieldBackgroundColorSep(Index: Integer; const ColorName: WideString; 
                                                    Tint: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBackgroundColorSep(Index, ColorName, Tint);
end;

function TPDFLibrary.SetFormFieldBorderColor(Index: Integer; Red: Double; Green: Double; 
                                             Blue: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBorderColor(Index, Red, Green, Blue);
end;

function TPDFLibrary.SetFormFieldBorderColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; 
                                                 K: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBorderColorCMYK(Index, C, M, Y, K);
end;

function TPDFLibrary.SetFormFieldBorderColorGray(Index: Integer; Gray: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBorderColorGray(Index, Gray);
end;

function TPDFLibrary.SetFormFieldBorderColorSep(Index: Integer; const ColorName: WideString; 
                                                Tint: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBorderColorSep(Index, ColorName, Tint);
end;

function TPDFLibrary.SetFormFieldBorderStyle(Index: Integer; Width: Double; Style: Integer; 
                                             DashOn: Double; DashOff: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBorderStyle(Index, Width, Style, DashOn, DashOff);
end;

function TPDFLibrary.SetFormFieldBounds(Index: Integer; Left: Double; Top: Double; Width: Double; 
                                        Height: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldBounds(Index, Left, Top, Width, Height);
end;

function TPDFLibrary.SetFormFieldCalcOrder(Index: Integer; Order: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldCalcOrder(Index, Order);
end;

function TPDFLibrary.SetFormFieldCaption(Index: Integer; const NewCaption: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldCaption(Index, NewCaption);
end;

function TPDFLibrary.SetFormFieldCheckStyle(Index: Integer; CheckStyle: Integer; Position: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldCheckStyle(Index, CheckStyle, Position);
end;

function TPDFLibrary.SetFormFieldChildTitle(Index: Integer; const NewTitle: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldChildTitle(Index, NewTitle);
end;

function TPDFLibrary.SetFormFieldChoiceType(Index: Integer; ChoiceType: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldChoiceType(Index, ChoiceType);
end;

function TPDFLibrary.SetFormFieldColor(Index: Integer; Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldColor(Index, Red, Green, Blue);
end;

function TPDFLibrary.SetFormFieldColorCMYK(Index: Integer; C: Double; M: Double; Y: Double; 
                                           K: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldColorCMYK(Index, C, M, Y, K);
end;

function TPDFLibrary.SetFormFieldColorSep(Index: Integer; const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldColorSep(Index, ColorName, Tint);
end;

function TPDFLibrary.SetFormFieldComb(Index: Integer; Comb: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldComb(Index, Comb);
end;

function TPDFLibrary.SetFormFieldDefaultValue(Index: Integer; const NewDefaultValue: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldDefaultValue(Index, NewDefaultValue);
end;

function TPDFLibrary.SetFormFieldDescription(Index: Integer; const NewDescription: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldDescription(Index, NewDescription);
end;

function TPDFLibrary.SetFormFieldFlags(Index: Integer; NewFlags: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldFlags(Index, NewFlags);
end;

function TPDFLibrary.SetFormFieldFont(Index: Integer; FontIndex: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldFont(Index, FontIndex);
end;

function TPDFLibrary.SetFormFieldHighlightMode(Index: Integer; NewMode: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldHighlightMode(Index, NewMode);
end;

function TPDFLibrary.SetFormFieldIcon(Index: Integer; IconType: Integer; CaptureID: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldIcon(Index, IconType, CaptureID);
end;

function TPDFLibrary.SetFormFieldIconStyle(Index: Integer; Placement: Integer; Scale: Integer; 
                                           ScaleType: Integer; HorizontalShift: Integer; 
                                           VerticalShift: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldIconStyle(Index, Placement, Scale, ScaleType, 
                                                   HorizontalShift, VerticalShift);
end;

function TPDFLibrary.SetFormFieldMaxLen(Index: Integer; NewMaxLen: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldMaxLen(Index, NewMaxLen);
end;

function TPDFLibrary.SetFormFieldNoExport(Index: Integer; NoExport: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldNoExport(Index, NoExport);
end;

function TPDFLibrary.SetFormFieldOptional(Index: Integer; OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldOptional(Index, OptionalContentGroupID);
end;

function TPDFLibrary.SetFormFieldPage(Index: Integer; NewPage: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldPage(Index, NewPage);
end;

function TPDFLibrary.SetFormFieldPrintable(Index: Integer; Printable: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldPrintable(Index, Printable);
end;

function TPDFLibrary.SetFormFieldReadOnly(Index: Integer; ReadOnly: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldReadOnly(Index, ReadOnly);
end;

function TPDFLibrary.SetFormFieldRequired(Index: Integer; Required: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldRequired(Index, Required);
end;

function TPDFLibrary.SetFormFieldRotation(Index: Integer; Angle: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldRotation(Index, Angle);
end;

function TPDFLibrary.SetFormFieldStandardFont(Index: Integer; StandardFontID: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldStandardFont(Index, StandardFontID);
end;

function TPDFLibrary.SetFormFieldSubmitAction(Index: Integer; const ActionType: WideString; 
                                              const Link: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldSubmitAction(Index, ActionType, Link);
end;

function TPDFLibrary.SetFormFieldTabOrder(Index: Integer; Order: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldTabOrder(Index, Order);
end;

function TPDFLibrary.SetFormFieldTextFlags(Index: Integer; Multiline: Integer; Password: Integer; 
                                           FileSelect: Integer; DoNotSpellCheck: Integer; 
                                           DoNotScroll: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldTextFlags(Index, Multiline, Password, FileSelect, 
                                                   DoNotSpellCheck, DoNotScroll);
end;

function TPDFLibrary.SetFormFieldTextSize(Index: Integer; NewTextSize: Double): Integer;
begin
  Result := DefaultInterface.SetFormFieldTextSize(Index, NewTextSize);
end;

function TPDFLibrary.SetFormFieldValue(Index: Integer; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldValue(Index, NewValue);
end;

function TPDFLibrary.SetFormFieldValueByTitle(const Title: WideString; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetFormFieldValueByTitle(Title, NewValue);
end;

function TPDFLibrary.SetFormFieldVisible(Index: Integer; Visible: Integer): Integer;
begin
  Result := DefaultInterface.SetFormFieldVisible(Index, Visible);
end;

function TPDFLibrary.SetGDIPlusFileName(const DLLFileName: WideString): Integer;
begin
  Result := DefaultInterface.SetGDIPlusFileName(DLLFileName);
end;

function TPDFLibrary.SetGDIPlusOptions(OptionID: Integer; NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetGDIPlusOptions(OptionID, NewValue);
end;

function TPDFLibrary.SetHTMLBoldFont(const FontSet: WideString; FontID: Integer): Integer;
begin
  Result := DefaultInterface.SetHTMLBoldFont(FontSet, FontID);
end;

function TPDFLibrary.SetHTMLBoldItalicFont(const FontSet: WideString; FontID: Integer): Integer;
begin
  Result := DefaultInterface.SetHTMLBoldItalicFont(FontSet, FontID);
end;

function TPDFLibrary.SetHTMLItalicFont(const FontSet: WideString; FontID: Integer): Integer;
begin
  Result := DefaultInterface.SetHTMLItalicFont(FontSet, FontID);
end;

function TPDFLibrary.SetHTMLNormalFont(const FontSet: WideString; FontID: Integer): Integer;
begin
  Result := DefaultInterface.SetHTMLNormalFont(FontSet, FontID);
end;

function TPDFLibrary.SetImageAsMask(MaskType: Integer): Integer;
begin
  Result := DefaultInterface.SetImageAsMask(MaskType);
end;

function TPDFLibrary.SetImageMask(FromRed: Double; FromGreen: Double; FromBlue: Double; 
                                  ToRed: Double; ToGreen: Double; ToBlue: Double): Integer;
begin
  Result := DefaultInterface.SetImageMask(FromRed, FromGreen, FromBlue, ToRed, ToGreen, ToBlue);
end;

function TPDFLibrary.SetImageMaskCMYK(FromC: Double; FromM: Double; FromY: Double; FromK: Double; 
                                      ToC: Double; ToM: Double; ToY: Double; ToK: Double): Integer;
begin
  Result := DefaultInterface.SetImageMaskCMYK(FromC, FromM, FromY, FromK, ToC, ToM, ToY, ToK);
end;

function TPDFLibrary.SetImageMaskFromImage(ImageID: Integer): Integer;
begin
  Result := DefaultInterface.SetImageMaskFromImage(ImageID);
end;

function TPDFLibrary.SetImageOptional(OptionalContentGroupID: Integer): Integer;
begin
  Result := DefaultInterface.SetImageOptional(OptionalContentGroupID);
end;

function TPDFLibrary.SetImageResolution(Horizontal: Integer; Vertical: Integer; Units: Integer): Integer;
begin
  Result := DefaultInterface.SetImageResolution(Horizontal, Vertical, Units);
end;

function TPDFLibrary.SetInformation(Key: Integer; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetInformation(Key, NewValue);
end;

function TPDFLibrary.SetJPEGQuality(Quality: Integer): Integer;
begin
  Result := DefaultInterface.SetJPEGQuality(Quality);
end;

function TPDFLibrary.SetJavaScriptMode(JSMode: Integer): Integer;
begin
  Result := DefaultInterface.SetJavaScriptMode(JSMode);
end;

function TPDFLibrary.SetKerning(const CharPair: WideString; Adjustment: Integer): Integer;
begin
  Result := DefaultInterface.SetKerning(CharPair, Adjustment);
end;

function TPDFLibrary.SetLineCap(LineCap: Integer): Integer;
begin
  Result := DefaultInterface.SetLineCap(LineCap);
end;

function TPDFLibrary.SetLineColor(Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetLineColor(Red, Green, Blue);
end;

function TPDFLibrary.SetLineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetLineColorCMYK(C, M, Y, K);
end;

function TPDFLibrary.SetLineColorSep(const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetLineColorSep(ColorName, Tint);
end;

function TPDFLibrary.SetLineDash(DashOn: Double; DashOff: Double): Integer;
begin
  Result := DefaultInterface.SetLineDash(DashOn, DashOff);
end;

function TPDFLibrary.SetLineDashEx(const DashValues: WideString): Integer;
begin
  Result := DefaultInterface.SetLineDashEx(DashValues);
end;

function TPDFLibrary.SetLineJoin(LineJoin: Integer): Integer;
begin
  Result := DefaultInterface.SetLineJoin(LineJoin);
end;

function TPDFLibrary.SetLineShader(const ShaderName: WideString): Integer;
begin
  Result := DefaultInterface.SetLineShader(ShaderName);
end;

function TPDFLibrary.SetLineWidth(LineWidth: Double): Integer;
begin
  Result := DefaultInterface.SetLineWidth(LineWidth);
end;

function TPDFLibrary.SetMarkupAnnotStyle(Index: Integer; Red: Double; Green: Double; Blue: Double; 
                                         Transparency: Double): Integer;
begin
  Result := DefaultInterface.SetMarkupAnnotStyle(Index, Red, Green, Blue, Transparency);
end;

function TPDFLibrary.SetMeasureDictBoundsCount(MeasureDictID: Integer; NewCount: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasureDictBoundsCount(MeasureDictID, NewCount);
end;

function TPDFLibrary.SetMeasureDictBoundsItem(MeasureDictID: Integer; ItemIndex: Integer; 
                                              NewValue: Double): Integer;
begin
  Result := DefaultInterface.SetMeasureDictBoundsItem(MeasureDictID, ItemIndex, NewValue);
end;

function TPDFLibrary.SetMeasureDictCoordinateSystem(MeasureDictID: Integer; 
                                                    CoordinateSystemID: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasureDictCoordinateSystem(MeasureDictID, CoordinateSystemID);
end;

function TPDFLibrary.SetMeasureDictGPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasureDictGPTSCount(MeasureDictID, NewCount);
end;

function TPDFLibrary.SetMeasureDictGPTSItem(MeasureDictID: Integer; ItemIndex: Integer; 
                                            NewValue: Double): Integer;
begin
  Result := DefaultInterface.SetMeasureDictGPTSItem(MeasureDictID, ItemIndex, NewValue);
end;

function TPDFLibrary.SetMeasureDictLPTSCount(MeasureDictID: Integer; NewCount: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasureDictLPTSCount(MeasureDictID, NewCount);
end;

function TPDFLibrary.SetMeasureDictLPTSItem(MeasureDictID: Integer; ItemIndex: Integer; 
                                            NewValue: Double): Integer;
begin
  Result := DefaultInterface.SetMeasureDictLPTSItem(MeasureDictID, ItemIndex, NewValue);
end;

function TPDFLibrary.SetMeasureDictPDU(MeasureDictID: Integer; LinearUnit: Integer; 
                                       AreaUnit: Integer; AngularUnit: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasureDictPDU(MeasureDictID, LinearUnit, AreaUnit, AngularUnit);
end;

function TPDFLibrary.SetMeasurementUnits(MeasurementUnits: Integer): Integer;
begin
  Result := DefaultInterface.SetMeasurementUnits(MeasurementUnits);
end;

function TPDFLibrary.SetNeedAppearances(NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetNeedAppearances(NewValue);
end;

function TPDFLibrary.SetObjectFromVariant(ObjectNumber: Integer; NewValue: OleVariant): Integer;
begin
  Result := DefaultInterface.SetObjectFromVariant(ObjectNumber, NewValue);
end;

function TPDFLibrary.SetOpenActionDestination(OpenPage: Integer; Zoom: Integer): Integer;
begin
  Result := DefaultInterface.SetOpenActionDestination(OpenPage, Zoom);
end;

function TPDFLibrary.SetOpenActionDestinationFull(OpenPage: Integer; Zoom: Integer; 
                                                  DestType: Integer; Left: Double; Top: Double; 
                                                  Right: Double; Bottom: Double): Integer;
begin
  Result := DefaultInterface.SetOpenActionDestinationFull(OpenPage, Zoom, DestType, Left, Top, 
                                                          Right, Bottom);
end;

function TPDFLibrary.SetOpenActionJavaScript(const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.SetOpenActionJavaScript(JavaScript);
end;

function TPDFLibrary.SetOpenActionMenu(const MenuItem: WideString): Integer;
begin
  Result := DefaultInterface.SetOpenActionMenu(MenuItem);
end;

function TPDFLibrary.SetOptionalContentConfigLocked(OptionalContentConfigID: Integer; 
                                                    OptionalContentGroupID: Integer; 
                                                    NewLocked: Integer): Integer;
begin
  Result := DefaultInterface.SetOptionalContentConfigLocked(OptionalContentConfigID, 
                                                            OptionalContentGroupID, NewLocked);
end;

function TPDFLibrary.SetOptionalContentConfigState(OptionalContentConfigID: Integer; 
                                                   OptionalContentGroupID: Integer; 
                                                   NewState: Integer): Integer;
begin
  Result := DefaultInterface.SetOptionalContentConfigState(OptionalContentConfigID, 
                                                           OptionalContentGroupID, NewState);
end;

function TPDFLibrary.SetOptionalContentGroupName(OptionalContentGroupID: Integer; 
                                                 const NewGroupName: WideString): Integer;
begin
  Result := DefaultInterface.SetOptionalContentGroupName(OptionalContentGroupID, NewGroupName);
end;

function TPDFLibrary.SetOptionalContentGroupPrintable(OptionalContentGroupID: Integer; 
                                                      Printable: Integer): Integer;
begin
  Result := DefaultInterface.SetOptionalContentGroupPrintable(OptionalContentGroupID, Printable);
end;

function TPDFLibrary.SetOptionalContentGroupVisible(OptionalContentGroupID: Integer; 
                                                    Visible: Integer): Integer;
begin
  Result := DefaultInterface.SetOptionalContentGroupVisible(OptionalContentGroupID, Visible);
end;

function TPDFLibrary.SetOrigin(Origin: Integer): Integer;
begin
  Result := DefaultInterface.SetOrigin(Origin);
end;

function TPDFLibrary.SetOutlineColor(OutlineID: Integer; Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetOutlineColor(OutlineID, Red, Green, Blue);
end;

function TPDFLibrary.SetOutlineDestination(OutlineID: Integer; DestPage: Integer; 
                                           DestPosition: Double): Integer;
begin
  Result := DefaultInterface.SetOutlineDestination(OutlineID, DestPage, DestPosition);
end;

function TPDFLibrary.SetOutlineDestinationFull(OutlineID: Integer; DestPage: Integer; 
                                               Zoom: Integer; DestType: Integer; Left: Double; 
                                               Top: Double; Right: Double; Bottom: Double): Integer;
begin
  Result := DefaultInterface.SetOutlineDestinationFull(OutlineID, DestPage, Zoom, DestType, Left, 
                                                       Top, Right, Bottom);
end;

function TPDFLibrary.SetOutlineDestinationZoom(OutlineID: Integer; DestPage: Integer; 
                                               DestPosition: Double; Zoom: Integer): Integer;
begin
  Result := DefaultInterface.SetOutlineDestinationZoom(OutlineID, DestPage, DestPosition, Zoom);
end;

function TPDFLibrary.SetOutlineJavaScript(OutlineID: Integer; const JavaScript: WideString): Integer;
begin
  Result := DefaultInterface.SetOutlineJavaScript(OutlineID, JavaScript);
end;

function TPDFLibrary.SetOutlineNamedDestination(OutlineID: Integer; const DestName: WideString): Integer;
begin
  Result := DefaultInterface.SetOutlineNamedDestination(OutlineID, DestName);
end;

function TPDFLibrary.SetOutlineOpenFile(OutlineID: Integer; const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SetOutlineOpenFile(OutlineID, FileName);
end;

function TPDFLibrary.SetOutlineRemoteDestination(OutlineID: Integer; const FileName: WideString; 
                                                 OpenPage: Integer; Zoom: Integer; 
                                                 DestType: Integer; PntLeft: Double; 
                                                 PntTop: Double; PntRight: Double; 
                                                 PntBottom: Double; NewWindow: Integer): Integer;
begin
  Result := DefaultInterface.SetOutlineRemoteDestination(OutlineID, FileName, OpenPage, Zoom, 
                                                         DestType, PntLeft, PntTop, PntRight, 
                                                         PntBottom, NewWindow);
end;

function TPDFLibrary.SetOutlineStyle(OutlineID: Integer; SetItalic: Integer; SetBold: Integer): Integer;
begin
  Result := DefaultInterface.SetOutlineStyle(OutlineID, SetItalic, SetBold);
end;

function TPDFLibrary.SetOutlineTitle(OutlineID: Integer; const NewTitle: WideString): Integer;
begin
  Result := DefaultInterface.SetOutlineTitle(OutlineID, NewTitle);
end;

function TPDFLibrary.SetOutlineWebLink(OutlineID: Integer; const Link: WideString): Integer;
begin
  Result := DefaultInterface.SetOutlineWebLink(OutlineID, Link);
end;

function TPDFLibrary.SetOverprint(StrokingOverprint: Integer; OtherOverprint: Integer; 
                                  OverprintMode: Integer): Integer;
begin
  Result := DefaultInterface.SetOverprint(StrokingOverprint, OtherOverprint, OverprintMode);
end;

function TPDFLibrary.SetPDFAMode(NewMode: Integer): Integer;
begin
  Result := DefaultInterface.SetPDFAMode(NewMode);
end;

function TPDFLibrary.SetPNGTransparencyColor(RedByte: Integer; GreenByte: Integer; BlueByte: Integer): Integer;
begin
  Result := DefaultInterface.SetPNGTransparencyColor(RedByte, GreenByte, BlueByte);
end;

function TPDFLibrary.SetPageActionMenu(const MenuItem: WideString): Integer;
begin
  Result := DefaultInterface.SetPageActionMenu(MenuItem);
end;

function TPDFLibrary.SetPageBox(BoxType: Integer; Left: Double; Top: Double; Width: Double; 
                                Height: Double): Integer;
begin
  Result := DefaultInterface.SetPageBox(BoxType, Left, Top, Width, Height);
end;

function TPDFLibrary.SetPageContentFromVariant(NewValue: OleVariant): Integer;
begin
  Result := DefaultInterface.SetPageContentFromVariant(NewValue);
end;

function TPDFLibrary.SetPageDimensions(NewPageWidth: Double; NewPageHeight: Double): Integer;
begin
  Result := DefaultInterface.SetPageDimensions(NewPageWidth, NewPageHeight);
end;

function TPDFLibrary.SetPageLayout(NewPageLayout: Integer): Integer;
begin
  Result := DefaultInterface.SetPageLayout(NewPageLayout);
end;

function TPDFLibrary.SetPageMode(NewPageMode: Integer): Integer;
begin
  Result := DefaultInterface.SetPageMode(NewPageMode);
end;

function TPDFLibrary.SetPageSize(const PaperName: WideString): Integer;
begin
  Result := DefaultInterface.SetPageSize(PaperName);
end;

function TPDFLibrary.SetPageThumbnail: Integer;
begin
  Result := DefaultInterface.SetPageThumbnail;
end;

function TPDFLibrary.SetPageTransparencyGroup(CS: Integer; Isolate: Integer; Knockout: Integer): Integer;
begin
  Result := DefaultInterface.SetPageTransparencyGroup(CS, Isolate, Knockout);
end;

function TPDFLibrary.SetPrecision(NewPrecision: Integer): Integer;
begin
  Result := DefaultInterface.SetPrecision(NewPrecision);
end;

function TPDFLibrary.SetPrinterDevModeFromVariant(Source: OleVariant): Integer;
begin
  Result := DefaultInterface.SetPrinterDevModeFromVariant(Source);
end;

function TPDFLibrary.SetRenderCropType(NewCropType: Integer): Integer;
begin
  Result := DefaultInterface.SetRenderCropType(NewCropType);
end;

function TPDFLibrary.SetRenderDCErasePage(NewErasePage: Integer): Integer;
begin
  Result := DefaultInterface.SetRenderDCErasePage(NewErasePage);
end;

function TPDFLibrary.SetRenderDCOffset(NewOffsetX: Integer; NewOffsetY: Integer): Integer;
begin
  Result := DefaultInterface.SetRenderDCOffset(NewOffsetX, NewOffsetY);
end;

function TPDFLibrary.SetRenderScale(NewScale: Double): Integer;
begin
  Result := DefaultInterface.SetRenderScale(NewScale);
end;

function TPDFLibrary.SetScale(NewScale: Double): Integer;
begin
  Result := DefaultInterface.SetScale(NewScale);
end;

function TPDFLibrary.SetTableBorderColor(TableID: Integer; BorderIndex: Integer; Red: Double; 
                                         Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTableBorderColor(TableID, BorderIndex, Red, Green, Blue);
end;

function TPDFLibrary.SetTableBorderColorCMYK(TableID: Integer; BorderIndex: Integer; C: Double; 
                                             M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTableBorderColorCMYK(TableID, BorderIndex, C, M, Y, K);
end;

function TPDFLibrary.SetTableBorderWidth(TableID: Integer; BorderIndex: Integer; NewWidth: Double): Integer;
begin
  Result := DefaultInterface.SetTableBorderWidth(TableID, BorderIndex, NewWidth);
end;

function TPDFLibrary.SetTableCellAlignment(TableID: Integer; FirstRow: Integer; 
                                           FirstColumn: Integer; LastRow: Integer; 
                                           LastColumn: Integer; NewCellAlignment: Integer): Integer;
begin
  Result := DefaultInterface.SetTableCellAlignment(TableID, FirstRow, FirstColumn, LastRow, 
                                                   LastColumn, NewCellAlignment);
end;

function TPDFLibrary.SetTableCellBackgroundColor(TableID: Integer; FirstRow: Integer; 
                                                 FirstColumn: Integer; LastRow: Integer; 
                                                 LastColumn: Integer; Red: Double; Green: Double; 
                                                 Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellBackgroundColor(TableID, FirstRow, FirstColumn, LastRow, 
                                                         LastColumn, Red, Green, Blue);
end;

function TPDFLibrary.SetTableCellBackgroundColorCMYK(TableID: Integer; FirstRow: Integer; 
                                                     FirstColumn: Integer; LastRow: Integer; 
                                                     LastColumn: Integer; C: Double; M: Double; 
                                                     Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellBackgroundColorCMYK(TableID, FirstRow, FirstColumn, 
                                                             LastRow, LastColumn, C, M, Y, K);
end;

function TPDFLibrary.SetTableCellBorderColor(TableID: Integer; FirstRow: Integer; 
                                             FirstColumn: Integer; LastRow: Integer; 
                                             LastColumn: Integer; BorderIndex: Integer; 
                                             Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellBorderColor(TableID, FirstRow, FirstColumn, LastRow, 
                                                     LastColumn, BorderIndex, Red, Green, Blue);
end;

function TPDFLibrary.SetTableCellBorderColorCMYK(TableID: Integer; FirstRow: Integer; 
                                                 FirstColumn: Integer; LastRow: Integer; 
                                                 LastColumn: Integer; BorderIndex: Integer; 
                                                 C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellBorderColorCMYK(TableID, FirstRow, FirstColumn, LastRow, 
                                                         LastColumn, BorderIndex, C, M, Y, K);
end;

function TPDFLibrary.SetTableCellBorderWidth(TableID: Integer; FirstRow: Integer; 
                                             FirstColumn: Integer; LastRow: Integer; 
                                             LastColumn: Integer; BorderIndex: Integer; 
                                             NewWidth: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellBorderWidth(TableID, FirstRow, FirstColumn, LastRow, 
                                                     LastColumn, BorderIndex, NewWidth);
end;

function TPDFLibrary.SetTableCellContent(TableID: Integer; RowNumber: Integer; 
                                         ColumnNumber: Integer; const HTMLText: WideString): Integer;
begin
  Result := DefaultInterface.SetTableCellContent(TableID, RowNumber, ColumnNumber, HTMLText);
end;

function TPDFLibrary.SetTableCellPadding(TableID: Integer; FirstRow: Integer; FirstColumn: Integer; 
                                         LastRow: Integer; LastColumn: Integer; 
                                         BorderIndex: Integer; NewPadding: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellPadding(TableID, FirstRow, FirstColumn, LastRow, 
                                                 LastColumn, BorderIndex, NewPadding);
end;

function TPDFLibrary.SetTableCellTextColor(TableID: Integer; FirstRow: Integer; 
                                           FirstColumn: Integer; LastRow: Integer; 
                                           LastColumn: Integer; Red: Double; Green: Double; 
                                           Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellTextColor(TableID, FirstRow, FirstColumn, LastRow, 
                                                   LastColumn, Red, Green, Blue);
end;

function TPDFLibrary.SetTableCellTextColorCMYK(TableID: Integer; FirstRow: Integer; 
                                               FirstColumn: Integer; LastRow: Integer; 
                                               LastColumn: Integer; C: Double; M: Double; 
                                               Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellTextColorCMYK(TableID, FirstRow, FirstColumn, LastRow, 
                                                       LastColumn, C, M, Y, K);
end;

function TPDFLibrary.SetTableCellTextSize(TableID: Integer; FirstRow: Integer; 
                                          FirstColumn: Integer; LastRow: Integer; 
                                          LastColumn: Integer; NewTextSize: Double): Integer;
begin
  Result := DefaultInterface.SetTableCellTextSize(TableID, FirstRow, FirstColumn, LastRow, 
                                                  LastColumn, NewTextSize);
end;

function TPDFLibrary.SetTableColumnWidth(TableID: Integer; FirstColumn: Integer; 
                                         LastColumn: Integer; NewWidth: Double): Integer;
begin
  Result := DefaultInterface.SetTableColumnWidth(TableID, FirstColumn, LastColumn, NewWidth);
end;

function TPDFLibrary.SetTableRowHeight(TableID: Integer; FirstRow: Integer; LastRow: Integer; 
                                       NewHeight: Double): Integer;
begin
  Result := DefaultInterface.SetTableRowHeight(TableID, FirstRow, LastRow, NewHeight);
end;

function TPDFLibrary.SetTableThinBorders(TableID: Integer; ThinBorders: Integer; Red: Double; 
                                         Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTableThinBorders(TableID, ThinBorders, Red, Green, Blue);
end;

function TPDFLibrary.SetTableThinBordersCMYK(TableID: Integer; ThinBorders: Integer; C: Double; 
                                             M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTableThinBordersCMYK(TableID, ThinBorders, C, M, Y, K);
end;

function TPDFLibrary.SetTempFile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.SetTempFile(FileName);
end;

function TPDFLibrary.SetTempPath(const NewPath: WideString): Integer;
begin
  Result := DefaultInterface.SetTempPath(NewPath);
end;

function TPDFLibrary.SetTextAlign(TextAlign: Integer): Integer;
begin
  Result := DefaultInterface.SetTextAlign(TextAlign);
end;

function TPDFLibrary.SetTextCharSpacing(CharSpacing: Double): Integer;
begin
  Result := DefaultInterface.SetTextCharSpacing(CharSpacing);
end;

function TPDFLibrary.SetTextColor(Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTextColor(Red, Green, Blue);
end;

function TPDFLibrary.SetTextColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTextColorCMYK(C, M, Y, K);
end;

function TPDFLibrary.SetTextColorSep(const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetTextColorSep(ColorName, Tint);
end;

function TPDFLibrary.SetTextExtractionArea(Left: Double; Top: Double; Width: Double; Height: Double): Integer;
begin
  Result := DefaultInterface.SetTextExtractionArea(Left, Top, Width, Height);
end;

function TPDFLibrary.SetTextExtractionOptions(OptionID: Integer; NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetTextExtractionOptions(OptionID, NewValue);
end;

function TPDFLibrary.SetTextExtractionScaling(Options: Integer; Horizontal: Double; Vertical: Double): Integer;
begin
  Result := DefaultInterface.SetTextExtractionScaling(Options, Horizontal, Vertical);
end;

function TPDFLibrary.SetTextExtractionWordGap(NewWordGap: Double): Integer;
begin
  Result := DefaultInterface.SetTextExtractionWordGap(NewWordGap);
end;

function TPDFLibrary.SetTextHighlight(Highlight: Integer): Integer;
begin
  Result := DefaultInterface.SetTextHighlight(Highlight);
end;

function TPDFLibrary.SetTextHighlightColor(Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTextHighlightColor(Red, Green, Blue);
end;

function TPDFLibrary.SetTextHighlightColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTextHighlightColorCMYK(C, M, Y, K);
end;

function TPDFLibrary.SetTextHighlightColorSep(const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetTextHighlightColorSep(ColorName, Tint);
end;

function TPDFLibrary.SetTextMode(TextMode: Integer): Integer;
begin
  Result := DefaultInterface.SetTextMode(TextMode);
end;

function TPDFLibrary.SetTextRise(Rise: Double): Integer;
begin
  Result := DefaultInterface.SetTextRise(Rise);
end;

function TPDFLibrary.SetTextScaling(ScalePercentage: Double): Integer;
begin
  Result := DefaultInterface.SetTextScaling(ScalePercentage);
end;

function TPDFLibrary.SetTextShader(const ShaderName: WideString): Integer;
begin
  Result := DefaultInterface.SetTextShader(ShaderName);
end;

function TPDFLibrary.SetTextSize(TextSize: Double): Integer;
begin
  Result := DefaultInterface.SetTextSize(TextSize);
end;

function TPDFLibrary.SetTextSpacing(Spacing: Double): Integer;
begin
  Result := DefaultInterface.SetTextSpacing(Spacing);
end;

function TPDFLibrary.SetTextUnderline(Underline: Integer): Integer;
begin
  Result := DefaultInterface.SetTextUnderline(Underline);
end;

function TPDFLibrary.SetTextUnderlineColor(Red: Double; Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineColor(Red, Green, Blue);
end;

function TPDFLibrary.SetTextUnderlineColorCMYK(C: Double; M: Double; Y: Double; K: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineColorCMYK(C, M, Y, K);
end;

function TPDFLibrary.SetTextUnderlineColorSep(const ColorName: WideString; Tint: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineColorSep(ColorName, Tint);
end;

function TPDFLibrary.SetTextUnderlineCustomDash(const DashPattern: WideString; DashPhase: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineCustomDash(DashPattern, DashPhase);
end;

function TPDFLibrary.SetTextUnderlineDash(DashOn: Double; DashOff: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineDash(DashOn, DashOff);
end;

function TPDFLibrary.SetTextUnderlineDistance(UnderlineDistance: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineDistance(UnderlineDistance);
end;

function TPDFLibrary.SetTextUnderlineWidth(UnderlineWidth: Double): Integer;
begin
  Result := DefaultInterface.SetTextUnderlineWidth(UnderlineWidth);
end;

function TPDFLibrary.SetTextWordSpacing(WordSpacing: Double): Integer;
begin
  Result := DefaultInterface.SetTextWordSpacing(WordSpacing);
end;

function TPDFLibrary.SetTransparency(Transparency: Integer): Integer;
begin
  Result := DefaultInterface.SetTransparency(Transparency);
end;

function TPDFLibrary.SetViewerPreferences(Option: Integer; NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetViewerPreferences(Option, NewValue);
end;

function TPDFLibrary.SetXFAFormFieldAccess(const XFAFieldName: WideString; NewAccess: Integer): Integer;
begin
  Result := DefaultInterface.SetXFAFormFieldAccess(XFAFieldName, NewAccess);
end;

function TPDFLibrary.SetXFAFormFieldBorderColor(const XFAFieldName: WideString; Red: Double; 
                                                Green: Double; Blue: Double): Integer;
begin
  Result := DefaultInterface.SetXFAFormFieldBorderColor(XFAFieldName, Red, Green, Blue);
end;

function TPDFLibrary.SetXFAFormFieldBorderPresence(const XFAFieldName: WideString; 
                                                   NewPresence: Integer): Integer;
begin
  Result := DefaultInterface.SetXFAFormFieldBorderPresence(XFAFieldName, NewPresence);
end;

function TPDFLibrary.SetXFAFormFieldBorderWidth(const XFAFieldName: WideString; BorderWidth: Double): Integer;
begin
  Result := DefaultInterface.SetXFAFormFieldBorderWidth(XFAFieldName, BorderWidth);
end;

function TPDFLibrary.SetXFAFormFieldValue(const XFAFieldName: WideString; const NewValue: WideString): Integer;
begin
  Result := DefaultInterface.SetXFAFormFieldValue(XFAFieldName, NewValue);
end;

function TPDFLibrary.SetXFAFromString(const Source: WideString; Options: Integer): Integer;
begin
  Result := DefaultInterface.SetXFAFromString(Source, Options);
end;

function TPDFLibrary.SetupCustomPrinter(const CustomPrinterName: WideString; Setting: Integer; 
                                        NewValue: Integer): Integer;
begin
  Result := DefaultInterface.SetupCustomPrinter(CustomPrinterName, Setting, NewValue);
end;

function TPDFLibrary.SignFile(const InputFileName: WideString; const OpenPassword: WideString; 
                              const SignatureFieldName: WideString; 
                              const OutputFileName: WideString; const PFXFileName: WideString; 
                              const PFXPassword: WideString; const Reason: WideString; 
                              const Location: WideString; const ContactInfo: WideString): Integer;
begin
  Result := DefaultInterface.SignFile(InputFileName, OpenPassword, SignatureFieldName, 
                                      OutputFileName, PFXFileName, PFXPassword, Reason, Location, 
                                      ContactInfo);
end;

function TPDFLibrary.SplitPageText(Options: Integer): Integer;
begin
  Result := DefaultInterface.SplitPageText(Options);
end;

function TPDFLibrary.StartPath(StartX: Double; StartY: Double): Integer;
begin
  Result := DefaultInterface.StartPath(StartX, StartY);
end;

function TPDFLibrary.StoreCustomDataFromFile(const Key: WideString; const FileName: WideString; 
                                             Location: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.StoreCustomDataFromFile(Key, FileName, Location, Options);
end;

function TPDFLibrary.StoreCustomDataFromVariant(const Key: WideString; NewValue: OleVariant; 
                                                Location: Integer; Options: Integer): Integer;
begin
  Result := DefaultInterface.StoreCustomDataFromVariant(Key, NewValue, Location, Options);
end;

function TPDFLibrary.TestTempPath: Integer;
begin
  Result := DefaultInterface.TestTempPath;
end;

function TPDFLibrary.TransformFile(const InputFileName: WideString; const Password: WideString; 
                                   const OutputFileName: WideString; TransformType: Integer; 
                                   Options: Integer): Integer;
begin
  Result := DefaultInterface.TransformFile(InputFileName, Password, OutputFileName, TransformType, 
                                           Options);
end;

function TPDFLibrary.UnlockKey(const LicenseKey: WideString): Integer;
begin
  Result := DefaultInterface.UnlockKey(LicenseKey);
end;

function TPDFLibrary.Unlocked: Integer;
begin
  Result := DefaultInterface.Unlocked;
end;

function TPDFLibrary.UpdateAndFlattenFormField(Index: Integer): Integer;
begin
  Result := DefaultInterface.UpdateAndFlattenFormField(Index);
end;

function TPDFLibrary.UpdateAppearanceStream(Index: Integer): Integer;
begin
  Result := DefaultInterface.UpdateAppearanceStream(Index);
end;

function TPDFLibrary.UseKerning(Kern: Integer): Integer;
begin
  Result := DefaultInterface.UseKerning(Kern);
end;

function TPDFLibrary.UseUnsafeContentStreams(SafetyLevel: Integer): Integer;
begin
  Result := DefaultInterface.UseUnsafeContentStreams(SafetyLevel);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TPDFLibrary]);
end;

end.

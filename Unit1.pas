unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, frm_Noil;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    ListSearchDB: TListView;
    ListResult: TListView;
    TextUserID: TEdit;
    BtnRegister: TButton;
    BtnSearch: TButton;
    BtnIdentify: TButton;
    BtnRemove: TButton;
    BtnSave: TButton;
    BtnClear: TButton;
    BtnLoad: TButton;
    BtnExit: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    Label3: TLabel;
    lblSearch: TLabel;
    lblIdentify: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRegisterClick(Sender: TObject);
    procedure TextUserIDKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRemoveClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnIdentifyClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
        NBioAPIERROR_NONE = 0;

        NBioAPI_FIR_PURPOSE_VERIFY      = 1;

        //Constant for DeviceID
        NBioAPI_DEVICE_ID_NONE          = 0;
        NBioAPI_DEVICE_ID_FDP02_0       = 1;
        NBioAPI_DEVICE_ID_FDU01_0       = 2;
        NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;
var
  Form1: TForm1;

implementation

uses Comobj,frm_catalogo_empleados,Frm_Verificar;

var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
{$R *.DFM}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        objDevice       := 0;
        objExtraction   := 0;
        objNSearch      := 0;
        objNBioBSP      := 0;
//        frmCatalogoEmpleados.cxCancelarDetalle.OnClick(sender);
end;

procedure TForm1.BtnRegisterClick(Sender: TObject);
var
        i         : longint;
        nUserID   : longint;
        szFir     : wideString;
        str       : widestring;
        ListItem  : TListItem;
        objResult : variant;
        id,Huella : String;
begin
        if TextUserID.Text = '' then
        begin
                Application.MessageBox('Input edit box', 'Error', mb_ok);
                Exit;
        end;

        nUserID := 0;
        nUserID := StrToInt64(TextUserID.Text);

        //Get FIR data
        objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Open device failed !', 'Error', mb_ok);
                Exit;
        end;

        objExtraction.Enroll(0);
        if objExtraction.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objExtraction.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Extraction failed !', 'Error', mb_ok);
                objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
                Exit;
        end;

        objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str),'Error',mb_ok);
                Application.MessageBox('Close device failed !', 'Error', mb_ok);
                Exit;
        end;
        //extrae el codigo
        szFir := objExtraction.TextEncodeFIR;
        //Regist FIR to NSearch DB
        objNSearch.AddFIR(szFir, nUserID);

        if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objNSearch.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Extraction failed !', 'Error', mb_ok);
                Exit;
        end;

        for i := 1 to objNSearch.Count do
        begin
                objResult := objNSearch.Item[i];

                ListItem:=ListSearchDB.Items.Add;
                ListItem.Caption:= objResult.UserID;
                ListItem.SubItems.Add(objResult.FingerID);
                ListItem.SubItems.Add(objResult.SampleNumber);

        end;
        Huella := objNSearch.AddFIR(szFir, nUserID);
        frmCatalogoEmpleados.zScanner.SQL.Text:='Update master_personal set ImgHuella = :Dato where IdPersonal = :Id';
        frmCatalogoEmpleados.zScanner.ParamByName('Id').AsInteger:=frmCatalogoEmpleados.ds_personal.DataSet.FieldByName('IdPersonal').asInteger;
        frmCatalogoEmpleados.zScanner.ParamByName('Dato').AsString:=Huella;

        TextUserID.Text := IntToStr(StrToInt64(TextUserID.Text)+1);
end;

procedure TForm1.TextUserIDKeyPress(Sender: TObject; var Key: Char);
begin
        if (not(key in ['0'..'9'])) and (not(key = #8)) then
        begin
                key := #0;
                Application.MessageBox('User ID must be have numeric type and greater than 0.','Error',mb_ok);
        end;
end;

procedure TForm1.BtnRemoveClick(Sender: TObject);
var
        nUserID,
        nFingerID,
        nSampleNumber : longint;
        str : string;
begin

        if ListSearchDB.SelCount = 0 then
        begin
                Application.MessageBox('Click Item....', 'Error', mb_ok);
                exit;
        end;

        nUserID         := ListSearchDB.InstanceSize;
        nUserID         := StrToInt(ListSearchDB.selected.caption);
        nFingerID       := StrToInt(ListSearchDB.selected.SubItems[0]);
        nSampleNumber   := StrToInt(ListSearchDB.selected.SubItems[1]);

        objNSearch.RemoveData(nUserID, nFingerID, nSampleNumber);

        if objNSearch.ErrorCode = NBioAPIERROR_NONE then
        begin
                ListSearchDB.Items.Delete(ListSearchDB.Selected.Index) ;
                Application.MessageBox('Remove data success.', 'Success', mb_ok);
        end
        else
        begin
                str := objNSearch.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Remove filed !', 'Error', mb_ok);
        end;
end;

procedure TForm1.BtnSaveClick(Sender: TObject);
var
        i   : longint;
        fh1 : TextFile;
        szFileName, szFileName1 : String;
        szInputData   : String;
        nUserID, nFingerID, nSampleNumber : longint;
begin
        if SaveDialog1.Execute then
        begin
                szFileName := SaveDialog1.FileName;
                if (szFileName <> '') then
                begin
                        //Save SearchDB to File
                        objNSearch.SaveDBToFile(szFileName) ;

                        if objNSearch.ErrorCode = NBioAPIERROR_NONE then
                        begin
                                //Save list to file
                                szFileName1 := Copy(szFileName, 1, Length(szFileName) - 4);

                                AssignFile(fh1, szFileName1 + '.FID');
                                ReWrite(fh1);

                                for i := 0 to ListSearchDB.Items.Count - 1 do
                                begin
                                        nUserID         := StrToInt(ListSearchDB.Items[i].Caption);
                                        nFingerID       := StrToInt(ListSearchDB.Items[i].SubItems[0]);
                                        nSampleNumber   := StrToInt(ListSearchDB.Items[i].SubItems[1]);
                                        szInputData     := IntToStr(nUserID) + char(9) + IntToStr(nFingerID) + char(9) + IntToStr(nSampleNumber);
                                        Writeln(fh1, szInputData);
                                end;

                                CloseFile(fh1);
                                ShowMessage('Save SearchDB to file success !!');

                        end else
                                ShowMessage('Save DB failed !');

                end else
                        ShowMessage('Please, input file name..');
        end;
end;

procedure TForm1.BtnLoadClick(Sender: TObject);
var
        i        : longint;
        szFileName, szTemp, str : String;
        readData, itemData      : String;

        fh1      : TextFile;
        ListItem : TListItem;
        flag     : boolean;

begin
        if ListSearchDB.Items.Count > 0 then
        begin
          i := MessageBox(Handle, 'If you load database from file, existing memory database will be cleared!' + chr(13) +
                            'Are you sure you want to load database?', 'NSearchDemoDP', MB_YESNO or MB_ICONQUESTION);
          if i <> IDYES then
          begin
            exit;
          end;
        end;

        ListItem := nil;

        if OpenDialog1.Execute  then
        begin
                szTemp := OpenDialog1.FileName;

                if szTemp <> '' Then
                begin
                        // clear memory database..
                        ListSearchDB.Items.Clear;
                        ListResult.Items.Clear;
                        objNSearch.ClearDB;

                        objNSearch.LoadDBFromFile(szTemp);
                        if objNSearch.ErrorCode <> NBioAPIERROR_NONE Then
                        begin
                                str:= objNSearch.ErrorDescription;
                                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                                Application.MessageBox('Load db failed !', 'Error', mb_ok);
                                Exit;
                        end;

                        szFileName := Copy(szTemp, 1, Pos('.', szTemp) - 1);
                        
                        AssignFile(fh1, szFileName + '.FID');
                        reset(fh1);

                        while not Eof(fh1) do
                        begin
                                Readln(fh1, readData);
                                if readData <>'' then
                                begin
                                        flag     := true;
                                        itemData :='';

                                        for i := 1 to Length(readData) do
                                        begin
                                                if readData[i] <> char(9) then
                                                        itemData:= itemData + readData[i];

                                                if i = Length(readData) then
                                                        ListItem.SubItems.Add(readData[i]);

                                                if readData[i] = char(9) then
                                                begin
                                                        if not flag then
                                                        begin
                                                                ListItem.SubItems.Add(itemData);
                                                                itemData := '';
                                                        end else
                                                        begin
                                                                ListItem := ListSearchDB.Items.Add;
                                                                ListItem.Caption := itemData;
                                                                itemData := '';

                                                                flag := false;
                                                        end;
                                                end;
                                        end; //end of for
                                end;
                        end; //end of while

                        Closefile(fh1);
                end;
        end;
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
        ListSearchDB.Items.Clear;
        ListResult.Items.Clear;
        objNSearch.ClearDB
end;

procedure TForm1.BtnSearchClick(Sender: TObject);
var
        i          : longint;
        szFir,
        str        : WideString;
        ListItem   : TListItem;
        objResult  : variant;
        nFirst     : Integer;
        nLast      : Integer;
begin
        szFir := '';

        //Get FIR data
        objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT) ;
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Device open failed !', 'Error', mb_ok);
                Exit;
        end;

        objExtraction.Capture(NBioAPI_FIR_PURPOSE_VERIFY) ;
        if objExtraction.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objExtraction.ErrorDescription;
                Application.MessageBox('Extracton failed !', 'Error', mb_ok);
                objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
                Exit;
        end;

        objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Device close failed !', 'Error', mb_ok);
                Exit;
        end;

        szFir := objExtraction.TextEncodeFIR;

        //Search FIR to NSearch DB
        nFirst := GetTickCount;
        objNSearch.SearchData(szFir);
        nLast  := GetTickCount;

        lblSearch.Caption := IntToStr(nLast - nFirst) + 'ms';

        if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objNSearch.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Search failed !', 'Error', mb_ok);
                ListResult.Items.Clear;
                Exit;
        end;

        //Add item to list of result
        ListResult.Items.Clear;

        for i := 1 to objNSearch.Count do
        begin
                objResult := objNSearch.Item[i];

                ListItem := ListResult.Items.Add;
                ListItem.Caption := intTostr(objResult.UserID);
                ListItem.SubItems.Add(intTostr(objResult.FingerID));
                ListItem.SubItems.Add(intTostr(objResult.SampleNumber));
                ListItem.SubItems.Add(intTostr(objResult.ConfidenceLevel));
        end;
end;

procedure TForm1.BtnIdentifyClick(Sender: TObject);
var
        szFir    : wideString;
        str      : wideString;
        ListItem : TListItem;
        nFirst   : Integer;
        nLast    : Integer;
        huella   : String;
begin
        //Get FIR data
        objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Device open failed !', 'Error', mb_ok);
                Exit;
        end;

        objExtraction.Capture(1);
        if objExtraction.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objExtraction.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Extraction failed !', 'Error', mb_ok);
                objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
                Exit;
        end;

        objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
        if objDevice.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objDevice.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Device close failed !', 'Error', mb_ok);
                Exit;
        end;

        szFir := objExtraction.TextEncodeFIR;

        //Search FIR to NSearch DB
        nFirst := GetTickCount;
        objNSearch.IdentifyUser(szFir, 5);
        nLast  := GetTickCount;

        lblIdentify.Caption := IntToStr(nLast - nFirst) + 'ms';

        if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objNSearch.ErrorDescription;
                //Application.MessageBox(PChar(str), 'Error', mb_ok);
                Application.MessageBox('Identify user failed !', 'Error', mb_ok);
                ListResult.Items.Clear;
                Exit;
         end;

        huella :=  objNSearch.IdentifyUser(szFir, 5);
        frmNoil.zScanner.SQL.Text:='Select * From master_personal where ImgHuella = :huella';
        frmNoil.zScanner.ParamByName('huella').AsString:=Huella;
        frmNoil.zScanner.Open;

        Application.CreateForm(TFrmVerificar, FrmVerificar);
        FrmVerificar.show;

        //Add item to list of result
        ListResult.Items.Clear;
        ListItem:=ListResult.Items.Add;
        ListItem.Caption:= intTostr(objNSearch.UserID);
        ListItem.SubItems.Add('-');
        ListItem.SubItems.Add('-');
        ListItem.SubItems.Add('-');
end;

procedure TForm1.BtnExitClick(Sender: TObject);
begin
        self.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
        //Create NBioBSP object
        objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');

        objDevice      := objNBioBSP.Device;
        objExtraction  := objNBioBSP.Extraction;
        objNSearch     := objNBioBSP.NSearch;

        //Check initialize object
        if objNSearch.ErrorCode = NBioAPIERROR_NONE then
        begin
                ListSearchDB.Items.Clear;
                ListResult.Items.Clear;
                TextUserID.Text := '1';
        end else
                ShowMessage('Search module init failed !');

        Caption := Caption + ' - BSP Version : v' + objNBioBSP.MajorVersion + '.' + objNBioBSP.MinorVersion;
end;

end.



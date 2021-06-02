unit Notepadp;
interface
uses
  Windows,SysUtils,Controls,Forms,StdCtrls,Menus,
  ActnList,StdActns, Classes, Dialogs,ComCtrls,graphics;
type
  TForm1 = class(TForm)
    Rc1: TRichEdit;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Dzen1: TMenuItem;
    Undo1: TMenuItem;
    N2: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    SelAll1: TMenuItem;
    Biim1: TMenuItem;
    Back1: TMenuItem;
    Font1: TMenuItem;
    Undo2: TMenuItem;
    N3: TMenuItem;
    Cut2: TMenuItem;
    Copy2: TMenuItem;
    Paste2: TMenuItem;
    Delete2: TMenuItem;
    SelAll2: TMenuItem;
    N4: TMenuItem;
    OpenDialog1: TOpenDialog;
    ColorDialog1: TColorDialog;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    ActionList1: TActionList;
    EditUndo1: TEditUndo;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    lb: TListBox;
    FontDialog1: TFontDialog;
    TextC1: TMenuItem;
    FontStyle2: TMenuItem;
    FontC2: TMenuItem;
    Back2: TMenuItem;
    StText1: TMenuItem;
    procedure New1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Rc1Change(Sender: TObject);
    procedure Gerial1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Font1Click(Sender: TObject);
    procedure Back1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TextC1Click(Sender: TObject);
    procedure StText1Click(Sender: TObject);
    end;
var
  Form1: TForm1;
  dosyaadi:string[100];
  cevap:integer;
  i:byte;
  yer:longint;
implementation
{$R *.DFM}
//===============================================
function sor:integer;
begin
if form1.File1.Caption='&File*'then begin
cevap:=application.MessageBox('Do you want to save the changes?',
                                              'Save',mb_yesnocancel+mb_iconquestion);
if cevap=idyes then form1.Save1click(form1.Save1);
end else cevap:=idno;
if cevap=idno then form1.Save1.Tag:=0;
sor:=cevap;
end;

procedure kaydedildi;
begin
form1.caption:='NotePad - '+dosyaadi;
form1.File1.Caption:='&File';
form1.Save1.Tag:=0;
form1.progressbar1.show;
for i:=1 to 100 do form1.progressbar1.Position:=i;
form1.progressbar1.hide;
end;

procedure TForm1.New1Click(Sender: TObject);
begin
if(sor<>idcancel)and(Save1.Tag=0)then begin
       rc1.Clear;
       dosyaadi:='';
       Save1.Tag:=0;
       form1.File1.Caption:='&File';
     end;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
if dosyaadi=''then
   if savedialog1.Execute then begin
      dosyaadi:=savedialog1.FileName;
      rc1.Lines.SaveToFile(dosyaadi);
      kaydedildi;
   end else Save1.tag:=1
else begin
     rc1.Lines.SaveToFile(dosyaadi);
     kaydedildi;
end;
end;

procedure TForm1.Rc1Change(Sender: TObject);
begin
File1.Caption:='&File*';
end;

procedure TForm1.Gerial1Click(Sender: TObject);
begin
caption:=inttostr(idcancel);
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
if(sor<>idcancel)and(Save1.Tag=0)then
  if opendialog1.Execute then begin
     dosyaadi:=opendialog1.FileName;
     rc1.Lines.LoadFromFile(dosyaadi);
     File1.Caption:='&File';
  end;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
begin
if savedialog1.Execute then begin
   dosyaadi:=savedialog1.FileName;
   rc1.Lines.SaveToFile(dosyaadi);
   kaydedildi;
end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (sor=idcancel)or(Save1.Tag=1)then action:=canone
else begin
lb.Clear;
lb.Items.Add(rc1.selattributes.Name);
lb.Items.Add(inttostr(rc1.selattributes.size));
lb.Items.Add(inttostr(rc1.selattributes.color));
lb.Items.Add(inttostr(rc1.color));
if windowstate=wsmaximized then lb.Items.Add('1')
                           else lb.Items.Add('0');
try
lb.Items.savetoFile(extractfilepath(paramstr(0))+'\config.cfg');
except
showmessage('Settings cannot be saved (Config.cfg). Remove the read-only file.');
end;
end;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
Fontdialog1.Font.Name:=rc1.selAttributes.Name;
fontdialog1.Font.color:=rc1.selAttributes.Color;
fontdialog1.Font.size:=rc1.selAttributes.size;
fontdialog1.Font.style:=rc1.selAttributes.Style;
if fontdialog1.Execute then begin
   yer:=rc1.selstart;
   rc1.SelectAll;
   rc1.selAttributes.Name:=fontdialog1.Font.Name;
   rc1.selAttributes.Color:=fontdialog1.Font.color;
   rc1.selAttributes.size:=fontdialog1.Font.size;
   rc1.selAttributes.Style:=fontdialog1.Font.style;
   rc1.SelLength:=0;
   rc1.selstart:=yer;
end;
end;

procedure TForm1.Back1Click(Sender: TObject);
begin
if colordialog1.Execute then rc1.Color:=colordialog1.Color;
end;



procedure TForm1.Delete1Click(Sender: TObject);
begin
if (rc1.SelLength=0)and(rc1.text[rc1.SelStart+1]=#13) then rc1.SelLength:=2
else if rc1.SelLength=0 then rc1.SelLength:=1;
rc1.ClearSelection;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if paramstr(1)<>''then begin
   dosyaadi:=paramstr(1);
   if paramcount>1 then
   for i:=2 to paramcount do dosyaadi:=dosyaadi+' '+paramstr(i);

   caption:='NotePad - '+dosyaadi;
   rc1.Lines.LoadFromFile(dosyaadi);
   File1.Caption:='&File';
end;
if fileexists(extractfilepath(paramstr(0))+'\config.cfg')then begin
lb.Items.LoadFromFile(extractfilepath(paramstr(0))+'\config.cfg');
rc1.Font.Name:=lb.Items[0];
rc1.Font.size:=strtoint(lb.Items[1]);
rc1.Font.color:=strtoint(lb.Items[2]);
rc1.color:=strtoint(lb.Items[3]);
if lb.Items[4]='1' then windowstate:=wsmaximized;
end;
end;

procedure TForm1.TextC1Click(Sender: TObject);
begin
if colordialog1.Execute then begin
   yer:=rc1.selstart;
   rc1.SelectAll;
   rc1.selAttributes.Color:=colordialog1.Color;
   rc1.SelLength:=0;
   rc1.selstart:=yer;
end;
end;

procedure TForm1.StText1Click(Sender: TObject);
begin
   yer:=rc1.selstart;
   rc1.SelectAll;
   rc1.selAttributes.Name:=fontdialog1.Font.Name;
   rc1.selAttributes.Color:=$0000FB00;
   rc1.selAttributes.size:=14;
   rc1.selAttributes.Style:=[];
   rc1.Paragraph.Alignment:=taLeftJustify;
   rc1.SelLength:=0;
   rc1.selstart:=yer;
end;

end.

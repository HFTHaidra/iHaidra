unit server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, Vcl.XPMan, Vcl.ExtCtrls, Vcl.ComCtrls,Math, System.JSON, IdHTTP,
  Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    server: TServerSocket;
    SaveTextFileDialog1: TSaveTextFileDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    data: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    RadioButton4: TRadioButton;
    Label42: TLabel;
    sa: TMemo;
    b30: TButton;
    e30: TEdit;
    consol: TLabel;
    Panel5: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Time5: TLabel;
    Label47: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    fastD: TLabel;
    fastT: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ask1: TLabel;
    bid1: TLabel;
    Label32: TLabel;
    fspread: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    timeFast: TLabel;
    profitFast: TLabel;
    fastLogin: TComboBox;
    fastSymbol: TComboBox;
    Panel7: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    slowD: TLabel;
    slowT: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ask2: TLabel;
    bid2: TLabel;
    Label31: TLabel;
    sspread: TLabel;
    Label48: TLabel;
    timeSlow: TLabel;
    profitSlow: TLabel;
    Label49: TLabel;
    slowLogin: TComboBox;
    slowSymbol: TComboBox;
    port: TEdit;
    b1: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Panel3: TPanel;
    Label45: TLabel;
    Timer1: TTimer;
    Time60: TLabel;
    Time61: TLabel;
    Time62: TLabel;
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    Label46: TLabel;
    kill: TCheckBox;
    Panel6: TPanel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Time63: TLabel;
    Label55: TLabel;
    profitAll: TLabel;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    consol2: TLabel;
    Timer2: TTimer;
    timer: TLabel;
    Label56: TLabel;
    time30: TLabel;
    Button3: TButton;
    Panel11: TPanel;
    Label57: TLabel;
    Edit10: TEdit;
    et30: TEdit;
    Label19: TLabel;
    Panel8: TPanel;
    Label33: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    run1: TCheckBox;
    Panel9: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    activeTrade: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    b50: TButton;
    b51: TButton;
    Panel12: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    timealow100: TEdit;
    Key1: TEdit;
    Label63: TLabel;
    Label64: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Label68: TLabel;
    Panel13: TPanel;
    Button5: TButton;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Profit100: TLabel;
    Profit101: TLabel;
    Profit102: TLabel;
    Panel14: TPanel;
    Label70: TLabel;
    Panel15: TPanel;
    consol100: TMemo;
    GroupBox5: TGroupBox;
    Label74: TLabel;
    Label67: TLabel;
    GroupBox4: TGroupBox;
    Panel16: TPanel;
    Panel17: TPanel;
    Time20: TLabel;
    Label66: TLabel;
    TradeOpenTime100: TLabel;
    Memo2: TMemo;
    Label69: TLabel;
    Label75: TLabel;
    Memo3: TMemo;
    hidAll: TRadioButton;
    RadioButton1: TRadioButton;
    CloseWhenProfit: TButton;
    Edit14: TEdit;
    Button7: TButton;
    CheckBox6: TCheckBox;
    Label65: TLabel;
    Label76: TLabel;
    Profit103: TLabel;
    CheckBox8: TCheckBox;
    Button4: TButton;
    kill100: TCheckBox;
    procedure b1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure serverClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure serverClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure FormCreate(Sender: TObject);
    procedure fastLoginChange(Sender: TObject);
    procedure slowLoginChange(Sender: TObject);
    procedure b30Click(Sender: TObject);
    //**** ctr+shift+c
    function  mDouble(str:String; digit:integer):Double;
    procedure RadioButton2Click(Sender: TObject);
    procedure hidAllClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure saving();

    procedure RadioButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure slowSymbolCloseUp(Sender: TObject);
    procedure slowSymbolChange(Sender: TObject);
    procedure fastSymbolChange(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure b50Click(Sender: TObject);
    procedure b51Click(Sender: TObject);
    procedure killClick(Sender: TObject);
    procedure run1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CloseWhenProfitClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure serverClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure serverClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure kill100Click(Sender: TObject);

  private
    { Déclarations privées }
  public

    { Déclarations publiques }



  end;
  // Function declaration
  procedure c(str: string);
  procedure GetProfit(fastslow:String; Trades:String);
  procedure save(name:String);
  procedure Ping(str:String);
  procedure closefastBuy_slowSellV2(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String);
  procedure fastBuy_slowSellV2(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String);
  function  generate(cantidad: integer): string;
  Procedure Stratige100();
  Procedure Stratige100Res(str:String);
  function  StrToFloatV2(str:String):Double;
  Procedure CalculatingProfit();
  procedure CloseMessageBox(AWnd: HWND; AMsg: UINT; AIDEvent: UINT_PTR;
  ATicks: DWORD); stdcall;
var
  Form1       : TForm1  ;
  msg         : String  ;
  mSend       : String  ;
  iSend       : integer ;
  savingMod   : integer ;
  iTime       : integer ;
  IndexFile : integer;
  tradingMod  : integer ;
  iTimer      : integer ;
  Run1SelTime : integer;
  OnClientConnecte   :integer;


  //*****************************
  fastDigits,slowDigits                   :integer ;
  fastAsk,fastBid,slowAsk,slowBid         :Double;
  oldAsk1,oldBid1,oldAsk2,oldBid2         :Double;
  fastSpread,slowSpread                   :integer;
  Askdif,Biddif,Allspread                 :integer;
  Maxdif,Mindif                           :integer;
  InitialisationOn                        :integer;
  dateFast,dateSlow                       :String;
  //*****************************
  // Stratige 1
  runStratige1,isTradeOpen,NbTrade             :integer;
  difAlow1, spreadAlow,difAlow2                :integer;
  //****************************************************************
  //  geting Ping
  PingStr                                    :String;
  PingActiveFast,PingActiveSlow                  :integer;
  slowPingCodeSend,fastPingCodeSend          :integer;

  //****************************************************************
  // Stratige 100
   Stratige100On,isTradeOpen100                             :integer;
   ActiveFast100,ActiveSlow100                                :integer;
   CodeSend100,slowResp100,fastResp100 ,comment100          :String;
   OpenTime100                                               :integer;
   AllProfit102,MaxProfit                                              :Double;
   // Close Stratige 100 = 101
   Stratige101On,isTradeOpen101                             :integer;
   ActiveFast101,ActiveSlow101                                :integer;
   CodeSend101,slowResp101,fastResp101 ,comment101          :String;
implementation

{$R *.dfm}



procedure closefastBuy_slowSell(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String;port:String);
var
ms:String;
begin
  if(login1<>'No Login...')and(login2<>'No Login...') then
  begin
      ms := '@_'+'@B1'+    '@1'+login1+'@2'+'close'+'@3'+symbol1+'@4'+lot1+'@5'+port+'-'+comment+'@6'        +'@E1'  ;
      ms :=ms+ '@B2'+    '@1'+login2+'@2'+'close'+'@3'+symbol2+'@4' +lot2+'@5'+port+'-'+comment+'@6'       +'@E2'    ;
      mSend:=ms;
      isTradeOpen:=0;
  end;

end;
procedure fastBuy_slowSell(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String;port:String);
var
ms:String;
begin
  if(login1<>'No Login...')and(login2<>'No Login...') then
  begin
      ms := '@_'+'@B1'+    '@1'+login1+'@2'+'buy'+'@3'+symbol1+'@4'+lot1+'@5'+port+'-'+comment+'@6'         +'@E1'  ;
      ms :=ms+ '@B2'+    '@1'+login2+'@2'+'sell'+'@3'+symbol2+'@4' +lot2+'@5'+port+'-'+comment+'@6'       +'@E2'    ;
      mSend:=ms;
  end;

end;

function generate(cantidad: integer): string;
const
  letras_mi = 'abcdefghijklmnopqrstuvwxyz';
  numeros = '0123456789';
var local: string;
begin
  SetLength(local, 4); // only alloc memory once


  local[2] := UpCase(letras_mi[Random(Length(letras_mi)) + 1]);
  local[2] := UpCase(letras_mi[Random(Length(letras_mi)) + 1]);
  local[3] := numeros[Random(Length(numeros)) + 1];
  local[3] := numeros[Random(Length(numeros)) + 1];


  Result := local;
end;

procedure InitialisationDifr();
begin
    mSend:='NULL';
    Run1SelTime:=0;
    iSend:=10;
    fastDigits:=0;
    slowDigits:=0;
    savingMod:=0;
    tradingMod:=0;
    oldAsk1:=0;
    oldBid1:=0;
    oldAsk2:=0;
    oldBid2:=0;
    Maxdif  :=-1000000;
    Mindif  :=1000000;
    Askdif:=0;
    Biddif:=0;
    Allspread :=0;
    runStratige1:=0 ;
    isTradeOpen:=0;
    NbTrade:=1;

    Form1.Label26.Caption:='0000';
    Form1.Label27.Caption:='0000';
    Form1.Label28.Caption:='0000';
    Form1.Label29.Caption:='0000';
    Form1.Label30.Caption:='0000';
    MaxProfit:=-9000000;

end;
procedure Calculatingspread();
var
  max:integer;
 begin

           max:=Math.Max(fastDigits,slowDigits) ;
           fastSpread:=Round(   (fastAsk-fastBid)*Math.Power(10, max )   );
           slowSpread:=Round(   (slowAsk-slowBid)*Math.Power(10, max )   );
           Form1.fspread.Caption:=fastSpread.ToString ;
           Form1.sspread.Caption:=slowSpread.ToString ;
           if InitialisationOn=0 then
           begin
             sleep(400);
             InitialisationOn:=1;
             InitialisationDifr
           end;
 end;
procedure CalculatingDif();
var
  max:integer;
  myDate: TDateTime;
 begin
 myDate := Now;
 Form1.Time5.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
           max:=Math.Max(fastDigits,slowDigits) ;
           Askdif:=  Round( (fastAsk-slowAsk)*Math.Power(10, max )  ) ;
           Biddif:=  Round( (fastBid-slowBid)*Math.Power(10, max )  ) ;
           Allspread:= fastSpread+slowSpread;


           Form1.Label26.Caption:= Askdif.ToString;
           Form1.Label27.Caption:= Biddif.ToString;
           Form1.Label28.Caption:= Allspread.ToString;

           if(Askdif<>0) then
           begin
             Maxdif:=Math.Max(Maxdif,Askdif) ;
             Mindif:=Math.Min(Mindif,Askdif) ;

             Form1.Label29.Caption:=Maxdif.ToString;
             Form1.Label30.Caption:=Mindif.ToString;
           end



end;

procedure GetInfo(info: String);
    // Get all info frome MT4/MT5
var
  login,iTime,timeFrame,symbol,digit,ask,bid,time ,profit,company: String;

begin
       login:=info.Substring(info.IndexOf('@1')+2,info.IndexOf('@2')-(info.IndexOf('@1')+2));
       symbol:=info.Substring(info.IndexOf('@3')+2,info.IndexOf('@4')-(info.IndexOf('@3')+2));
       timeFrame:=info.Substring(info.IndexOf('@2')+2,info.IndexOf('@3')-(info.IndexOf('@2')+2));
       iTime:= info.Substring(info.IndexOf('@4')+2,info.IndexOf('@5')-(info.IndexOf('@4')+2));
       digit:= info.Substring(info.IndexOf('@5')+2,info.IndexOf('@6')-(info.IndexOf('@5')+2));
       ask :=  info.Substring(info.IndexOf('@6')+2,info.IndexOf('@7')-(info.IndexOf('@6')+2));
       bid :=  info.Substring(info.IndexOf('@7')+2,info.IndexOf('@8')-(info.IndexOf('@7')+2));
       time:=  info.Substring(info.IndexOf('@8')+2,info.IndexOf('@9')-(info.IndexOf('@8')+2));
       profit:=info.Substring(info.IndexOf('@9')+2,info.IndexOf('@c')-(info.IndexOf('@9')+2));
       company:=info.Substring(info.IndexOf('@c')+2,info.IndexOf('@*')-(info.IndexOf('@c')+2));
       c(   profit  );
       if  Form1.fastLogin.Items.IndexOf( login) = -1 then
          begin
            Form1.fastLogin.AddItem( login , NIL );Form1.fastLogin.ItemIndex:=1;
            Form1.slowLogin.AddItem( login , NIL );Form1.slowLogin.ItemIndex:=1;
          end
          else
           begin
            if login=Form1.fastLogin.Text then
              begin
                 if  Form1.fastSymbol.Items.IndexOf( symbol ) = -1 then
                 begin
                   Form1.fastSymbol.AddItem( symbol , NIL );Form1.fastSymbol.ItemIndex:=1;
                 end
                 else
                 begin
                    if Form1.fastSymbol.Text=symbol then
                      begin
                            //if(timeFrame.IndexOf('M1') <> -1) then
                            //  begin
                                  Form1.fastT.Caption:= iTime;
                                  fastDigits:=digit.ToInteger;

                                  fastAsk:=Form1.mDouble(ask,digit.ToInteger) ;
                                  fastBid:=Form1.mDouble(bid,digit.ToInteger) ;
                                  Form1.ask1.Caption:=fastAsk.ToString;
                                  Form1.bid1.Caption:=fastBid.ToString;
                                  //if(Run1SelTime=0)then
                                 // begin
                                     //Form1.Label50.Caption:=company;
                                     Form1.fastD.Caption:='Digits : '+digit;
                                   //  Run1SelTime:=1;
                                //  end;


                                  if profit<>'-9000000'  then
                                  begin
                                      Form1.timeFast.Caption:=time;
                                      dateFast:= time;
                                      GetProfit('fast',profit);

                                  end;


                           //   end
                           //  else
                           //  begin
                           //     Form1.b1.Click;
                           //     Application.MessageBox('Tame Frame ERRER','Active Time Frame M1', MB_ICONHAND);
                           //   end;
                      end;



                 end;

              end;





            if login=Form1.slowLogin.Text then
              begin
                 if  Form1.slowSymbol.Items.IndexOf( symbol ) = -1 then
                 begin
                   Form1.slowSymbol.AddItem( symbol , NIL );Form1.slowSymbol.ItemIndex:=1;
                  end
                 else
                 begin
                    //if Form1.slowSymbol.Text=symbol then
                    //  begin
                         //if(timeFrame.IndexOf('M1') <> -1) then
                          // begin
                                 Form1.slowT.Caption:= iTime;
                                 slowDigits:=digit.ToInteger;
                                 Form1.slowD.Caption:='Digits : '+digit;
                                 slowAsk:=Form1.mDouble(ask,digit.ToInteger) ;
                                 slowBid:=Form1.mDouble(bid,digit.ToInteger) ;
                                 Form1.ask2.Caption:=slowAsk.ToString;
                                 Form1.bid2.Caption:=slowBid.ToString;
                                if profit<>'-9000000'  then
                                 begin
                                        Form1.timeSlow.Caption:=time;
                                        dateSlow:= time;
                                        GetProfit('slow',profit);
                                 end;

                          // end
                          // else
                          //  begin
                          //      Form1.b1.Click;
                           //     Application.MessageBox('Tame Frame ERRER','Active Time Frame M1', MB_ICONHAND);
                          // end;
                     // end;

                 end;

              end;

           end;

end;

procedure c(str: string);
   begin
   Form1.consol.Caption:=str;
  end;

procedure RunStratige(NbStra:integer);
var
line:String;
begin

    if isTradeOpen=0 then
    begin
       if(Askdif<=difAlow1)and(Allspread<=spreadAlow) then
       begin
               fastBuy_slowSell(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit7.Text,Form1.Edit6.Text,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit8.Text,Form1.port.Text);
               isTradeOpen:=1;

               line:='Open Trad_N°:'+NbTrade.ToString+'_Fast('+ Form1.ask1.Caption+'-'+  Form1.bid1.Caption+')_Slow('+Form1.ask2.Caption+'-'+Form1.bid2.Caption+')';
               Form1.activeTrade.Items.Add(line);
               NbTrade:=NbTrade+1;

       end;


    end;

    if isTradeOpen=1 then
    begin
     if(Askdif>=difAlow2)and(Allspread<=spreadAlow) then
       begin
               closefastBuy_slowSell(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit7.Text,Form1.Edit6.Text,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit8.Text,Form1.port.Text);
               line:='close Trad_N°:'+NbTrade.ToString+'_Fast('+ Form1.ask1.Caption+'-'+  Form1.bid1.Caption+')_Slow('+Form1.ask2.Caption+'-'+Form1.bid2.Caption+')';
               Form1.activeTrade.Items.Add(line);
               isTradeOpen:=0;

       end;
    end;

end;

procedure run(str: String); // Run Chaqing Resiving Data
var
  s : String;
begin
   msg:= str;

   if(str.Substring(0,2)='@1' ) then
         GetInfo(str);
  //if(str.Substring(0,2)='Pi' ) then
         //Ping(str);
  if(str.Substring(0,2)='Op' ) then
      Stratige100Res(str);
  if(str.Substring(0,2)='Cl' ) then
      Stratige100Res(str);
   
end;














procedure TForm1.saving();
var
  line:String;
begin
  if (oldAsk1=0)or(oldBid1=0)or(oldAsk2=0)or(oldBid2=0)   then
   begin
      oldAsk1:=StrToFloat(ask1.Caption);
      oldBid1:=StrToFloat(bid1.Caption);
      oldAsk2:=StrToFloat(ask2.Caption);
      oldBid2:=StrToFloat(bid2.Caption);
      iTime:=0;
      Form1.data.Lines.Clear;
  end
  else

  if (oldAsk1.ToString<>ask1.Caption)or(oldAsk2.ToString<>ask2.Caption)or(oldBid1.ToString<>bid1.Caption)or(oldBid2.ToString<>bid2.Caption) then
  begin
        // c(oldAsk1.ToString +'----'+ask1.Caption);

        Label75.Caption:=  Label26.Caption ;
         line:=IndexFile.ToString+';'+ ask1.Caption+';'+  bid1.Caption+';'+ask2.Caption+';'+bid2.Caption+';'+dateFast+';'+dateSlow;
         Form1.data.Lines.Add(line);
        oldAsk1:=StrToFloat(ask1.Caption);
        oldBid1:=StrToFloat(bid1.Caption);
        oldAsk2:=StrToFloat(ask2.Caption);
        oldBid2:=StrToFloat(bid2.Caption);
        et30.Text:=iTime.ToString;
        iTime:=iTime+1;
        IndexFile:=IndexFile+1;
  end;





end;

function  TForm1.mDouble(str:String; digit:integer):Double;
var
 r :Double;
 d1,d2:integer;
 d :String;
begin

       d1:= str.Substring(0,  str.IndexOf('.') ).ToInteger;
       d2:= str.Substring(str.IndexOf('.')+1,digit ).ToInteger  ;
       r:= d2/Math.Power(10,digit) +  d1;


     result:=r;
end;






procedure TForm1.hidAllClick(Sender: TObject);
begin
 Form1.TabSheet3.TabVisible:=False;
 Form1.TabSheet1.TabVisible:=False;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
Form1.TabSheet2.TabVisible:=False;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  Form1.Panel4.Visible:=True;
  savingMod:=0;
  iTime:=0;
  Form1.data.Lines.Clear;
  RadioButton4.Checked:=False;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
savingMod:=0;
Form1.Panel4.Visible:=False;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
RadioButton4.Caption:='On...';
savingMod:=1;
Memo3.Lines.Add( fastSymbol.Text);
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
Form1.Color:= clMenuHighlight;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
     Form1.Color:= clMoneyGreen;
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
Form1.Color:= clOlive;
end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin
  Form1.Color:= clTeal;
end;

procedure TForm1.RadioButton9Click(Sender: TObject);
begin
Form1.Color:= clBtnFace;
end;

procedure TForm1.run1Click(Sender: TObject);
begin
if run1.Checked=True then
begin
  runStratige1:=1;
  isTradeOpen:=0;
  difAlow1:=StrToInt(Edit2.Text);
  difAlow2:=StrToInt(Edit4.Text);
  spreadAlow:=StrToInt(Edit3.Text);
end
  else
    runStratige1:=0;
end;

procedure TForm1.b1Click(Sender: TObject);
begin
  if(b1.Caption='Connect To Port')   then
  begin
    b1.Caption:='Deconnecte';
    server.Port:=StrToInt( port.Text );
    consol.Caption:='server Lisent To Port : '+port.Text;
    server.Open;
    port.Enabled:=false;
  end
     else
         begin
              server.Close;
              consol.Caption:='server is Stopd : '+port.Text;
              port.Enabled:=true;
              b1.Caption:='Connect To Port';
              fastLogin.Items.Clear; fastLogin.AddItem( 'No Login...' , NIL );fastLogin.ItemIndex:=0;
              slowLogin.Items.Clear; slowLogin.AddItem( 'No Login...' , NIL );slowLogin.ItemIndex:=0;
              slowSymbol.Items.Clear;slowSymbol.AddItem('Fast Symbol', NIL);slowSymbol.ItemIndex:=0;
              fastSymbol.Items.Clear;fastSymbol.AddItem('Fast Symbol', NIL);fastSymbol.ItemIndex:=0;

         end;

   InitialisationDifr();
   InitialisationOn:=0;
end;



procedure TForm1.b30Click(Sender: TObject);
begin
mSend:=e30.Text;
 end;

procedure TForm1.Button1Click(Sender: TObject);
begin



        { Execute a save file dialog. }
  if SaveTextFileDialog1.Execute then
    { First check if the file exists. }
    if FileExists(SaveTextFileDialog1.FileName) then
      { If it exists, raise an exception. }
      raise Exception.Create('File already exists. Cannot overwrite.')
    else
      { Otherwise, save the memo box lines into the file. }
      data.Lines.SaveToFile(SaveTextFileDialog1.FileName);
  Edit1.Text := SaveTextFileDialog1.Encodings[SaveTextFileDialog1.EncodingIndex];
end;

procedure TForm1.Button2Click(Sender: TObject);

begin
InitialisationDifr();
  end;




procedure TForm1.Button3Click(Sender: TObject);
begin
  savingMod:=0;
  iTime:=0;
  Form1.data.Lines.Clear;
  RadioButton4.Checked:=False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
      //fastPingCodeSend:= iTimer;
      //mSend:='Pi'+'Code'+fastPingCodeSend.ToString+'#1'+fastLogin.Text+'#2';
      //PingActiveFast:=1;
      MaxProfit:=-90000;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  if(Button5.Caption='Start Trading')then
  begin
    Button5.Caption:='Stop Trading';
    Consol100.Lines.Add('<--Star Trading Active ');
    if(isTradeOpen100=1)then // اذا كان قد فتح مسبقا صفقات
      begin
        Consol100.Lines.Add('****> لديك صفقة مفتوحة مسبقا سيتم تجاهلها ');
        isTradeOpen100:=0;
      end;
    Stratige100On:=1;
    OpenTime100:=0;
    AllProfit102:=0;
    //Edit9.Enabled:=False;
    //Edit11.Enabled:=False;
    //Edit12.Enabled:=False;
    timealow100.Enabled:=False;
    Key1.Enabled:=False;
    Edit15.Enabled:=False;
    Edit16.Enabled:=False;





    end else begin
    Button5.Caption:='Start Trading';
    Consol100.Lines.Add('-->Star Trading Desactive ');
    Stratige100On:=0;


    Edit9.Enabled:=True;
    Edit11.Enabled:=True;
    Edit12.Enabled:=True;
    //Edit13.Enabled:=True;
    Key1.Enabled:=True;
    Edit15.Enabled:=True;
    Edit16.Enabled:=True;
    //ComboBox1.Enabled:=True;
    //ComboBox2.Enabled:=True;
    ActiveFast100:=0;
    ActiveFast101:=0;
    ActiveSlow100:=0;
    ActiveSlow100:=0;
    isTradeOpen100:=0;


  end;


end;

procedure TForm1.CloseWhenProfitClick(Sender: TObject);
begin

  if CloseWhenProfit.Caption='Close When Profit Abve' then
  begin
       CloseWhenProfit.Caption:='Process is Run....';
  end else
    begin
        CloseWhenProfit.Caption:='Close When Profit Abve';
    end;


     MaxProfit:=-90000;
end;

procedure TForm1.Button7Click(Sender: TObject);
var str:String;
begin
            isTradeOpen100:=40;// Or Add  and (ActiveFast100=0) and (ActiveFast100=0)
             CodeSend101:=iTimer.ToString ;
             slowResp101:='Close-'+Form1.slowLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             fastResp101:='Close-'+Form1.fastLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             ActiveFast101:=1;
             ActiveSlow101:=1;
             comment101:=Form1.Key1.Text+'@#'+CodeSend101;
             closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment101,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);

            //--------------------------------------------------------------------------------------
            str:='----> Chance To close '+Askdif.ToString+'>'+Form1.Edit12.Text+' Spread : '+Allspread.ToString+' Time:'+Form1.Time20.Caption;
            Form1.Consol100.Lines.Add(str);
             str:='             --> (Ask/Bid) : Fast ('+ fastAsk.ToString+'/'+fastBid.ToString+') - Slow('+slowAsk.ToString+'/'+slowBid.ToString+').';
             Form1.Consol100.Lines.Add(str);
             MaxProfit:=-90000;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
//closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Edit16.Text,Key1.Text,Form1.slowLogin.Text,Form1.slowSymbol.Text,Edit15.Text);
  Consol100.Lines.Add('****|سيتم اعادة تعيين فتح الصفقات من جديد ');
  Stratige100On:=1;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
      slowPingCodeSend:= iTimer;
      mSend:='Pi'+'Code'+slowPingCodeSend.ToString+'#1'+slowLogin.Text+'#2';
      PingActiveSlow:=1;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if(CheckBox6.Checked=True)then
      Button7.Enabled:=True;
  if(CheckBox6.Checked=False)then
      Button7.Enabled:=False;
end;

procedure TForm1.kill100Click(Sender: TObject);
begin
    if kill100.Checked=true then
       begin
          CloseWhenProfit.Enabled:=False;
          Button5.Enabled:=False;
          b50.Enabled:=False;
          b51.Enabled:=False;
          fastLogin.Enabled:=False;
          slowLogin.Enabled:=False;
          fastSymbol.Enabled:=False;
          slowSymbol.Enabled:=False;
          b1.Enabled:= False;
          Edit2.Enabled:=       False;
          Edit3.Enabled:=       False;
          Edit4.Enabled:=       False;
          Edit5.Enabled:=       False;
          Edit6.Enabled:=       False;
          Edit7.Enabled:=       False;
          Edit8.Enabled:=       False;
          Edit14.Enabled:=       False;
          run1.Enabled:=        False;
          Port.Enabled:=        False;
          CheckBox6.Enabled:=False;

          Form1.BorderStyle:=bsNone;
      end
else
    begin
        CloseWhenProfit.Enabled:=True;
        Button5.Enabled:=True;
        b50.Enabled:=True;
        b51.Enabled:=True;
        fastLogin.Enabled:= True;
        slowLogin.Enabled:= True;
        fastSymbol.Enabled:= True;
        slowSymbol.Enabled:= True;
        b1.Enabled:=         True;
        Edit2.Enabled:=         True;
        Edit3.Enabled:=         True;
        Edit4.Enabled:=         True;
        Edit14.Enabled:=         True;
        Edit5.Enabled:=         True;
        Edit6.Enabled:=         True;
        Edit7.Enabled:=         True;
        Edit8.Enabled:=         True;
        run1.Enabled:=       True;
        CheckBox6.Enabled:=False;

        Form1.BorderStyle:=bsSingle;
    end;
end;

procedure TForm1.b50Click(Sender: TObject);
begin
fastBuy_slowSell(fastLogin.Text,fastSymbol.Text,Edit7.Text,Edit6.Text,slowLogin.Text,slowSymbol.Text,Edit8.Text,port.Text);
end;

procedure TForm1.b51Click(Sender: TObject);
begin
closefastBuy_slowSell(fastLogin.Text,fastSymbol.Text,Edit7.Text,Edit6.Text,slowLogin.Text,slowSymbol.Text,Edit8.Text,port.Text);
end;

procedure TForm1.fastLoginChange(Sender: TObject);
begin
fastSymbol.Items.Clear;fastSymbol.AddItem('Fast Symbol', NIL);fastSymbol.ItemIndex:=0;
InitialisationOn:=0;
end;

procedure TForm1.fastSymbolChange(Sender: TObject);
begin
InitialisationOn:=0;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
buttonSelected : Integer;
begin
     server.Close;
     

end;

procedure TForm1.serverClientRead(Sender: TObject;  Socket: TCustomWinSocket);
  begin

        if(OnClientConnecte=1) then
        begin

            run(Socket.ReceiveText);
            if(mSend<>'NULL') then
             begin
                Socket.SendText(mSend);
                mSend:='NULL';
             end
        end;

     




  end;

procedure TForm1.slowLoginChange(Sender: TObject);
begin
slowSymbol.Items.Clear;slowSymbol.AddItem('Fast Symbol', NIL);slowSymbol.ItemIndex:=0;
 InitialisationOn:=0;
end;

procedure TForm1.slowSymbolChange(Sender: TObject);
begin
InitialisationOn:=0;
end;

procedure TForm1.slowSymbolCloseUp(Sender: TObject);
begin
//InitialisationDif();
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
myDate: TDateTime;
begin

 myDate := Now;
 Time5.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
 Time60.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
 Time61.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
 Time62.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
  Time63.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var     y:integer;
        s:String;
begin
iTimer:=iTimer+1;
time30.Caption:=iTimer.ToString;


  if ( (fastT.Caption<>'0000') and (fastLogin.Text<>slowLogin.Text) ) then
     begin
          Calculatingspread();
          CalculatingDif();
          //if runStratige1=1 then
             //RunStratige(1);

          //*****************************************
          // Stratige 100
          CalculatingProfit();
          if(Stratige100On=1)then
              Stratige100();


          if savingMod=1 then
            Form1.saving();
            if(iTime>StrToInt(Edit10.Text) ) then
            begin
              save(timeFast.Caption);
              iTime:=0;
              Form1.data.Lines.Clear;
            end;

            Time20.Caption:=timeFast.Caption;

     end;

     if(PingActiveFast=1) then
     begin
       fastPingCodeSend:= iTimer;
       mSend:='Pi'+'Code'+fastPingCodeSend.ToString+'#1'+fastLogin.Text+'#2';
     end;

     if(PingActiveSlow=1) then
     begin
       slowPingCodeSend:= iTimer;
       mSend:='Pi'+'Code'+slowPingCodeSend.ToString+'#1'+slowLogin.Text+'#2';
     end;

     if(ActiveFast100=1) then
     begin
       fastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment100,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);
     end;
     if(ActiveSlow100=1) then
     begin
       fastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment100,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);
     end;

     if(ActiveFast101=1) then
     begin
       closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment101,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);
     end;
     if(ActiveSlow101=1) then
     begin
       closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment101,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);
     end;

     if (isTradeOpen100=1) then
     begin
       y:= iTimer - OpenTime100 ;
       Form1.TradeOpenTime100.Caption:=y.ToString;
     end;

     if(CloseWhenProfit.Caption='Process is Run....')   then
     begin
        s:=Edit14.Text;
       if(AllProfit102> s.ToDouble) then
       begin
             isTradeOpen100:=40;// Or Add  and (ActiveFast100=0) and (ActiveFast100=0)
             CodeSend101:=iTimer.ToString ;
             slowResp101:='Close-'+Form1.slowLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             fastResp101:='Close-'+Form1.fastLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             ActiveFast101:=1;
             ActiveSlow101:=1;
             comment101:=Form1.Key1.Text+'@#'+CodeSend101;
             closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment101,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);

            //--------------------------------------------------------------------------------------
            s:='----> Chance To close '+Askdif.ToString+'>'+Form1.Edit12.Text+' Spread : '+Allspread.ToString+' Time:'+Form1.Time20.Caption;
            Form1.Consol100.Lines.Add(s);
             s:='             --> (Ask/Bid) : Fast ('+ fastAsk.ToString+'/'+fastBid.ToString+') - Slow('+slowAsk.ToString+'/'+slowBid.ToString+').';
             Form1.Consol100.Lines.Add(s);
           Form1.consol100.Lines.Add(' Forse Close By -Close When Profit Abve- ');
           if(CheckBox8.Checked=True)then
           begin
                Edit14.Text:='10000';
                if(Button5.Caption<>'Start Trading') then
                   Button5.Click;
           end;

       end;


     end;






end;
procedure save(name:String);
var myfile :textfile;
    csv    :String;
    myDate : TDateTime;
    i      :integer;
begin

 myDate := Now;
 csv:= DateToStr(myDate)+'_'+TimeToStr ( myDate);
 csv:=csv.Replace(':','-');
 csv:=csv.Replace('/','-')+'.csv';
 Form1.Edit1.Text:=csv;

  AssignFile(myfile,csv);
  Rewrite(myfile);

    For i:=0 to Form1.data.Lines.Count do
      WriteLn(myfile,Form1.data.Lines[i]);



  Closefile(myfile);

end;


Procedure Stratige100();
var str:String;
begin
   if (isTradeOpen100=0)  and  (Askdif<=StrToInt(Form1.Edit9.Text))  and  (Allspread<=StrToInt(Form1.Edit11.Text)) and (ActiveFast100=0) and (ActiveFast100=0) then

      begin
             isTradeOpen100:=20;
             CodeSend100:=iTimer.ToString ;
             slowResp100:='Open-'+Form1.slowLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend100;
             fastResp100:='Open-'+Form1.fastLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend100;
             ActiveFast100:=1;
             ActiveSlow100:=1;
             comment100:=Form1.Key1.Text+'@#'+CodeSend100;
             fastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment100,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);
             //--------------------------------------------------------------------------------------
             str:='----> Chance Open '+Askdif.ToString+'<'+Form1.Edit9.Text+' Spread : '+Allspread.ToString+' Time:'+Form1.Time20.Caption;
             Form1.Consol100.Lines.Add(str);
             str:='             --> (Ask/Bid) : Fast ('+ fastAsk.ToString+'/'+fastBid.ToString+') - Slow('+slowAsk.ToString+'/'+slowBid.ToString+').';
             Form1.Consol100.Lines.Add(str);
       end;

   if (isTradeOpen100=1)  and  (Askdif>=StrToInt(Form1.Edit12.Text))  and  (Allspread<=StrToInt(Form1.Edit11.Text))  and (ActiveFast101=0) and (ActiveFast101=0) and ( strtoint( Form1.TradeOpenTime100.Caption ) >  strtoint( Form1.timealow100.Text )    ) then

      begin
         isTradeOpen100:=40;// Or Add  and (ActiveFast100=0) and (ActiveFast100=0)
             CodeSend101:=iTimer.ToString ;
             slowResp101:='Close-'+Form1.slowLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             fastResp101:='Close-'+Form1.fastLogin.Text+'@5'+Form1.Key1.Text+'@#'+CodeSend101;
             ActiveFast101:=1;
             ActiveSlow101:=1;
             comment101:=Form1.Key1.Text+'@#'+CodeSend101;
             closefastBuy_slowSellV2(Form1.fastLogin.Text,Form1.fastSymbol.Text,Form1.Edit16.Text,comment101,Form1.slowLogin.Text,Form1.slowSymbol.Text,Form1.Edit15.Text);

          //--------------------------------------------------------------------------------------
         str:='----> Chance To close '+Askdif.ToString+'>'+Form1.Edit12.Text+' Spread : '+Allspread.ToString+' Time:'+Form1.Time20.Caption;
         Form1.Consol100.Lines.Add(str);
         str:='             --> (Ask/Bid) : Fast ('+ fastAsk.ToString+'/'+fastBid.ToString+') - Slow('+slowAsk.ToString+'/'+slowBid.ToString+').';
          Form1.Consol100.Lines.Add(str);
       end;

     


end;
Procedure Stratige100Res(str:String);
begin
  Form1.Memo2.Lines.Add(str);
  Form1.Memo2.Lines.Add(fastResp100);
  //Form1.Consol100.Lines.Add(' Res : '+str);
  if(fastResp100=str)and(isTradeOpen100=20) then
  begin
    Form1.Consol100.Lines.Add(' -------->Fast Login Is Open Trade '+' Time : '+Form1.Time20.Caption +' => '+Form1.time30.Caption  );
    ActiveFast100:=0;
    if ActiveSlow100=0 then
    begin
      Form1.Consol100.Lines.Add(' --------> انتضار لغلق الصفقة  '+'Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
      isTradeOpen100:=1;
      OpenTime100:=  iTimer;
    end;
  end;

   if(slowResp100=str)and(isTradeOpen100=20) then
  begin
    Form1.Consol100.Lines.Add(' -------->Slow Login Is Open Trade Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
    ActiveSlow100:=0;
        if ActiveFast100=0 then
          begin

           Form1.Consol100.Lines.Add(' --------> انتضار لغلق الصفقة  '+' Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
           isTradeOpen100:=1;
           OpenTime100:=  iTimer;
          end;
  end;
   // Close Option
  if(fastResp101=str)and(isTradeOpen100=40) then
  begin
    Form1.Consol100.Lines.Add(' -------->Fast Login Is Close '+' Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
    ActiveFast101:=0;
    if ActiveSlow101=0 then
        begin
          Form1.Consol100.Lines.Add(' --------> تم غلق الصفقتين بنجاح  '+' Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
          isTradeOpen101:=0;
          isTradeOpen100:=0;
          ActiveFast100:=0;
          ActiveSlow100:=0;
          ActiveFast101:=0;
          ActiveSlow101:=0;
          OpenTime100:=0;
          Form1.TradeOpenTime100.Caption:='0';

        end;

  end;

 if(slowResp101=str)and(isTradeOpen100=40) then
  begin
    Form1.Consol100.Lines.Add(' -------->Slow Login Is Close '+' Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
    ActiveSlow101:=0;
      if ActiveFast101=0 then
        begin

         Form1.Consol100.Lines.Add(' --------> تم اغلاق الصفقتين بنجاح '+' Time : '+Form1.Time20.Caption+' => '+Form1.time30.Caption);
         isTradeOpen101:=0;
         isTradeOpen100:=0;
          ActiveFast100:=0;
          ActiveSlow100:=0;
          ActiveFast101:=0;
          ActiveSlow101:=0;
          OpenTime100:=0;
          Form1.TradeOpenTime100.Caption:='0';

        end;
     end;

end;















procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Form1.AlphaBlendValue:=255-10*TrackBar1.Position;
end;

procedure TForm1.serverClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
    OnClientConnecte:=1;
end;

procedure TForm1.serverClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    OnClientConnecte:=0;
end;

procedure TForm1.serverClientError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
TimerId: UINT_PTR;
begin

    if ErrorEvent=eeGeneral then
      Form1.consol100.Lines.Add('Erreur inattendu');

    if ErrorEvent=eeSend then
      Form1.consol100.Lines.Add('Erreur d''écriture sur la connexion socket');

    if ErrorEvent=eeReceive then
      Form1.consol100.Lines.Add('Erreur de lecture sur la connexion socket');

   if ErrorEvent=eeConnect then
    Form1.consol100.Lines.Add('Une demande de connexion déjà acceptée n''a pas pu être achevée');

    if ErrorEvent=eeDisconnect then
      begin
        Form1.consol100.Lines.Add('Erreur de fermeture d''une connexion');
        //MessageDlg (' هنعل الشيطان', mtError, [mbOK], 0);
        TimerId := SetTimer(0, 0, 3* 1000, @CloseMessageBox);
        //Application.MessageBox('Will auto-close after 10 seconds...', nil);
        // prevent timer callback if user already closed the message box
        KillTimer(0, TimerId);
      end;



    if ErrorEvent=eeAccept then
     Form1.consol.Caption:='Erreur d''acceptation d''une demande de connexion cliente';

end;

procedure CloseMessageBox(AWnd: HWND; AMsg: UINT; AIDEvent: UINT_PTR;
  ATicks: DWORD); stdcall;
var
  Wnd: HWND;
begin
  KillTimer(AWnd, AIDEvent);
  // active window of the calling thread should be the message box
  Wnd := GetActiveWindow;
  if IsWindow(Wnd) then
    PostMessage(Wnd, WM_CLOSE, 0, 0);
end;




procedure TForm1.FormCreate(Sender: TObject);
var
myDate: TDateTime;
begin
 iTimer:=1;
 myDate := Now;
 Time5.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);
 Time63.Caption:=DateToStr(myDate)+' '+TimeToStr ( myDate);


 PingStr:='0';
 PingActiveFast:=0;
 PingActiveSlow:=0;
 Run1SelTime:=0;
 //Key1.Text:=generate(8);
 IndexFile:=1;



end;



procedure TForm1.killClick(Sender: TObject);
begin
if kill.Checked=true then
begin
    b50.Enabled:=False;
    b51.Enabled:=False;
    fastLogin.Enabled:=False;
    slowLogin.Enabled:=False;
    fastSymbol.Enabled:=False;
    slowSymbol.Enabled:=False;
    b1.Enabled:= False;
    Edit2.Enabled:=       False;
    Edit3.Enabled:=       False;
    Edit4.Enabled:=       False;
    Edit5.Enabled:=       False;
    Edit6.Enabled:=       False;
    Edit7.Enabled:=       False;
    Edit8.Enabled:=       False;
    run1.Enabled:=        False;
    Port.Enabled:=        False;

    Form1.BorderStyle:=bsNone;
end
else
begin
    b50.Enabled:=True;
    b51.Enabled:=True;
    fastLogin.Enabled:= True;
    slowLogin.Enabled:= True;
    fastSymbol.Enabled:= True;
    slowSymbol.Enabled:= True;
    b1.Enabled:=         True;
    Edit2.Enabled:=         True;
    Edit3.Enabled:=         True;
    Edit4.Enabled:=         True;
    Edit5.Enabled:=         True;
    Edit6.Enabled:=         True;
    Edit7.Enabled:=         True;
    Edit8.Enabled:=         True;
    run1.Enabled:=       True;

    Form1.BorderStyle:=bsSingle;
end;

end;







procedure GetProfit(fastslow:String; Trades:String);
var
NbTrade,i: integer;
str,ind1,ind2 ,ind3 ,s1,key  :String;
profitKeyfast1,profitKeyfast2,profitkey1 :Double;
begin //@x-10.25000000@y12P10@w1@x2-156.00000000@y22P1@w2@x3130.00000000@y32P100@w3@+3@-3
   profitKeyfast1:=0;
   str:=  Trades.Substring(Trades.IndexOf('@+')+2,Trades.IndexOf('@-')-(Trades.IndexOf('@+')+2));
   NbTrade:=str.ToInteger() ;
    if(fastslow='fast')then
    begin

      for i := 1 to NbTrade do // اخذ كل الارباح الخاصة ب العملة
       begin
         ind1:='@x'+IntToStr(i);
         ind2:='@y'+IntToStr(i);
         ind3:='@w'+IntToStr(i);
         str:=   Trades.Substring(Trades.IndexOf(ind1)+3,Trades.IndexOf(ind3)-Trades.IndexOf(ind1));
         s1:= str.Substring(0,str.IndexOf('.')+3);
         key:= str.Substring(str.IndexOf(ind2)+3,str.IndexOf(ind3)-str.IndexOf(ind2)-3);
         // الارباح الخاصة بكل مفتاح
         if(key=Form1.Key1.Text)then
         begin
          profitKeyfast1:=profitKeyfast1+StrToFloatV2(s1);

         end;
      end;

      Form1.Profit100.Caption:= profitKeyfast1.ToString ;
    end;

    //**************************************************************************************
       profitKeyfast2:=0;
    if(fastslow='slow')then
    begin

      for i := 1 to NbTrade do // اخذ كل الارباح الخاصة ب العملة
       begin
         ind1:='@x'+IntToStr(i);
         ind2:='@y'+IntToStr(i);
         ind3:='@w'+IntToStr(i);
         str:=   Trades.Substring(Trades.IndexOf(ind1)+3,Trades.IndexOf(ind3)-Trades.IndexOf(ind1));
         s1:= str.Substring(0,str.IndexOf('.')+3);
         key:= str.Substring(str.IndexOf(ind2)+3,str.IndexOf(ind3)-str.IndexOf(ind2)-3);
         // الارباح الخاصة بكل مفتاح
         if(key=Form1.Key1.Text)then
         begin
          profitKeyfast2:=profitKeyfast2+StrToFloatV2(s1);
         end;
      end;
       Form1.Profit101.Caption:= profitKeyfast2.ToString ;


    end;


end;

function StrToFloatV2(str:String):Double;
var
 r :Double;
 d1,d2:integer;
 d :String;
begin
      r:=0;
      if(str<>'0') then
        begin
            d1:= str.Substring(0,  str.IndexOf('.') ).ToInteger;
           d2:= str.Substring(str.IndexOf('.')+1,2 ).ToInteger  ;
           if(str.Substring(0,1)='-' ) then
              begin
                 r:= d1 - d2/Math.Power(10,2) ;
               end else
                       r:= d1 + d2/Math.Power(10,2) ;

        end;

      result:=r;
end;

procedure CalculatingProfit();
begin
    AllProfit102:= StrToFloat( Form1.Profit100.Caption )+ StrToFloat(Form1.Profit101.Caption)  ;
    if AllProfit102>MaxProfit then MaxProfit:= AllProfit102;

   Form1.Profit102.Caption:=AllProfit102.ToString;
   Form1.Profit103.Caption:=MaxProfit.ToString;
end;



procedure Ping(str:String);
begin
      //Form1.Memo2.Lines.Add(str);
      if(str.Contains(  fastPingCodeSend.ToString ) )  then
       begin
        PingStr:=str.Substring(0,str.IndexOf('#') );
        //Form1.Ping100.Caption:=PingStr;
        PingActiveFast:=0;
       end;
        if(str.Contains(  slowPingCodeSend.ToString ) )  then
       begin
        PingStr:=str.Substring(0,str.IndexOf('#') );
        //Form1.Ping101.Caption:=PingStr;
        PingActiveSlow:=0;
       end;
end;

procedure fastBuy_slowSellV2(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String);
var
ms:String;
begin
  if(login1<>'No Login...')and(login2<>'No Login...') then
  begin
      ms := '@_'+'@B1'+    '@1'+login1+'@2'+'buy'+'@3'+symbol1+'@4'+lot1+'@5'+comment+'@6'         +'@E1'  ;
      ms :=ms+ '@B2'+    '@1'+login2+'@2'+'sell'+'@3'+symbol2+'@4' +lot2+'@5'+comment+'@6'       +'@E2'    ;
      mSend:=ms;
  end;

end;


procedure closefastBuy_slowSellV2(login1:String;symbol1:String;lot1:String;comment:String;login2:String;symbol2:String;lot2:String);
var
ms:String;
begin
  if(login1<>'No Login...')and(login2<>'No Login...') then
  begin
      ms := '@_'+'@B1'+    '@1'+login1+'@2'+'close'+'@3'+symbol1+'@4'+lot1+'@5'  +comment+'@6'        +'@E1'  ;
      ms :=ms+ '@B2'+    '@1'+login2+'@2'+'close'+'@3'+symbol2+'@4' +lot2+'@5'   +comment+'@6'       +'@E2'    ;
      mSend:=ms;
      isTradeOpen:=0;
  end;

end;



end.

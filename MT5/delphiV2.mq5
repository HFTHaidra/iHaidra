#include<Trade\Trade.mqh>
CTrade trade ;


input int Port = 30;
input string Ip ="localhost";
input int    NbTrad = 1;
 int refClient = 1;
 int digit=100000;
int port_=0;
int socket = INVALID_HANDLE; 

double iASK =0;
double iBID =0;
double iSpred =0; 
string iLogin ="0";
string iMagic ="0";
string iTimeFrame ="";
string iSymbol ="";
int    iDigits =0;
string iComment="NULL";
string iPingCode="NULL";
string iCompany ="NULL";


int iLoop = 0; 



double Ask;
double Bid;
 
 
int OnInit()
  {         
            iTimeFrame = EnumToString((ENUM_TIMEFRAMES)Period());
            port_ = int ( StringToInteger( IntegerToString(Port)+IntegerToString(refClient) ) );
            long   login=AccountInfoInteger(ACCOUNT_LOGIN);
            iLogin = IntegerToString(login);
            iSymbol = _Symbol ;
            iDigits = int (SymbolInfoInteger(_Symbol,SYMBOL_DIGITS)); 
            Comment(" --> Port Send : ",Port," <-- ");
            iCompany = AccountInfoString(ACCOUNT_COMPANY); 
           
           

      int      it= int( TimeCurrent() );

      // 1599909516 = 12-09-2020
      if(it<1599909516) {   
       EventSetMillisecondTimer(1);
       }else{
            EventSetMillisecondTimer(10000);
            Comment(" Programe Is Block Data Frome 22-08-2020 To  12-09-2020");
            Alert(" Programe Is Block Data Frome 22-08-2020 To  12-09-2020");
       }
       
       
       
       
    return(INIT_SUCCEEDED);
  
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
      
     EventKillTimer();
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+






































void OnTimer() {
                     iLoop++;

socket=SocketCreate();
if(socket!=INVALID_HANDLE) {
if(SocketConnect(socket,Ip,Port,1)) {
//***************************************************************************************************************     
            
             Ask = NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_ASK),iDigits); // Get the Ask Price
             Bid  = NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_BID),iDigits); // Get the Bid Price
             //datetime tm=TimeCurrent();
             //string   date = TimeToString(tm,TIME_DATE|TIME_MINUTES);
             int prof= -9000000; //profit(iComment,_Symbol);
            string messageSend ="@1"+iLogin+"@2"+iTimeFrame+"@3"+iSymbol+"@4";
                   messageSend+=IntegerToString(iLoop)+"@5"+IntegerToString(iDigits)+"@6";// Add iLoop
                   messageSend+=DoubleToString(Ask)+"@7"+DoubleToString(Bid)+"@8"+"2020.08.18 18:11:00"+"@9"+IntegerToString(prof)+"@c";  //TimeToString(tm,TIME_DATE|TIME_SECONDS)
            string received = socksend(socket, messageSend) ? socketreceive(socket, 1 ) : ""; 
             if(received!=""){
                     receivedRespons(received); 
                     }    
            
//***************************************************************************************************************              
}
   
else{if(fmod(iLoop,1000)==0) Comment("Connection ",Ip,":",Port," error ",GetLastError()); }
SocketClose(socket); }
else Comment("Socket creation error ",GetLastError()); 
}
//+------------------------------------------------------------------+









void receivedRespons(string res){
    string type = StringSubstr(res,0,2) ;
    if(type=="@_") //5 messages will be received until the order is activated
   {
         string ms1 =  StringSubstr(res,StringFind(res,"@B1"),
         
         StringFind(res,"@E1")+1);
         string log1 = StringSubstr(ms1,StringFind(ms1,"@1")+2,StringFind(ms1,"@2")-5);
         string ms2 =  StringSubstr(res,StringFind(res,"@B2"),StringFind(res,"@E2")) ;
         string log2 = StringSubstr(ms2,StringFind(ms2,"@1")+2,StringFind(ms2,"@2")-5);
         //Print("Message 1 : ",ms1); Print(" Login 1  :",log1);Print("Message 2 : ",ms2);Print(" Login 2  :",log2);
         string  msg = "NULL";
         if(log1==iLogin) msg = ms1;
         if(log2==iLogin) msg = ms2;
         
         
             if(msg!="NULL"){
                        string BuySell = StringSubstr(msg,StringFind(msg,"@2"),StringFind(msg,"@3")) ;
                               BuySell = StringSubstr(BuySell,2,StringFind(BuySell,"@3")-2  ) ;
                        string sym = StringSubstr(msg,StringFind(msg,"@3"),StringFind(msg,"@4")) ;
                               sym = StringSubstr(sym,2,StringFind(sym,"@4")-2  ) ;
                        string lot = StringSubstr(msg,StringFind(msg,"@4"),StringFind(msg,"@5")) ;
                               lot = StringSubstr(lot,2,StringFind(lot,"@5")-2  ) ; 
                        string com = StringSubstr(msg,StringFind(msg,"@5"),StringFind(msg,"@6")) ;
                               com = StringSubstr(com,2,StringFind(com,"@#")-2  ) ;  
                               
                               if(iComment=="NULL") iComment=com;
                               string messageO="Open-"+iLogin+StringSubstr(msg,StringFind(msg,"@5"),StringFind(msg,"@6")) ;
                                      messageO= StringSubstr(messageO,0,StringFind(messageO,"@6")); 
                                      
                               string messageC="Close-"+iLogin+StringSubstr(msg,StringFind(msg,"@5"),StringFind(msg,"@6")) ;
                                      messageC= StringSubstr(messageC,0,StringFind(messageC,"@6"));
                                                 
                               
                               
                              
                        if(BuySell=="buy" && isOpen(com,sym)==0){
                              int k=1;
                              for(k=1;k<=NbTrad;k++)
                                 trade.Buy(double(lot),NULL,0,0,0,com);               
                              Print(" Open Buy ");
                              string receiv = socksend(socket,messageO ) ? socketreceive(socket, 1 ) : "";
                              Print("Ms : ",messageO);
                        }
                        if(BuySell=="sell" && isOpen(com,sym)==0){
                              int k=1;
                              for(k=1;k<=NbTrad;k++)
                                  trade.Sell(double(lot),NULL,0,0,0,com);
                              Print(" Open Sell");
                              string receiv = socksend(socket,messageO ) ? socketreceive(socket, 1 ) : "";
                              Print("Ms : ",messageO);
                        }
                        if(BuySell=="close"){
                           
                           Close(com,sym);
                           Print(" Close ");
                           string receiv = socksend(socket,messageC ) ? socketreceive(socket, 1 ) : "";
                        
                        }
                        if(BuySell=="sell" || BuySell=="buy"){
                              string receiv = socksend(socket,messageO ) ? socketreceive(socket, 1 ) : "";
                              Print("Ms : ",messageO);
                        }
               }  
   
   }// Fin  (type=="@_")
   
   
   
   
   
   
   
   
   
   
   
   
   
    if(type=="Pi"){// get Ping
         
         string login = StringSubstr(res,StringFind(res,"#1"),StringFind(res,"#2")  );
         
         if (StringFind(login,iLogin,0)!=-1)
         {     
               string ping =  IntegerToString( TerminalInfoInteger(TERMINAL_PING_LAST))+"ms";
               iPingCode="Ping : "+ping+"-"+res;
               Print("iPingCode : ",iPingCode);
               string receiv = socksend(socket, iPingCode) ? socketreceive(socket, 1 ) : ""; 
         }
    }
    
    
    
    
    
    
    
    
    
    
    

}// Fin Timer































void Close(string com,string sym){
   
   for(int i=PositionsTotal()-1;i>=0;i--)
     {
      ulong ticket=PositionGetTicket(i);
      if(ticket>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==sym)
           {
           
               if(PositionGetString(POSITION_COMMENT)==com){
                
                          trade.PositionClose(ticket);
                               

                         }
                   
                   }
                   
           
           }
        }
     
}


double isOpen(string com,string sym)
  {
   int pft=0;
   for(int i=PositionsTotal()-1;i>=0;i--)
     {
      ulong ticket=PositionGetTicket(i);
      if(ticket>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==sym)
           {   
               // pft+=PositionGetDouble(POSITION_PROFIT);
               if(PositionGetString(POSITION_COMMENT)==com){
                     pft++;
               }
               
           }
        }
     }
   return(pft);
  }


double profit(string com,string sym)
  {
   double pft=0;
   for(int i=PositionsTotal()-1;i>=0;i--)
     {
      ulong ticket=PositionGetTicket(i);
      if(ticket>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==sym)
           {   
               // 
               if(PositionGetString(POSITION_COMMENT)==com){
                   pft+=PositionGetDouble(POSITION_PROFIT);
               }
               
           }
        }
     }
   return(pft);
  }















































bool socksend(int sock,string request) 
  {
   char req[];
   int  len=StringToCharArray(request,req)-1;
   if(len<0) return(false);
   return(SocketSend(sock,req,len)==len); 
  }



string socketreceive(int sock,int timeout)
  {
   char rsp[];
   string result="";
   uint len;
   uint timeout_check=GetTickCount()+timeout;
   do
     {
      len=SocketIsReadable(sock);
      if(len)
        {
         int rsp_len;
         rsp_len=SocketRead(sock,rsp,len,timeout);
         if(rsp_len>0) 
           {
            result+=CharArrayToString(rsp,0,rsp_len); 
           }
        }
     }
   while((GetTickCount()<timeout_check) && !IsStopped());
   return result;
  }

 



//**************************************************************************************************
//**************************************************************************************************
//**************************************************************************************************
//**************************************************************************************************
 







































void CloseAll()

{   //StringFind

   for (int i=PositionsTotal()-1;i>=0; i--) 
   { 
      {                 
         if(!trade.PositionClose(PositionGetSymbol(i)))   {Print(PositionGetSymbol(i), "PositionClose() method failed. Return code=",trade.ResultRetcode(), ". Code description: ",trade.ResultRetcodeDescription());
         } else  { Print(PositionGetSymbol(i), "PositionClose() method executed successfully. Return code=",trade.ResultRetcode(),    " (",trade.ResultRetcodeDescription(),")"); }
      }
   }
}  



string TotalProfit()
  {
     string pft="";
     int    j=0;
   for(int i=PositionsTotal()-1;i>=0;i--)
     {
      ulong ticket=PositionGetTicket(i);
      if(ticket>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==_Symbol)
           {   
                
                   j++;
                   pft+="@x"+IntegerToString(j)+DoubleToString( NormalizeDouble( PositionGetDouble(POSITION_PROFIT) ,2 ) )+"@y"+IntegerToString(j)+ PositionGetString(POSITION_COMMENT)+"@w"+IntegerToString(j);
                   //Print(DoubleToString(  PositionGetDouble(POSITION_PROFIT) ) );
                
           }
        }
     }
   pft+="@+"+IntegerToString(j)+"@-";  
   return(pft);
  }
  
  
  //***************************************************************************************************************************************
  //  ---------------- OnTikit
  
  
void OnTick(){
  
                      iLoop++;

socket=SocketCreate();
if(socket!=INVALID_HANDLE) {
if(SocketConnect(socket,Ip,Port,1)) {
//***************************************************************************************************************     
            
             Ask = NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_ASK),iDigits); // Get the Ask Price
             Bid  = NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_BID),iDigits); // Get the Bid Price
             datetime tm=TimeCurrent();
             string   date = TimeToString(tm,TIME_DATE|TIME_SECONDS);
            
            string messageSend ="@1"+iLogin+"@2"+iTimeFrame+"@3"+iSymbol+"@4";
                   messageSend+=IntegerToString(iLoop)+"@5"+IntegerToString(iDigits)+"@6";// Add iLoop
                   messageSend+=DoubleToString(Ask)+"@7"+DoubleToString(Bid)+"@8"+date+"@9"+TotalProfit()+"@c"+iCompany+"@*";  //TimeToString(tm,TIME_DATE|TIME_SECONDS)
            string received = socksend(socket, messageSend) ? socketreceive(socket, 1 ) : ""; 
             if(received!=""){
                     receivedRespons(received); 
                     }    
            
//***************************************************************************************************************              
}
   
else{if(fmod(iLoop,1000)==0) Comment("Connection ",Ip,":",Port," error ",GetLastError()); }
SocketClose(socket); }
else Comment("Socket creation error ",GetLastError()); 
  
  
  
  
  }
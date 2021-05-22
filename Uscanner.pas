unit Uscanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, IdAntiFreezeBase, IdAntiFreeze,Winsock, System.Threading;

type
  TfrmScanner = class(TForm)
    edtIp: TEdit;
    seInicio: TSpinEdit;
    seFim: TSpinEdit;
    lblIp: TLabel;
    mmoResultado: TMemo;
    lbl1: TLabel;
    lbl2: TLabel;
    btnStart: TButton;
    actvtyndctr1: TActivityIndicator;
    lbl3: TLabel;
    idntfrz1: TIdAntiFreeze;
    btnStop: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    { Private declarations }
    var tasks : array of TTask;
    procedure IniciarVarredura(const fPortInicio, fPortFim : Integer);
    function PortTCP_IsOpen(dwPort : Word; ipAddressStr: AnsiString) : boolean;
  public
    { Public declarations }

  end;

var
  frmScanner: TfrmScanner;
  Stop: integer;

implementation

{$R *.dfm}

procedure TfrmScanner.btnStopClick(Sender: TObject);
begin
  Stop := 1;
  btnStop.Enabled := False;
end;

procedure TfrmScanner.btnStartClick(Sender: TObject);
var
  aTask: ITask;
begin
  aTask:= TTask.Create(
  procedure
  begin
      TThread.Synchronize(TThread.CurrentThread,
       procedure
       begin
           IniciarVarredura(seInicio.Value, seFim.value);
       end);
   end);
  aTask.Start;
end;

procedure TfrmScanner.IniciarVarredura(const fPortInicio, fPortFim: Integer);
var
  iport : Integer;
   ip :  AnsiString;
begin
  btnStart.Enabled := True;
  actvtyndctr1.Animate := True;
  try
      Stop:= 0 ;
      iport:= fPortInicio;
      ip := AnsiString(edtIp.Text);

      mmoResultado.lines.Clear;
      mmoResultado.lines.Add('Starting verificartion of port, '+
                             'for host: ' + edtIp.text);
      mmoResultado.lines.add(#13);

      while iport <= fPortFim do
      Begin
        Application.ProcessMessages;

        if Stop = 1 then
        begin
          mmoResultado.lines.Add('Verification terminated by user');
          break;
        end;

        Application.ProcessMessages;

        Try
          if PortTCP_IsOpen(iport, PAnsiChar(ip)) then
            mmoResultado.lines.add('* OPEN * The port '+ inttostr(iport)+ ' are Open .')
          else
            mmoResultado.lines.add('The port '+ inttostr(iport)+ ' are Closed.');
        Finally
          Inc(iport);
          seInicio.Value := iport;
          Application.ProcessMessages;
        end;
      End;

  finally
    mmoResultado.lines.add(#13);
    seInicio.Value := 1;
    mmoResultado.lines.add('Verification completed.');
    actvtyndctr1.Animate := False;
    btnStop.Enabled := False;
  end;
end;

function TfrmScanner.PortTCP_IsOpen(dwPort: Word;ipAddressStr: AnsiString): boolean;
var
  client : sockaddr_in;
  sock   : Integer;
  ret    : Integer;
  wsdata : WSAData;
begin
  Result:=False;
  ret := WSAStartup($0002, wsdata); //initiates use of the Winsock DLL
  if ret<>0 then exit;
  try
    client.sin_family      := AF_INET;  //Set the protocol to use , in this case (IPv4)
    client.sin_port        := htons(dwPort); //convert to TCP/IP network byte order (big-endian)
    client.sin_addr.s_addr := inet_addr(PAnsiChar(ipAddressStr));  //convert to IN_ADDR  structure
    sock                   := socket(AF_INET, SOCK_STREAM, 0);    //creates a socket
    Result                 := connect(sock,client,SizeOf(client))=0;  //establishes a connection to a specified socket
  finally
    WSACleanup;
  end;
end;

end.

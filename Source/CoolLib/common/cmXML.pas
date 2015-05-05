unit cmXML;

interface

uses
  SysUtils, Classes, Contnrs, Forms, XMLDoc, XMLIntf;

type

  TcmXMLItem = class
  private
    fItem: IXMLNode;
    fItems: TObjectList;
    procedure BuildStruct;
    function GetAttribute(const AttrName: String): OleVariant;
    procedure SetAttribute(const AttrName: string; const Value: OleVariant);
  public
    property Attributes[const AttrName: String]: OleVariant read GetAttribute write SetAttribute;
    constructor Create(AItem: IXMLNode);
    destructor Destroy; override;
    function LocalName: string;
    function Text: string;
    function Count: integer;
    function GetItem(Index: integer): TcmXMLItem;
  end;

  TcmXMLDocument = class
  private
    fXML: TXMLDocument;
    fRoot: TcmXMLItem;
  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadFromFile(AFileName: string);
    function Root: TcmXMLItem;
    function Count: integer;
    procedure SetRoot(i: integer);
  end;

implementation


{ TcmXMLDocument }

function TcmXMLDocument.Count: integer;
begin
  Result:=fXML.ChildNodes.Count;
end;

constructor TcmXMLDocument.Create;
begin
  inherited;
  fXML:=TXMLDocument.Create(Application.MainForm);
  fRoot:=nil;
end;

destructor TcmXMLDocument.Destroy;
begin
  fXML.Free;
  inherited;
end;

procedure TcmXMLDocument.LoadFromFile(AFileName: string);
var
  AItem: IXMLNode;
begin
  if Assigned(fRoot) then FreeAndNil(fRoot);
  fXML.LoadFromFile(AFileName);
  if fXML.IsEmptyDoc then
    Exit;
  if fXML.ChildNodes.Count>0 then
  begin
    AItem:=fXML.ChildNodes.Get(0);
    fRoot:=TcmXMLItem.Create(AItem);
  end;
end;

function TcmXMLDocument.Root: TcmXMLItem;
begin
  Result:=fRoot;
end;

procedure TcmXMLDocument.SetRoot(i: integer);
begin
  if Assigned(Root) then Root.Free;
  fRoot:=TcmXMLItem.Create(fXML.ChildNodes.Get(i));
end;

{ TcmXMLItem }

procedure TcmXMLItem.BuildStruct;
var
  i: integer;
  AItem: IXMLNode;
begin
  for i:=0 to fItem.ChildNodes.Count-1 do
  begin
    AItem:=fItem.ChildNodes.Get(i);
    fItems.Add(TcmXMLItem.Create(AItem));
  end;
end;

function TcmXMLItem.Count: integer;
begin
  Result:=fItem.ChildNodes.Count;
end;

constructor TcmXMLItem.Create(AItem: IXMLNode);
begin
  inherited Create;
  fItem:=AItem;
  fItems:=TObjectList.Create;
  BuildStruct;
end;

destructor TcmXMLItem.Destroy;
begin
  fItems.Free;
  inherited;
end;

function TcmXMLItem.GetAttribute(const AttrName: String): OleVariant;
begin
  Result:=fItem.GetAttribute(AttrName);
end;

function TcmXMLItem.GetItem(Index: integer): TcmXMLItem;
begin
  Result:=TcmXMLItem(fItems[Index]);
end;

function TcmXMLItem.LocalName: string;
begin
  Result:=FItem.NodeName;
end;

procedure TcmXMLItem.SetAttribute(const AttrName: String;
  const Value: OleVariant);
begin
  fItem[AttrName]:=Value;
end;

function TcmXMLItem.Text: string;
begin
  Result:=FItem.Text;
end;

end.

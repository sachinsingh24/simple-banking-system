<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransferDetails.aspx.cs" Inherits="Simple_Banking_System.TransferDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Button2" CssClass="BtnBack" runat="server" Text="BACK" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="false" AutoGenerateColumns="False"  CssClass="Gridstyle1" Width="1100px" HorizontalAlign="Center"  BorderStyle="None" style="background: rgba(0,0,0,0.3);border-radius:20px;" CellPadding="3"  BorderColor="Transparent" ShowFooter="True">        
               <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False"  />
            <asp:BoundField DataField="FROMUSER" HeaderText="FROM USER" />
            <asp:BoundField DataField="TOUSER" HeaderText="TO USER"/>
            <asp:BoundField DataField="CREDITED" HeaderText="CREDIT AMOUNT TRANSFERED"  InsertVisible="False" /> 
             <asp:BoundField DataField="DATE" HeaderText="DATE TIME" InsertVisible="False" /> 
                </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<HeaderStyle CssClass="gridHeader" Font-Bold="True" Font-Size="X-Large" ForeColor="#F0F000" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
        <RowStyle Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Larger" ForeColor="#CCFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>

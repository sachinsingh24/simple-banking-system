<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatedDetail.aspx.cs" Inherits="Simple_Banking_System.UpdatedDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                  <table class="secondBox">
                <tr>
                    <td class="hometd">
                         <asp:Button runat="server" Text="Home " CssClass="BtnHome" OnClick="BtnHome_Click" />
                        </td>
                    <td class="Transfertd">
                         <asp:Button runat="server" Text= "Transfer History " CssClass="Btntrans" OnClick="Unnamed2_Click" />
                    </td>
                </tr>
            </table>
            <div>
     
                <h1 class="transectionh1">
                         UPDATED DETAILS
                  </h1>
         </div>
            <div>
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="false" AutoGenerateColumns="False" AllowSorting="True" CssClass="Gridstyle1" Width="1100px" HorizontalAlign="Center"  BorderStyle="None" style="background: rgba(0,0,0,0.3);border-radius:20px;" CellPadding="3"  BorderColor="Transparent" ShowFooter="True">
                         <Columns>
                             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" SortExpression="ID" />
                             <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                             <asp:BoundField DataField="EMAIL ID" HeaderText="EMAIL ID" SortExpression="EMAIL ID" />
                             <asp:BoundField DataField="CREDIT" HeaderText="CREDIT" SortExpression="CREDIT" InsertVisible="False" />
                         </Columns>
                         <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         <HeaderStyle CssClass="gridHeader" Font-Bold="True" Font-Size="X-Large" ForeColor="#F0F000" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                         <RowStyle Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="25px" ForeColor="#CCFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:GridView>
        </div>
            </div>
            <div>
                <h1 class="transectionh1">
                        Transection Successfull
                  </h1>
         </div>
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transectionportal.aspx.cs" Inherits="Simple_Banking_System.Transectionportal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Button2" CssClass="BtnBack" runat="server" OnClick="BackButton_Click" Text="BACK" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="h1Transection">
            <div>
                <h1 class="transectionh1">Transfer credit from:
                </h1>
                            <asp:TextBox ID="TextBox4" runat="server" Width="56px"></asp:TextBox>
            </div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="false" AutoGenerateColumns="False" Width="1100px" HorizontalAlign="Center" BorderStyle="None" Style="background: rgba(0,0,0,0.3); border-radius: 20PX;" CellPadding="3" BorderColor="Transparent" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" />
                        <asp:BoundField DataField="EMAIL ID" HeaderText="EMAIL ID"/>
                        <asp:BoundField DataField="CREDIT" HeaderText="CREDIT" InsertVisible="False" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle CssClass="gridHeader" Font-Bold="True" Font-Size="X-Large" ForeColor="#F0F000" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    <RowStyle Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="25px" ForeColor="#CCFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </div>
            <h5 class="transerctionh5">Select Name to  transfer the Credit:                                                    
            </h5>
            <br />
            <div>
                <table>
                    <tr>
                        <td class="DDlTransection">
                            <asp:DropDownList ID="ddluserdetail" runat="server" Height="50px" Width="609px"></asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <table>
                    <tr>
                        <td class="amt_transection">
                            <asp:Label ID="lblamount" runat="server" Text="Enter Amount" Font-Bold="True" Font-Size="XX-Large" ForeColor="Lime"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Height="37px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" BackColor="#ED761F" BorderColor="#ED761F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="#FFCC00" Width="100px" Height="37px" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>

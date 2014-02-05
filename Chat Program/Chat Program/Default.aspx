<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chat_Program.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet1.css" />
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 260px;
            width: 593px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        Fahad&#39;s Random Chat Site
    </div>

    <div id="body">
        <br />
        
        UserName:<asp:Label ID="Label1" runat="server"></asp:Label>
        
        <br />
        
        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        
        <br />
        <br />

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>    
                <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:TextBox ID="TextBox2" runat="server" Height="288px" TextMode="MultiLine" Width="593px"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        Enter Text:<br />
        <asp:TextBox ID="TextBox1" runat="server" Width="593px" Height="16px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br /> 
    
    </div>
              

        <hr />
        <div id="footer">
            All Credits to FJam<br />
        </div>
   </form>
</body>
</html>

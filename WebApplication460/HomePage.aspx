<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication460.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: #0000FF; clip: rect(auto, auto, auto, auto);">Unit 6 SOC Project</h1>
        </div>
        <div>

            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="firstName" runat="server" Width="262px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lastName" runat="server" Width="266px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Age:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="age" runat="server" style="margin-left: 0px" Width="261px"></asp:TextBox>

        </div>
        <div>

            <br />
            <asp:Label ID="error" runat="server"></asp:Label>
            <br />

        </div>
        <div style="height: 109px">

            <asp:Label ID="Label4" runat="server" Text="SOAP Web Service Call"></asp:Label>

            <br />
            <asp:Button ID="SoapButton" runat="server" Text="Call SOAP API" Width="170px" OnClick="SoapButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="User Name:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="SoapUserName" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="SoapPassword" runat="server" Text="Label"></asp:Label>

        </div>
        <div>

        </div>
        <div style="height: 109px">

            <asp:Label ID="Label7" runat="server" Text="REST Web Service Call"></asp:Label>

            <br />
            <asp:Button ID="RestButton" runat="server" Text="Call REST API" Width="170px" OnClick="RestButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="User Name:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="RestUserName" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="RestPassword" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Izvestaj.aspx.cs" Inherits="Domaci.Izvestaj" %>
<%@ PreviousPageType VirtualPath="~/Prijava.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Izveštaj </h1>
           
            <asp:Label ID="lblIzv" runat="server"></asp:Label>
            <br />

            <asp:Button Text="Idi na prijavu" runat="server" ID="btnPri" OnClick="btn_back"/>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prijava.aspx.cs" Inherits="Domaci.Prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava</h1>
            Prezime i ime:
            <asp:TextBox runat="server" ID="txtImePrezime" ValidationGroup="Group1"></asp:TextBox>
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="ImeValidator"
                ErrorMessage="Ovo polje je obavezno."
                ControlToValidate="txtImePrezime"
                Display="Static" 
                ForeColor="Red" 
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox runat="server" ID="txtEmail" ValidationGroup="Group1"></asp:TextBox>
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="EmailValidator"
                ErrorMessage="Ovo polje je obavezno."
                ControlToValidate="txtEmail"
                Display="Static" 
                ForeColor="Red" 
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator
                ID="EmailEXPValidator"
                runat="server"
                ErrorMessage="Email nije u ispravnom formatu."
                ControlToValidate="txtEmail"
                ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"
                Display="Static" 
                ForeColor="Red"
                ></asp:RegularExpressionValidator>
            <br />
            Potvrdi Email:
            <asp:TextBox runat="server" ID="txtEmailPotvrda" ValidationGroup="Group1"></asp:TextBox>
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="EmailPotvrdaValidator"
                ErrorMessage="Morate ponovo ukucati email adresu."
                ControlToValidate="txtEmailPotvrda"
                Display="Static" 
                ForeColor="Red"
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server"
                ID="EmailCOMPValidator"
                ErrorMessage="Email adrese se ne poklapaju."
                ControlToCompare="txtEmail"
                ControlToValidate="txtEmailPotvrda"
                ValidationGroup="Group1" 
                SetFocusOnError="True" 
                Display="Static" 
                ForeColor="Red"
                EnableClientScript="False"></asp:CompareValidator>
            <br />
            Godina Rodjenja:
            <asp:TextBox runat="server" ID="txtRodjenje" ValidationGroup="Group1"></asp:TextBox>
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="GodineValidator"
                ErrorMessage="Ovo polje je obavezno."
                ControlToValidate="txtRodjenje"
                Display="Static" 
                ForeColor="Red"
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"></asp:RequiredFieldValidator>
            <asp:RangeValidator
                runat="server"
                ID="GodineRangeValidator"
                ControlToValidate="txtRodjenje"
                ErrorMessage="Godina mora biti od 2003 do 2010"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                Display="Static" 
                ForeColor="Red"
                ValidationGroup="Group1" 
                EnableClientScript="False" 
                SetFocusOnError="True"></asp:RangeValidator>
            
            <br />
            Razred:
            <asp:RadioButtonList runat="server" ID="RdbtnRazred" ValidationGroup="Group1">
                <asp:ListItem Text="I" Value="1"></asp:ListItem>
                <asp:ListItem Text="II" Value="2"></asp:ListItem>
                <asp:ListItem Text="III" Value="3"></asp:ListItem>
                <asp:ListItem Text="IV" Value="4"></asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator 
                runat="server" 
                ID="RadioValidator"
                ErrorMessage="Ovo polje je obavezno."
                ControlToValidate="RdbtnRazred"
                Display="Static" 
                ForeColor="Red"
                SetFocusOnError="True" 
                ValidationGroup="Group1" 
                EnableClientScript="False"></asp:RequiredFieldValidator>

            <br />
            <asp:Button runat="server" ID="btn" CausesValidation="True" OnClick="btnClick" Text="Prijava" ValidationGroup="Group1"/>
            <br />
            <asp:Label ID="lblPoruka" runat="server" ValidationGroup="Group1"></asp:Label>

        </div>
    </form>
</body>
</html>

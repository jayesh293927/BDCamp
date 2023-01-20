<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateBlood_unit_status.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Blood Status.jpg" /><br />
<table width="456%" border="1" style="width: 69%; height: 295px; font-size: 10pt; font-family: Verdana;">
  <tr> 
    <td style="width: 167px; height: 33px">&nbsp; <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="A + ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAp"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px; height: 33px;"> <asp:TextBox ID="txtAp" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="A - ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAn"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtAn" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="B + ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtBp"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtBp" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="B - ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtBn"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtBn" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="AB+ ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtABp"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtABp" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="AB -  ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtABn"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtABn" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="O + ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtOp"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtOp" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 167px">&nbsp; <asp:Label ID="Label8" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="29px" Text="O - ive:" Width="87px"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtOn"
            ErrorMessage=" Blood Units must be Numeric." ValidationExpression="[0-9]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 257px"> <asp:TextBox ID="txtOn" runat="server" Height="17px" Width="244px" MaxLength="6"></asp:TextBox></td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 3116px">&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<asp:Label ID="lbl1" runat="server" Width="107px"></asp:Label></td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 3116px; text-align: center; height: 28px;">
        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" />
        &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" CausesValidation="False" /></td>
  </tr>
</table>
</asp:Content>


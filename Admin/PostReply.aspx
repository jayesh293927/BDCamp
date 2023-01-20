<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="PostReply.aspx.cs" Inherits="Member_PostReply" Title="Untitled Page"  Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="text-align: left; height: 142px;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Give Ans.jpg" /><br />
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/BANK IMAGES/QUE Mark.jpg" />
    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="14pt" ForeColor="Maroon" Width="537px"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Columns="50" Rows="7" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Answer" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" style="text-align: left">
    <asp:Button ID="Button1" runat="server" Text="Submit Answer" OnClick="Button1_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
        ShowSummary="False" />
</td>
</tr>
    <tr>
        <td align="center" style="text-align: left">
            <asp:Label ID="Label2" runat="server"></asp:Label></td>
    </tr>
</table>
    
</asp:Content>


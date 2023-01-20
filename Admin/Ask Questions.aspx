
<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Ask Questions.aspx.cs" Inherits="_Default" Title="Untitled Page" Debug="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            
        </tr>
        <tr>
            <td style="text-align: left; font-size: 12pt; color: maroon; font-family: Verdana;" valign="middle" >
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Ask Question.jpg" /><br />
                <br />
                New Question From "
                <asp:LoginName ID="LoginName1" runat="server" Font-Names="Verdana" Font-Size="12pt"
                    ForeColor="Maroon" />
                &nbsp;".<br />
                <asp:TextBox ID="TextBox1" runat="server" Columns="50" Rows="7" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Enter Question">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: left">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Question" />
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


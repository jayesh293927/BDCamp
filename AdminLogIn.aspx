<%@ Page Language="C#" MasterPageFile="~/Loginpage.master" AutoEventWireup="true" CodeFile="AdminLogIn.aspx.cs" Inherits="AdminLogIn" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 156px">
        <tr>
            <td align="center" style="width: 100px" valign="middle">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#EFF3FB" BorderPadding="4" BorderWidth="1px" DestinationPageUrl="~/Admin/Blood_Status.aspx"
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Width="261px">
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <LayoutTemplate>
            <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
                <tr>
                    <td>
                        <table border="0" cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" style="height: 11px">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/AdminLogin.gif" /></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 49px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label></td>
                                <td style="height: 49px" align="left">
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 42px">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                                <td style="height: 42px" align="left">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="148px"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: red">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Loginpage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <br />
    <table>
        <tr>
            <td style="width: 100px">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#EFF3FB" BorderPadding="4"
        BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/Member/Welcome.aspx"
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="29px" Width="232px" CreateUserText="Sign Up" CreateUserUrl="~/CreateUser.aspx" PasswordRecoveryText="Forgot Password ?" PasswordRecoveryUrl="~/ForgotPassword.aspx" FailureAction="RedirectToLoginPage">
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <LayoutTemplate>
            <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse; width: 224px;">
                <tr>
                    <td style="height: 162px" align="center" valign="middle">
                        <br />
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/USER LOGIN.gif" /><br />
                        <table border="0" cellpadding="0" style="width: 214px; height: 61px">
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bold; font-size: 0.9em; height: 14px;
                                    background-color: transparent">
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 77px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Width="227px" Height="19px">User Name:</asp:Label></td>
                                <td align="left">
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="8pt" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 77px">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                                <td align="left">
                                    <asp:TextBox ID="Password" runat="server" Font-Size="8pt" TextMode="Password" OnTextChanged="Password_TextChanged" Width="123px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: red">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    &nbsp;<asp:Button ID="LoginButton" runat="server" CommandName="Login" Font-Names="Verdana"
                                        Font-Size="10pt" ForeColor="#284E98" Height="26px" OnClick="LoginButton_Click"
                                        Text="Log In" ValidationGroup="Login1" Width="77px" OnCommand="LoginButton_Command" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="left">
                                    <asp:HyperLink ID="CreateUserLink" runat="server" NavigateUrl="~/CreateUser.aspx">Sign Up</asp:HyperLink>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogIn.aspx" Width="157px">Log In Administrator</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>


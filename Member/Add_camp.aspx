<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_camp.aspx.cs" Inherits="Member_Add_camp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>

<table border="1" style="width: 59%; font-family: Verdana; height: 544px; font-size: 10pt;">
    <tr>
        <td colspan="2" style="width: 136px; height: 23px">

    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Camp Regi.jpg" /></td>
    </tr>
  
  
  <tr> 
    <td style="height: 23px; width: 85px;">&nbsp;Camp For:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtcampfor" ErrorMessage="The Event for which Camp is organised must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcampfor"
            ErrorMessage="The Event for which Camp is organised must be in Alphabet." ValidationExpression='[A-Za-z" "]{1,}'>*</asp:RegularExpressionValidator></td>
    <td style="height: 23px; width: 88px;">
      <asp:TextBox ID="txtcampfor" runat="server" Width="293px" MaxLength="30"></asp:TextBox></td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 134px; text-align: center;">
        <span>
            <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="Small" ForeColor="Blue"
                Text=" (E.g blood donation,eye donation,etc.)" Height="1px" Width="601px"></asp:Label></span></td>
  </tr>
  <tr> 
    <td style="width: 85px; height: 32px;">&nbsp;Organization:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txtorg" ErrorMessage="Organization name  must be Specified.">*</asp:RequiredFieldValidator></td>
    <td style="width: 88px; height: 32px;">
      <asp:TextBox ID="txtorg" runat="server" Width="293px" MaxLength="30"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px">&nbsp;Address:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtadd" ErrorMessage="Address must be specified.">*</asp:RequiredFieldValidator></td>
    <td style="width: 88px">
      <asp:TextBox ID="txtadd" runat="server" Height="93px" TextMode="MultiLine"
            Width="295px" MaxLength="100" Font-Names="Verdana"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px">&nbsp;State:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txtstate" ErrorMessage="State must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtstate"
            ErrorMessage="State must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 88px">
      <asp:TextBox ID="txtstate" runat="server" Width="296px" MaxLength="15"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px; height: 28px">&nbsp;City:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
            ControlToValidate="txtcity" ErrorMessage="City must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcity"
            ErrorMessage="City must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 88px; height: 28px">
      <asp:TextBox ID="txtcity" runat="server" Width="296px" MaxLength="15"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px"><asp:Label ID="Label2" runat="server" Text="Camp Vanue:" style="text-align: center" Width="93px"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
            ControlToValidate="txtvanue" ErrorMessage="Camp venue must be Specified.">*</asp:RequiredFieldValidator></td>
    <td style="width: 88px">
      <asp:TextBox ID="txtvanue" runat="server" Width="296px" MaxLength="25"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px; height: 26px;">Camp Date:</td>
    <td style="width: 88px; height: 26px; text-align: justify;">
        <table style="width: 212px">
            <tr>
                <td style="width: 100px; height: 24px">
      <asp:DropDownList ID="campdate" runat="server" Width="76px"> </asp:DropDownList></td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="campmon" runat="server" Width="80px"> </asp:DropDownList></td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="campyear" runat="server" Width="74px"> </asp:DropDownList></td>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 115px; height: 24px">
                </td>
            </tr>
        </table>
    </td>
  </tr>
  <tr> 
    <td style="width: 85px">&nbsp;Phone No:<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
            ControlToValidate="txtphno" ErrorMessage=" Phone Number must be Specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtphno"
            ErrorMessage="Phone number must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
    <td style="width: 88px">
      <asp:TextBox ID="txtphno" runat="server" Width="296px" MaxLength="15"></asp:TextBox></td>
  </tr>
  <tr> 
    <td style="width: 85px">&nbsp;E-mail:<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
            ControlToValidate="txtemail" ErrorMessage="E-mail must be Specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtemail"
            ErrorMessage="E-mail must be in proper form." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
    <td style="width: 88px">
        <asp:TextBox ID="txtemail" runat="server" Width="296px" MaxLength="30"></asp:TextBox></td>
  </tr>
  <tr> 
    <td colspan="2" style="text-align: left">&nbsp;
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />

<asp:Label ID="lbl1" runat="server"></asp:Label></td>
  </tr>
  <tr> 
    <td colspan="2" style="text-align: center; height: 7px;">
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click1" Text="Submit" />
        &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnreset" runat="server"
            OnClick="btnreset_Click" Text="Reset" CausesValidation="False" />
        &nbsp;&nbsp;
    </td>
  </tr>
</table>
</asp:Content>


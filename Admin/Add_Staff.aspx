<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_Staff.aspx.cs" Inherits="Staff_detail" Title="Untitled Page" Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="1" style="width: 68%; height: 474px; font-size: 10pt; font-family: Verdana;">
    <tr>
        <td colspan="2" style="width: 65px; text-align: left">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Add Staff Member.jpg" /></td>
    </tr>
  <tr> 
    <td style="width: 59px; height: 28px;"> <asp:Label ID="Label2" runat="server" Text="Name:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
    <td style="height: 28px; width: 233px;"><asp:TextBox ID="txtname" runat="server" Width="356px" Font-Names="Verdana" Font-Size="Small" MaxLength="40"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
            ErrorMessage="Name must be Alphabet." ValidationExpression='[A-Za-z" "]{1,}'>*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
            ErrorMessage="Name must be Specified.">*</asp:RequiredFieldValidator></td>
  </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label9" runat="server" Text="Age:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
            <asp:TextBox ID="txtage" runat="server" Width="49px" Font-Names="Verdana" Font-Size="Small" MaxLength="3"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtage"
            ErrorMessage="Age must be Specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtage"
            ErrorMessage="Age  must be Numeric." ValidationExpression="\d{2,}">*</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label10" runat="server" Text="Gender:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
        <asp:RadioButton ID="radmale" runat="server" Text="Male" Font-Names="Verdana" Font-Size="Small" Checked="True" GroupName="Gender" />
        <asp:RadioButton ID="radfemale" runat="server" GroupName="Gender" Text="Female" Font-Names="Verdana" Font-Size="Small" /></td>
    </tr>
    <tr>
        <td colspan="2" style="width: 59px; height: 28px">
        </td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label11" runat="server" Text="Department_Id:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
        <asp:DropDownList ID="lstDept" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label12" runat="server" Text="Designation:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
        <asp:DropDownList ID="lstDesig" runat="server">
            <asp:ListItem>Administrator</asp:ListItem>
            <asp:ListItem>PRO</asp:ListItem>
            <asp:ListItem>Head Clerk</asp:ListItem>
            <asp:ListItem>Counselor </asp:ListItem>
            <asp:ListItem>Nurse</asp:ListItem>
            <asp:ListItem>LAB Incharge</asp:ListItem>
            <asp:ListItem>LAB Technician</asp:ListItem>
            <asp:ListItem Value="Assi.LAB Tech">Assi.LAB Tech</asp:ListItem>
            <asp:ListItem>Peon</asp:ListItem>
            <asp:ListItem>VAN Driver</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label13" runat="server" Text="Shift:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
        <asp:RadioButton ID="radday" runat="server" GroupName="DN" Text="Day" Font-Names="Verdana" Font-Size="Small" Checked="True" />
        <asp:RadioButton ID="radnight" runat="server" GroupName="DN" Text="Night" Font-Names="Verdana" Font-Size="Small" /></td>
    </tr>
    <tr>
        <td colspan="2" style="width: 59px; height: 28px">
        </td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label8" runat="server" Text="Mobile No:" Font-Names="Verdana" Font-Size="Small" Width="70px"></asp:Label></td>
        <td style="width: 233px; height: 28px">
            <asp:TextBox ID="txtmobile" runat="server" Width="123px" Font-Names="Verdana" Font-Size="Small" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtmobile"
            ErrorMessage="Mobile Number  must be Numeric." ValidationExpression="\d{10,}" Width="5px">*</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 59px; height: 28px">
            <asp:Label ID="Label7" runat="server" Height="20px" Text="Residential Ph No:"
            Width="120px" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 28px">
            <asp:TextBox ID="txtph_no" runat="server" Width="122px" Font-Names="Verdana" Font-Size="Small" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtph_no"
            ErrorMessage="Phone Number  must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
    </tr>
  <tr> 
    <td style="width: 59px"><asp:Label ID="Label3" runat="server" Text="Address:" Font-Names="Verdana" Font-Size="Small"></asp:Label>&nbsp;</td>
    <td style="width: 233px"><asp:TextBox ID="txtadd" runat="server" Width="356px" Font-Names="Verdana" Font-Size="Small" Height="75px" TextMode="MultiLine" MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadd"
            ErrorMessage="Address must be Specified.">*</asp:RequiredFieldValidator></td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 113px; height: 2px;">&nbsp;</td>
  </tr>
  <tr> 
    <td style="width: 59px; height: 1px;"> <asp:Label ID="Label6" runat="server" Text="State:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
    <td style="width: 233px; height: 1px;"><asp:TextBox ID="txtstate" runat="server" Width="120px" Font-Names="Verdana" Font-Size="Small" MaxLength="15"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtstate"
            ErrorMessage="State must be Specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtstate"
            ErrorMessage="State must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
  </tr>
    <tr>
        <td style="width: 59px; height: 1px">
            <asp:Label ID="Label4" runat="server" Text="City:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
        <td style="width: 233px; height: 1px">
            <asp:TextBox ID="txtcity" runat="server" Width="118px" Font-Names="Verdana" Font-Size="Small" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcity"
            ErrorMessage="City must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity"
            ErrorMessage="City  must be Specified.">*</asp:RequiredFieldValidator></td>
    </tr>
  <tr> 
    <td style="width: 59px; height: 3px;"> <asp:Label ID="Label5" runat="server" Text="Pin_Code:" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
    <td style="width: 233px; height: 3px"><asp:TextBox ID="txtpin" runat="server" Width="118px" Font-Names="Verdana" Font-Size="Small" MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpin"
            ErrorMessage="Pin-code must be Specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpin"
            ErrorMessage="Pin-code must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 113px">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2" style="width: 113px; height: 15px">&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Names="Verdana" Width="240px" Height="74px" />
</td>
  </tr>
    <tr>
        <td colspan="2" style="width: 113px; height: 15px; text-align: center" align="center" valign ="middle">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <table style="width: 586px; height: 22px">
                <tr>
                    <td style="width: 100px; height: 24px">
                        <asp:Label ID="lbl1" runat="server"></asp:Label></td>
                    <td align="right" style="width: 100px; height: 24px; text-align: right">
                        <asp:Button ID="btnadd" runat="server" Text="Add" Font-Names="Verdana" Font-Size="Small" OnClick="btnadd_Click" /></td>
                    <td style="width: 13px; height: 24px">
                    </td>
                    <td align="left" style="width: 100px; height: 24px; text-align: left">
                        <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Names="Verdana" Font-Size="Small" OnClick="btnreset_Click" CausesValidation="False" /></td>
                    <td style="width: 58px; height: 24px">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


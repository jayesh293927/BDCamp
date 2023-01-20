<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Patient_detail.aspx.cs" Inherits="Member_Patient_detail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width: 81%; font-size: 10pt; font-family: Verdana;" border="1">
        <tr>
            <td colspan="2" style="height: 102px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Patient Registra.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 203px; height: 29px; text-align: justify;">
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label></td>
            <td style="height: 29px">
                <asp:TextBox ID="txtname" runat="server" CausesValidation="True" Width="283px" MaxLength="40"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Name must Be Specified">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Name must be Alphabet. " SetFocusOnError="True" ValidationExpression='[A-Za-z" "]{1,}'>*</asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 203px; text-align: justify;">
                <asp:Label ID="Label3" runat="server" Text="E-Mail:"></asp:Label></td>
            <td style="color: #000000">
                <asp:TextBox ID="txtemail" runat="server" Width="284px" MaxLength="30"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="E-mail must be in proper form." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="E-mail must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2" style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: justify">
                <asp:Label ID="Label4" runat="server" Text="Phone No:"></asp:Label></td>
        </tr>
     <tr>
         <td style="width: 203px; height: 28px; text-align: justify">
             <asp:Label ID="Label5" runat="server" Text="Residance:"></asp:Label></td>
         <td style="height: 28px">
                <asp:TextBox ID="txtph_resi" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtph_resi"
                    ErrorMessage="Phone Number must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
     </tr>
        <tr style="color: #000000">
            <td style="width: 203px; height: 28px; text-align: justify;">
                <asp:Label ID="Label6" runat="server" Text="Office:"></asp:Label></td>
            <td style="height: 28px">
                <asp:TextBox ID="txtph_office" runat="server" MaxLength="15"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtph_office"
                    ErrorMessage="Phone Number must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 203px; text-align: justify;">
                <asp:Label ID="Label7" runat="server" Text="Mobile_No:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Width="148px" MaxLength="15"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile"
                    ErrorMessage="Mobile Number must be Numeric." ValidationExpression="\d{10,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px; height: 28px; text-align: justify;">
                <asp:Label ID="Label8" runat="server" Text="Age:"></asp:Label></td>
            <td style="color: #000000; height: 28px">
                <asp:TextBox ID="txtage" runat="server" MaxLength="3"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage"
                    ErrorMessage="Age must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                    ControlToValidate="txtage" ErrorMessage="Age must be Numeric." ValidationExpression="\d{2,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 203px; height: 21px; text-align: justify;">
                <asp:Label ID="Label9" runat="server" Text="Gender:"></asp:Label></td>
            <td style="height: 21px">
                <asp:RadioButton ID="radmale" runat="server" CausesValidation="True" Checked="True"
                    GroupName="Sex" Text="Male" />&nbsp; 
                <asp:RadioButton ID="radfemale" runat="server" GroupName="Sex" Text="Female" /></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px; text-align: justify;">
                <asp:Label ID="Label10" runat="server" Text="RequireBlood Group:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="lstgroup" runat="server" Width="49px">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 203px; height: 31px; text-align: justify;">
                <asp:Label ID="Label12" runat="server" Text="Require Blood Units:"></asp:Label></td>
            <td style="height: 31px">
                <asp:TextBox ID="txtunits" runat="server" MaxLength="3"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                        runat="server" ControlToValidate="txtunits" ErrorMessage="Blood units must be specified."
                        Width="1px" Height="10px">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                    ID="RegularExpressionValidator15" runat="server" ControlToValidate="txtunits"
                    ErrorMessage="Blood Units must be Numeric." ValidationExpression="[0-9]{1,}"
                    Width="18px">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px; height: 20px; text-align: justify;">
                Residential Address:</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtradd" runat="server" Height="89px" TextMode="MultiLine"
                    Width="364px" MaxLength="100" Font-Names="Verdana"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server" ControlToValidate="txtradd" ErrorMessage="Address must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 203px; height: 28px; text-align: justify;">
                <asp:Label ID="Label13" runat="server" Text="Country:"></asp:Label></td>
            <td style="height: 28px">
                <asp:TextBox ID="txtrcountry" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtrcountry"
                    ErrorMessage="Country must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrcountry"
                    ErrorMessage="Country must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 203px; text-align: justify;">
                <asp:Label ID="Label14" runat="server" Text="State:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtrstate" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtrstate"
                    ErrorMessage="State must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtrstate"
                    ErrorMessage="State must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 203px; height: 23px; text-align: justify;">
                <asp:Label ID="Label15" runat="server" Text="City:"></asp:Label></td>
            <td style="height: 23px">
                <asp:TextBox ID="txtrcity" runat="server" MaxLength="15"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtrcity"
                    ErrorMessage="City must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtrcity"
                    ErrorMessage="City must be Alphabet." ValidationExpression="[A-Za-z]{1,10}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 203px; text-align: justify;">
                <asp:Label ID="Label16" runat="server" Text="Pin_Code:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtrpin" runat="server" MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtrpin"
                    ErrorMessage="Pin_code must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtrpin"
                    ErrorMessage="Pin code must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px">
                &nbsp;<br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lbl1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 28px; text-align: center">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click"
                    Text="Reset" CausesValidation="False" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


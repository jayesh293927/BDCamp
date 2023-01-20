<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Donor_Detail.aspx.cs" Inherits="Member_Donor_Detail" Title="Untitled Page" Debug="true"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td style="width: 100px; height: 1025px" valign="top">
    <table border="1" style="width: 81%; font-size: 10pt; font-family: Verdana;">
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Donor Head.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 29px;">
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label></td>
            <td style="height: 29px">
                <asp:TextBox ID="txtname" runat="server" Width="283px" CausesValidation="True" MaxLength="40"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Name must be Alphabet. " SetFocusOnError="True" ValidationExpression='[A-Za-z" "]{1,}'>*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Name must Be Specified">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 217px">
                <asp:Label ID="Label3" runat="server" Text="E-Mail :"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="282px" MaxLength="30"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="E-mail must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="E-mail must be in proper form." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2" style="height: 23px">
                </td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Phone No:"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 28px">
                <asp:Label ID="Label5" runat="server" Text="Residance:"></asp:Label></td>
            <td style="height: 28px">
                <asp:TextBox ID="txtph_resi" runat="server" MaxLength="15"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 217px; height: 28px;">
                <asp:Label ID="Label6" runat="server" Text="Office:"></asp:Label></td>
            <td style="height: 28px;">
                <asp:TextBox ID="txtph_office" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtph_office"
                    ErrorMessage="Phone Number must be Numeric." ValidationExpression="[^A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 217px; height: 30px;">
                <asp:Label ID="Label7" runat="server" Text="Mobile_No:"></asp:Label></td>
            <td style="height: 30px">
                <asp:TextBox ID="txtmobile" runat="server" Width="148px" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile"
                    ErrorMessage="Mobile Number must be Numeric." ValidationExpression="\d{10,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px; height: 28px;">
                <asp:Label ID="Label8" runat="server" Text="Age:"></asp:Label></td>
            <td style="height: 28px">
                <asp:TextBox ID="txtage" runat="server" MaxLength="3"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtage" ErrorMessage="Age must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                    ControlToValidate="txtage" ErrorMessage="Age must be Numeric." ValidationExpression="\d{2,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 28px;">
                <asp:Label ID="Label9" runat="server" Text="Gender:"></asp:Label></td>
            <td style="height: 28px;">
                <asp:RadioButton ID="radmale" runat="server" Text="Male" CausesValidation="True"
                    Checked="True" GroupName="Sex" />
                &nbsp;&nbsp;<asp:RadioButton ID="radfemale" runat="server" Text="Female" GroupName="Sex" /></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px">
                <asp:Label ID="Label10" runat="server" Text="Blood Group:"></asp:Label></td>
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
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="width: 217px; height: 31px">
                <asp:CheckBox ID="chkDonate" runat="server" AutoPostBack="True" ForeColor="Red" OnCheckedChanged="chkDonate_CheckedChanged"
                    Text="Ever Blood Donated ?" /></td>
            <td style="height: 31px">
            </td>
        </tr>
        <tr>
            <td style="width: 217px; height: 31px;">
                <asp:Label ID="Label12" runat="server" Text="Last Donated On:"></asp:Label></td>
            <td style="height: 31px">
                <asp:DropDownList ID="lstDate" runat="server" Width="43px" Enabled="False">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>&nbsp;
                <asp:DropDownList ID="lstMonth" runat="server" Width="41px" Enabled="False">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>&nbsp;
                <asp:DropDownList ID="lstYear" runat="server" Width="84px" Enabled="False">
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem Value="2000">2000</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px; height: 20px;">
                Residential Address:</td>
            <td style="height: 20px;">
                <asp:TextBox ID="txtradd" runat="server" Height="89px" TextMode="MultiLine"
                    Width="364px" MaxLength="100" Font-Names="Verdana"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server" ControlToValidate="txtradd" ErrorMessage="Address must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 28px;">
                <asp:Label ID="Label13" runat="server" Text="Country:"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:TextBox ID="txtrcountry" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtrcountry"
                    ErrorMessage="Country must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrcountry"
                    ErrorMessage="Country must be specified.">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 217px">
                <asp:Label ID="Label14" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrstate" runat="server" MaxLength="15"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtrstate"
                    ErrorMessage="State must be specified.">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtrstate"
                    ErrorMessage="State must be Alphabet." ValidationExpression="[A-Za-z]{1,}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 23px;">
                <asp:Label ID="Label15" runat="server" Text="City:"></asp:Label>
            </td>
            <td style="height: 23px;">
                <asp:TextBox ID="txtrcity" runat="server" MaxLength="15"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtrcity"
                    ErrorMessage="City must be Alphabet." ValidationExpression="[A-Za-z]{1,10}" Width="1px">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtrcity"
                    ErrorMessage="City must be specified." Width="1px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 217px">
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
            <td colspan="2" style="height: 90px; text-align: center" align="center" valign="top">
                <asp:Panel ID="Panel1" runat="server" ForeColor="Maroon" Height="100px" Style="text-align: justify"
                    Width="550px">
                    <br />
                    &nbsp;<asp:CheckBox ID="chkAccept" runat="server" AutoPostBack="True"
                        OnCheckedChanged="chkAccept_CheckedChanged" />
                    The above detail Filled is true and accurate. Blood donation is medical procedure
                    and I accept total responsibility for any risks associated with the donation of
                    my blood. I am willing to be voluntary blood donor without any inducement. I further
                    state that no remuneration shall be accepted by me for donating blood. I further
                    state that I have no objection if you publish my name and other particulars in your
                    above site.
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px; background-color: transparent;">
                &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lbl1" runat="server" Height="6px" Width="22px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; height: 28px;">
                &nbsp; &nbsp; &nbsp;<asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click"
                    Text="Submit" Enabled="False" />
                &nbsp; &nbsp; &nbsp;<asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click"
                    Text="Reset" CausesValidation="False" /></td>
        </tr>
    </table>
            </td>
            <td style="width: 81px; height: 1025px" valign="top">
            </td>
        </tr>
    </table>
</asp:Content>

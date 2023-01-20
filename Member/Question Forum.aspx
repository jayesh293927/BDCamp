<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Question Forum.aspx.cs" Inherits="Member_Default" Title="Untitled Page" Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><table>
    <tr>
        <td colspan="3" style="width: 100px; height: 174px">
            <table>
                <tr>
                    <td colspan="3" style="width: 100px">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/forum.jpg" /></td>
                </tr>
        <tr>
            <td style="width: 100px" align="right">
    <asp:Label ID="Label1" runat="server" Text="Search Question : " Font-Names="Verdana:" Font-Size="14pt" ForeColor="Maroon" Font-Bold="False" Width="132px"></asp:Label></td>
            <td style="width: 43px">
    <asp:TextBox ID="txtFind" runat="server" Height="17px" OnTextChanged="txtFind_TextChanged" Width="328px" Font-Names="Verdana" Font-Size="12pt" ForeColor="Maroon"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BANK IMAGES/Search.jpg" /></td>
        </tr>
    </table>
        </td>
        <td colspan="1" style="width: 100px; height: 174px">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Member/Ask Questions.aspx" Height="41px" ImageUrl="~/BANK IMAGES/jpg images/Question.jpg" ToolTip="Click Here To Ask Question" Width="55px">Ask a Question</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 100px; height: 326px;">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QId" DataSourceID="SqlDataSource1"
        GridLines="None" ForeColor="#333333" Height="157px" Width="615px" Font-Names="Verdana" Font-Size="10pt">
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <Columns>
            <asp:BoundField DataField="QId" HeaderText="QId" InsertVisible="False" ReadOnly="True"
                SortExpression="QId" />
            <asp:BoundField DataField="QText" HeaderText="QText" SortExpression="QText" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="QDate" HeaderText="QDate" SortExpression="QDate" DataFormatString="{0:dd-mm-yy}" />
            <asp:HyperLinkField DataNavigateUrlFields="QId,QText" DataNavigateUrlFormatString="PostReply.aspx?QId={0}&amp;QText={1}"
                HeaderText="Post Reply" Text="Post Reply" />
            <asp:HyperLinkField DataNavigateUrlFields="QId,QText" DataNavigateUrlFormatString="ShowReply.aspx?QId={0}&amp;QText={1}"
                DataTextField="TotalAns" HeaderText="TotAns" />
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
        SelectCommand="select a.QId, a.QText, a.UserId, a.QDate,&#13;&#10;&#13;&#10;(Select Count(*) From Answers&#13;&#10;Where QId = a.QId ) as TotalAns&#13;&#10;&#13;&#10;From Questions a&#13;&#10;Where a.QText Like '%' + @QText + '%'">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="QText" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ShowReply.aspx.cs" Inherits="ShowReply" Title="Untitled Page" Debug="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Show Ans.jpg" />&nbsp;&nbsp;<br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/BANK IMAGES/QUE Mark.jpg" />
    <asp:Label ID="Label1" runat="server" Font-Size="14pt" style="background-color: white" ForeColor="Maroon" Height="13px" Width="508px" Font-Names="Verdana"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AnswerId"
        DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <Columns>
            <asp:BoundField DataField="AnswerId" HeaderText="AnswerId" InsertVisible="False"
                ReadOnly="True" SortExpression="AnswerId" />
            <asp:BoundField DataField="AnswerText" HeaderText="AnswerText" SortExpression="AnswerText" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="AnswerDate" HeaderText="AnswerDate" SortExpression="AnswerDate" />
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
        SelectCommand="SELECT [AnswerId], [AnswerText], [UserId], [AnswerDate] FROM [Answers] WHERE ([QId] = @QId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="QId" QueryStringField="QId" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;
    <asp:Button ID="btnCont" runat="server" OnClick="btnCont_Click" Text="Continue..." />
</asp:Content>


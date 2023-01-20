<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BloodStatus.aspx.cs" Inherits="Member_BloodStatus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3" style="width: 100px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Blood Status.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
    &nbsp;
            </td>
            <td style="width: 100px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
        CellPadding="3" DataSourceID="SqlDataSource1"
        Height="125px" Width="309px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="A_positive" HeaderText="A_positive" SortExpression="A_positive" />
            <asp:BoundField DataField="A_negative" HeaderText="A_negative" SortExpression="A_negative" />
            <asp:BoundField DataField="B_positive" HeaderText="B_positive" SortExpression="B_positive" />
            <asp:BoundField DataField="B_negative" HeaderText="B_negative" SortExpression="B_negative" />
            <asp:BoundField DataField="AB_positive" HeaderText="AB_positive" SortExpression="AB_positive" />
            <asp:BoundField DataField="AB_negative" HeaderText="AB_negative" SortExpression="AB_negative" />
            <asp:BoundField DataField="O_positive" HeaderText="O_positive" SortExpression="O_positive" />
            <asp:BoundField DataField="O_negative" HeaderText="O_negative" SortExpression="O_negative" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
        SelectCommand="SELECT * FROM [blood_unit_status]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/BANK IMAGES/Total Donor Units.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="blood_group" HeaderText="blood_group" SortExpression="blood_group" />
                        <asp:BoundField DataField="units" HeaderText="units" SortExpression="units" />
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <EditRowStyle BackColor="#2461BF" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    SelectCommand="SELECT * FROM [total_donor_units]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/BANK IMAGES/Total Patient Units.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3"
                    ForeColor="Black" GridLines="None">
                    <FooterStyle BackColor="Tan" />
                    <Columns>
                        <asp:BoundField DataField="blood_group" HeaderText="blood_group" SortExpression="blood_group" />
                        <asp:BoundField DataField="units" HeaderText="units" SortExpression="units" />
                    </Columns>
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    SelectCommand="SELECT * FROM [total_blood_demand]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


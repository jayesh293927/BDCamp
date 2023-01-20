<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Total_Camp.aspx.cs" Inherits="Member_Total_Camp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" style="width: 100px; height: 34px">
                <table>
                    <tr>
                        <td colspan="3" style="width: 100px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/All Camps.jpg" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana:" Font-Size="14pt"
                                ForeColor="Maroon" Height="21px" Text="State : " Width="69px"></asp:Label></td>
                        <td style="width: 43px">
                            <asp:TextBox ID="txtFind" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Maroon"
                                Height="17px" OnTextChanged="txtFind_TextChanged" Width="328px"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BANK IMAGES/Search.jpg" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 326px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="c_id" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" Height="330px" Width="689px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="c_id" HeaderText="C_Id" ReadOnly="True" SortExpression="c_id" />
                        <asp:BoundField DataField="campfor" HeaderText="Camp For" SortExpression="campfor" />
                        <asp:BoundField DataField="organization" HeaderText="Organization" SortExpression="organization" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="camp_vanue" HeaderText="Camp_Venue" SortExpression="camp_vanue" />
                        <asp:BoundField DataField="camp_date" HeaderText="Camp_Date" SortExpression="camp_date" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    SelectCommand="SELECT [c_id], [campfor], [organization], [state], [city], [camp_vanue], [camp_date] FROM [add_camp] where state  like '%' + @txtfind + '%'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="txtfind" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 326px">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


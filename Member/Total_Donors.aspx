<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Total_Donors.aspx.cs" Inherits="Member_Donor_View" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 852px">
        <tr>
            <td colspan="2" style="width: 100px; height: 34px">
                <table>
                    <tr>
                        <td colspan="3" style="width: 100px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/All Donors.jpg" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana:" Font-Size="14pt"
                                ForeColor="Maroon" Text="Blood Group : " Width="132px"></asp:Label></td>
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
            <td colspan="2" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 314px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="d_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                    Width="618px" AllowPaging="True" AllowSorting="True">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="d_id" HeaderText="D_Id" InsertVisible="False" ReadOnly="True"
                            SortExpression="d_id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="bloodgroup" HeaderText="Dlood Group" SortExpression="bloodgroup" />
                        <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    SelectCommand="SELECT d_id, name, age, gender, bloodgroup, country, state, city FROM donor_detail WHERE (bloodgroup LIKE '%' + @txtfind + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="txtfind" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 314px">
            </td>
        </tr>
    </table>
</asp:Content>


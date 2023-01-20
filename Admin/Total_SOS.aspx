<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Total_SOS.aspx.cs" Inherits="Admin_Total_SOS" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/SOS Requests.jpg" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <table>
                    <tr>
                        <td colspan="3" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana:" Font-Size="14pt"
                                ForeColor="Maroon" Text="Name : " Width="132px"></asp:Label></td>
                        <td style="width: 43px">
                            <asp:TextBox ID="txtFind" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Maroon"
                                Height="17px" OnTextChanged="txtFind_TextChanged" Width="328px"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BANK IMAGES/Search.jpg" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sos_id" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="sos_id" HeaderText="SOS_Id" InsertVisible="False" ReadOnly="True"
                            SortExpression="sos_id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="ph_resi" HeaderText="Ph_Resi" SortExpression="ph_resi" />
                        <asp:BoundField DataField="ph_office" HeaderText="Ph_Office" SortExpression="ph_office" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="p_name" HeaderText="P_Name" SortExpression="p_name" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="unit" HeaderText="Unit" SortExpression="unit" />
                        <asp:BoundField DataField="blood_group" HeaderText="BloodGroup" SortExpression="blood_group" />
                        <asp:BoundField DataField="require_within" HeaderText="Require_within" SortExpression="require_within" />
                        <asp:BoundField DataField="regdate" HeaderText="Regi_Date" SortExpression="regdate" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    DeleteCommand="DELETE FROM [sos_request] WHERE [sos_id] = @sos_id" SelectCommand="SELECT * FROM [sos_request] where name like '%' + @txtfind + '%'">
                    <DeleteParameters>
                        <asp:Parameter Name="sos_id" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="txtfind" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


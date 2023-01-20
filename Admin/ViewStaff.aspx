<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewStaff.aspx.cs" Inherits="Admin_ViewStaff" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; height: 100px;">
            </td>
            <td style="width: 100px; height: 100px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/BANK IMAGES/Staff Members.jpg" /><br />
                <table>
                    <tr>
                        <td colspan="3" style="width: 100px; height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana:" Font-Size="14pt"
                                ForeColor="Maroon" Text="Designation : " Width="132px"></asp:Label></td>
                        <td style="width: 43px">
                            <asp:TextBox ID="txtFind" runat="server" Font-Names="Verdana" Font-Size="12pt" ForeColor="Maroon"
                                Height="17px" OnTextChanged="txtFind_TextChanged" Width="328px"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BANK IMAGES/Search.jpg" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px; height: 100px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                &nbsp; &nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="staff_id"
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="staff_id" HeaderText="Staff_Id" InsertVisible="False"
                            ReadOnly="True" SortExpression="staff_id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                        <asp:BoundField DataField="Expr1" HeaderText="Department" SortExpression="Expr1" />
                        <asp:BoundField DataField="shift" HeaderText="Shift" SortExpression="shift" />
                        <asp:BoundField DataField="ph_resi" HeaderText="Ph_Resi" SortExpression="ph_resi" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                    DeleteCommand="DELETE FROM staff_detail WHERE (staff_id = @staff_id)" SelectCommand="SELECT s.staff_id, s.name, s.age, s.gender, s.designation, d.name AS Expr1, s.shift, s.ph_resi, s.mobile, s.state, s.city, s.pin, s.address FROM staff_detail AS s INNER JOIN department_detail AS d ON s.dept_id = d.dept_id WHERE (s.designation LIKE '%' + @txtfind + '%')"
                    UpdateCommand="UPDATE staff_detail SET name = @name, age = @age, gender = @gender, designation = @designation, shift = @shift, ph_resi = @ph_resi, mobile = @mobile, state = @state, city = @city, pin = @pin, address = @address WHERE (staff_id = @staff_id)">
                    <DeleteParameters>
                        <asp:Parameter Name="staff_id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="age" />
                        <asp:Parameter Name="gender" />
                        <asp:Parameter Name="designation" />
                        <asp:Parameter Name="shift" />
                        <asp:Parameter Name="ph_resi" />
                        <asp:Parameter Name="mobile" />
                        <asp:Parameter Name="state" />
                        <asp:Parameter Name="city" />
                        <asp:Parameter Name="pin" />
                        <asp:Parameter Name="address" />
                        <asp:Parameter Name="staff_id" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="txtfind" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


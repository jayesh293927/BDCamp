<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Total_Patients.aspx.cs" Inherits="Member_Patient_View" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 852px">
        <tr>
            <td colspan="2" style="width: 100px; height: 34px">
                <table>
                    <tr>
                        <td colspan="3" style="width: 100px">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/BANK IMAGES/All Patients.jpg" /></td>
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
            <td style="width: 100px; height: 326px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="p_id" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" Width="612px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="p_id" HeaderText="P_Id" InsertVisible="False" ReadOnly="True"
                            SortExpression="p_id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="blood_group" HeaderText="Blood_Group" SortExpression="blood_group" />
                        <asp:BoundField DataField="units" HeaderText="Units" SortExpression="units" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
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
                    SelectCommand="SELECT [p_id], [name], [blood_group], [units], [age], [gender], [country], [state], [city] FROM [patient_details] where blood_group like '%' + @txtfind + '%'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFind" DefaultValue="%" Name="txtfind" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 326px">
            </td>
        </tr>
    </table>
</asp:Content>


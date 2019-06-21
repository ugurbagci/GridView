<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_GridView.aspx.cs" Inherits="GridView._1_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                Grid View
            </h2>
            <p>
                GridView kontrolü . Net System.Windows kütüphanesindeki DataGridView kontrolünün web versiyonudur.
            </p>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"  BorderWidth="1px" CellPadding="3" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="false" ReadOnly="true" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                     <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:CommandField ShowInsertButton="true" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedAscendingHeaderStyle BackColor="#F1F1F1" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedAscendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>   
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID]=@EmployeeID" InsertCommand="INSERT INTO [Employees]([FirstName].[LastName]) VALUES (@FirstName, @LastName))"  SelectCommand="SELECT [EmployeeID],[FirstName],[LastName] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName]=@FirstName, [LastName]=@LastName WHERE [EmployeeID]=@EmployeeID">
                    <DeleteParameters>
                        <asp:Parameter Name="EmployeeID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />                       
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="EmployeeID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>  



                </div>
    </form>
</body>
</html>

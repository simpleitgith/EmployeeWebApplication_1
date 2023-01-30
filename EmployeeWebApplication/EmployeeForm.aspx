<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="EmployeeWebApplication.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />


    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-8 col-md-offset-2">
            <table class="table" style="background-color:lightblue">
                <tr>
                     <th>First Name</th>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter the First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtfname"
                        CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                     <th>Last Name</th>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter the Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtlname"
                        CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                     <th>Age</th>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="Enter the Age" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtage"
                        CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                     <th>Salary</th>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSalary" ErrorMessage="Enter the Salary" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtSalary"
                        CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                     <td>
                         <asp:Button runat="server" ID="btnsubmit" Text="Submit"  CssClass="btn btn-success" OnClick="btnsubmit_Click"/></td>
                
                     <td><asp:Button runat="server" ID="btncancle" Text="Cancle"  CssClass="btn btn-danger" OnClick="btncancle_Click"/></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

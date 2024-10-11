<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payslip.aspx.cs" Inherits="SalaryPaySlip.Payslip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size: x-large;
            background-color: #99FFCC;
        }
        .auto-style2 {
            width: 612px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center" style="color:blue" >Salary Pay Slip</h1>
        </div>
        <table cellpadding="5" class="auto-style1">
            <tr>
                <td class="auto-style2">Employee Id</td>
                <td>
                    <asp:TextBox ID="EmpIdbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Name</td>
                <td>
                    <asp:TextBox ID="EmpNamebox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Basic Pay</td>
                <td>
                    <asp:TextBox ID="EmpPaybox" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Submitbtn" runat="server" Text="Submit" BackColor="#3333CC" ForeColor="White" Height="35px" OnClick="Submitbtn_Click" Width="75px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Clearbtn" runat="server" Text="Clear" BackColor="Lime" ForeColor="White" Height="35px" OnClick="Clearbtn_Click" Width="75px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Lblmsg" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

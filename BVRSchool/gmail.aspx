<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gmail.aspx.vb" Inherits="BVRSchool.gmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:Label id="lblMessage" runat="server"></asp:Label>
           Mobile : <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox> <br />
           Email : <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> <br />
           First Name : <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> <br />
           Last Name : <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> <br />
            Google email : <asp:TextBox ID="txtGmail" runat="server" Text="mullamgi@gmail.com"></asp:TextBox> <br />
            CLient ID : <asp:TextBox ID="txtClientID" runat="server" Text="984314527263-ssqg492b56qb7cn51imh7qvimrc56o4q.apps.googleusercontent.com"></asp:TextBox> <br />
            Client Secret: <asp:TextBox ID="txtClientSecret" runat="server" Text="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"></asp:TextBox> <br />
            <asp:Button ID="btnAddContact" runat="server" Text="submit" />


        </div>
    </form>
</body>
</html>

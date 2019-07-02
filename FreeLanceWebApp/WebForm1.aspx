<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FreeLanceWebApp.WebForm1" %>
<%@ Register Src="~/WebUserControl1.ascx" TagName="WebUserControl" TagPrefix="TWebUserControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <style> p.intro { 
    color:white;
  position: absolute; 
  right: 260px; 
  top: 150px; 
  width: 700px; 
  height: 140px; 
  background-color: lightblue; 
  font-size: 24px; 
  text-align: center; 
}

p.sql {
    color:black;
    position:absolute;
    right:400px;
    top:300px;
    width:400px;
    height:31px;
    font-size: 24px;
    text-align:center;
}

p.visible {
    color:black;
    position:absolute;
    right:400px;
    top:350px;
    width:400px;
    height:31px;
    font-size: 24px;
    text-align:center;
}

p.css {
    color:black;
    position:absolute;
    right:400px;
    top:450px;
    width:400px;
    height:31px;
    font-size: 24px;
    text-align:center;
}

p.outro {
    color:white;
    position:absolute;
    right:400px;
    top:540px;
    width:400px;
    height:23%;
    font-size: 24px;
    text-align:center;
    border:dashed 12px black;
}</style>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
</head>
<body>
    <h1>
		  
		Demo Form
			
	</h1>	
    <form id="forml" runat="server">
		<TWebUserControl:WebUserControl ID="Header" runat="server" MinValue="100"/>
	
    
    <div>
        <br />
        <br />
        <%Response.Write(" "); %>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>
        <asp:ListBox ID="ListName" runat="server" BackColor="cyan">
            <asp:ListItem>Steve</asp:ListItem>
            <asp:ListItem>Jen</asp:ListItem>
            <asp:ListItem>Jim</asp:ListItem>
            <asp:ListItem>Nicole</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:RadioButton ID="rdMale" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdFemale" runat="server" Text="Female" />
        <br />
        <br />
        <br />
        <asp:CheckBox ID="chkASP" runat="server" Text="ASP.NET" />
        <br />
        <br />
        <asp:CheckBox ID="chkC" runat="server" Text="C#" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <br />
        <br />
        <asp:Button ID="btnSession" runat="server" OnClick="btnSession_Click" Text="Session Submit" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnSelectAll" runat="server" OnClick="Button1_Click" Text="SELECT ALL FROM DATABASE" Font-Size="large" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="dataGridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        <p class="intro"> Thanks for taking a look at this project! This was made from a blank template that I made up through my own self teachings. This project took a few days to complete, only being able to work on it for a few hours a day. I had a lot of fun doing this project and taught myself a lot of new things
            .Some of the new things I learned was
        </p>
        <p class="sql"> How to connect to a MySQL database </p>
        <p class="visible"> How to change the visibility of certain parts of the page to be hidden when clicking the appropriate button</p>
        <p class="css"> I also went a little more in depth with CSS/HTML</p>
        <p class="outro"> I had a lot of fun doing this little side project, my next project may be in C#/ASP.NET again. I will try to find some new challenges while still re-iterating on some old challenges as well.</p>
        <br />
        <br />
        <br />
        <footer>
            I completed this project on 07/01/2019, 
            <br /> 
            Todays Date is <%= DateTime.Now.ToString(" MM/dd/yyyy") %>
        </footer>
        <br />
        <br />
    </form>
</body>
</html>

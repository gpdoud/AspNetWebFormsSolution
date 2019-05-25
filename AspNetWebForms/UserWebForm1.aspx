<%@ Page Title="Greg's Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserWebForm1.aspx.cs" Inherits="AspNetWebForms.UserWebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>User WebForm 1</h1>
    <div>
        <%
            /* 
             * - the Asp:xxx controls appear as HTML, but allow access on the server using C#
             * - the runat="server" is required
             * - the ID=xxx is the identifier for accessing it via C# code which you can find
             *     in the C# code by referencing this.xxx
             */
        %>
        <Asp:Label runat="server">Op1:</Asp:Label>
        <asp:TextBox runat="server" ID="op1" CssClass="text-center"></asp:TextBox>

        <Asp:Label runat="server">Op2:</Asp:Label>
        <asp:TextBox runat="server" ID="op2" CssClass="text-center"></asp:TextBox>
        
        <asp:Button runat="server" Text="Add" OnClick="Add_Click" CssClass="btn btn-primary" />
        
        <asp:Label runat="server">Answer:</asp:Label>
        <asp:TextBox runat="server" ID="answer" CssClass="text-center"></asp:TextBox>
    </div>
    <% 
        // inside these symbols, you can put C# code including variables
        var favNbr = 2 * 4 * 11; // create variable favNbr and assign it 88
        // then use it in the HTML
    %>
    <div>
        <hr />
        <% // the next statement uses the favNbr. Note the equal sign before the variable %>
        <label>My favorite number is <% =favNbr %></label>
    </div>
</asp:Content>

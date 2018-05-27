<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Movie._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
        Please enter the file URL: (Default - http://www.public.asu.edu/~kbalakum/Movies.xml) </p>
    <p>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="214px" TextMode="MultiLine" Width="760px"></asp:TextBox>
    </p>

</asp:Content>

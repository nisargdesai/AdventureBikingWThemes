<%@ Page Title="Home | Adventure Biking" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment1.Form1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="DataGridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
        <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
        <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksDWConnectionString %>" SelectCommand="SELECT Color, Size, ListPrice, Weight, ModelName FROM DimProduct"></asp:SqlDataSource>
</asp:Content>
